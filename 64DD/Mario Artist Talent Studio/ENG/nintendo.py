#!/usr/bin/env python

"""
Utility for handling Nintendo's MIO, Yaz, and Yay compression types.
The number following the compression format denotes the PI domain
    of the source file, which for cartridges is '0' and disk '1'.
    This is only used by disk games and expansions, so the default
    mode for all operations is cartridge ('0').

There is a simple commandline interface.  See help(Nintendo.main) for details.

decode() will read the type from the file,
    returning a decompressed binary for any of the types.

encode() compresses files to Yay0 by default, returning a bytes object.
    This can encode any Yax or MIx type
encode_external() calls yay.exe to encode instead of using pure python.
    Note the external program can only create Yax files, not MIx.

sizeof() returns the actual compressed size of the file,
    before padding is applied.  This can be rather helpful for REs.

Yaz is transformed into 3-table format when read.
Admittantly, Yaz could be interpretted as a stream and doesn't rely on filesize.
However, by doing this conversion allows one decompression routine and the support code.

Yax0r() converts between stream mode (Yaz/MIL) and block mode (Yay/MIO).
    Can't find a Yaz encoder?  Encode as Yay and run through Yax0r.

This targets the N64, so no complaints about a lack of Rarc suppport ;*)
"""
Ya = ("Yaz0","Yay0","Yaz1","Yay1")
MI = ("MIO0","MIL0","MIO1","MIL1")
stream= ("Yaz0", "Yaz1", "MIL0", "MIL1")
block = ("Yay0", "Yay1", "MIO0", "MIO1")
valid = ('MIO0','MIL0','MIO1','MIL1', "Yaz0","Yay0","Yaz1","Yay1")

def _next_bit(ctl):
    for bits in ctl:
        for x in range(8):
            yield (bits & 0x80)
            bits<<= 1
    else:
        yield -1

def _next_cpy(back):
    if isinstance(back, (bytes, bytearray)):
        import struct
        back = struct.unpack_from(">{:d}H".format(len(back)>>1), back)
    yield from back

def _dec(dec_s, ctl, back, vals, mode='Yay'):
    """
    Decompresses archive of type mode using data tables and size.
    Mode is presumed to be Yax,
        although honestly only MIO is tested for.
    If MIO or MIL, copy bytes receive different treatment.
    """
    ## initialize iterators
    b = _next_bit(ctl)
    v = iter(vals)
    c = _next_cpy(back)

    output = bytearray()
    try:
        while len(output)<dec_s:
            if next(b):
                output.append(next(v))
            else:
                off = next(c)
                cnt = (off>>12)&0xF
                off&= 0xFFF
                off+= 1
                if mode in MI:
                    cnt+= 3
                else:
                    if cnt==0:
                        cnt = next(v) + 16
                    cnt+= 2
                for i in range(cnt):
                    output.append(output[len(output)-off])
    except StopIteration as e:
        raise e("\t{:X}: Unexpected end of input.\n".format(len(output)))
    except IndexError as e:
        raise e("\t{:X}: Index {:03X} out of range.\n".format(len(output),len(output)-off))
    return bytes(output)

def _build_file(name, dec_s, ctl, values, back):
    """
    Builds a file of given name (type) using given tables and size.

    Note you don't give the original format name, but the type to be built against.
    Also note no conversion is done, so this will not magically
        transform MIO into Yax or some nonsense.
    """
    ## catch anything we can't write
    if name not in valid:
        raise TypeError("{} not a recognised format.\n".format(mode))

    from struct import Struct
    pat = Struct(">4s3L")
    ## write a header based on type
    buf = name.encode('ascii', errors='ignore')
    if name in stream:
        ## encode values in stream format
        return b''.join((pat.pack(buf, dec_s, 0, 0), _z_from_tables(ctl, back, values, dec_s, name)))
    else:
        ## MIO and Yay need offsets to data tables
        ## ctl is word-aligned
        align = bytes((4 - len(ctl)) & 3)
        om = 16 + len(ctl)
        oc = om + len(back)
        ## write in control codes, copy commands, then values
        return b''.join((pat.pack(buf, dec_s, om, oc), ctl, align, back, values))

def _z_to_tables(data, mode='Yaz0'):
    """
    Decodes stream into tables (Yaz->Yay)
    This is a convenience to recycle code with all three types.

    For the heck of it, threw in a mode to decode MIL,
        the theoretical MIO stream mode.
    """
    ctl, vals, back = bytearray(), bytearray(), bytearray()

    i=0
    bits = 0x10000
    while i < len(data):
        if bits > 0xFFFF:
            ctl.append(data[i])
            bits = data[i]|0x100
            i+=1
            if i>=len(data): break
        if bits & 0x80:
            vals.append(data[i])
            i+=1
        else:
            back.extend(data[i:i+2])
            ## detect the 3-byte long reference
            v = (data[i]>>4)&0xF
            i+=2
            if mode in Ya and v==0:
                if i>=len(data): break
                vals.append(data[i])
                i+=1
        bits<<=1
    return ctl, back, vals

def _z_from_tables(ctl, back, values, dec_s=-1, mode='Yaz0'):
    """
    Reencodes tables in stream format.
    (makes a Yaz datastream from tables)

    If the decompressed size is not given,
        will run until out of control bits.
    The side-effect is upwards of 7 additional erroneous copy commands.

    For the heck of it, also wrote in a mode to spit out MIL files,
        the theoretical stream version of MIO
    """
    ## hack: directly manage the values
    b = iter(ctl)
    v = iter(values)
    c = _next_cpy(back)

    output = bytearray()
    bit = 0x10000
    ## if dec_s declared, will keep accurate track
    while dec_s:
        ## get next bit
        if bit>0xFFFF:
            bit = next(b)
            output.append(bit)
            bit|=0x100
        ## catch end of control commands
        if bit&0x80:
            output.append(next(v))
            dec_s-=1
        else:
            val = next(c)
            output.extend(val.to_bytes(2, byteorder='big'))
            ## decrement dec_s accurately with length
            val>>=12
            val&=0xF
            if mode in MI:
                dec_s-=1
            elif not val:
                val = next(v)
                output.append(val)
                val+=16
            dec_s-= val+2
        bit<<=1
    return output

def _from_header(data):
    """
    Returns the name(type) of archive, its decompressed size,
        the three files needed to parse the compression,
        and the actual compressed size of the file before padding.

    Note Yaz/MIL will be converted to table form from stream.
    """
    from struct import Struct
    pat = Struct(">L")
    name = data[0:4].decode(errors='ignore')
    dec_s = pat.unpack_from(data, 4)[0]
    if name in stream:
        ## stream variant of Yay0; decode to segments
        ctl, back, values = _z_to_tables(data[16:], name)
        cmp_s = 16 + len(ctl) + len(back) + len(values)
    elif name in block:
        seg1 = pat.unpack_from(data, 8)[0]
        seg2 = pat.unpack_from(data, 12)[0]
        ctl = data[16:seg1]
        back= data[seg1:seg2]
##            values=data[seg2:]
        # Compute length of values from ctl + back
        b = _next_bit(ctl)
        c = _next_cpy(back)
        sz, s = 0, 0
        while s < dec_s:
            if next(b):
                sz += 1
                s += 1
            else:
                v = next(c)
                v = (v>>12)&0xF
                if name in MI:
                    v+= 3
                else:
                    if v==0:
                        v = data[seg2+sz] + 16
                        sz += 1
                    v+= 2
                s += v
        cmp_s = seg2+sz
        values=data[seg2:cmp_s]
    else:
        raise TypeError("\"{}\" not a known archive type!\n".format(name))
    return name, dec_s, ctl, back, values, cmp_s

### Creating and destroying this may not be the most effective policy...
##def _inittree(seq):
##    from itertools import repeat
##    l = len(seq)
##    tree = list(repeat(l, 0x100))
##    for c,i in enumerate(seq, 1):
##        tree[i] = l - c
##    return tuple(tree)
##
### Turns out Python's own bytes.find() method beats my nifty tree stuff from C ;*)
##def _seqfind(data, hitl):
##    if len(data) < hitl:
##        return len(data)
##    pos = len(data) - hitl
##    tree = _inittree(data[pos:])
##    lc, ll = hitl - 1, hitl - 1
##    c = data[pos + lc]
##    while True:
##        while data[lc] != c:
##            lc += tree[data[lc]]
##        ll = hitl - 2
##        lc -= 1
##        while ll >= 0:
##            if data[pos + ll] != data[lc]:
##                lc += max(tree[data[lc]], (hitl - ll))
##                break
##            ll -= 1
##            lc -= 1
##        else:
##            return (lc + 1)

def _search(data, pos, sz, cap = 0x111):
    ml = min(cap, sz - pos)
    if ml < 3:
        return 0, 0
    mp = max(0, pos - 0x1000)
    hitp, hitl = 0, 3
    if mp < pos:
##        hl = _seqfind(data[mp:pos+hitl], hitl)
        hl = data[mp:pos+hitl].find(data[pos:pos+hitl])
        while hl < (pos - mp):
            while (hitl < ml) and (data[pos + hitl] == data[mp + hl + hitl]):
                hitl += 1
            mp += hl
            hitp = mp
            if hitl == ml:
                return hitp, hitl
            mp += 1
            hitl += 1
            if mp >= pos:
                break
##            hl = _seqfind(data[mp:pos+hitl], hitl)
            hl = data[mp:pos+hitl].find(data[pos:pos+hitl])
    # If length less than 4, return miss.
    if hitl < 4:
        hitl = 1
    return hitp, hitl-1

def encode(data, mode='Yay0'):
    """Encodes data in given mode, returning a bytes object.
    Acceptable modes are:
        None, "Yaz", "Yay", "Yaz0", "Yay0", "Yaz1", "Yay1"
              "MIO", "MIL", "MIO0", "MIL0", "MIO1", "MIL1"
    If mode is None, will return a tuple of the ctrls, backs, and vals
        as returned by the Yay algo.  (Remnant of debugging.)
    """
    if len(mode) == 3:
        mode += '0'
    if mode and mode not in valid:
        e = "Unable to encode into mode {}.".format(mode)
        raise NotImplementedError(e)

    from array import array
    import sys
    from struct import Struct
    pat = Struct(">4s3L")

    cap = 0x12 if mode in MI else 0x111
    sz = len(data)
    cmds = array("L")
    ctrl = array("H")
    raws = bytearray()
    cmds.append(0)
    pos, flag = 0, 0x80000000
    while pos < sz:
        hitp, hitl = _search(data, pos, sz, cap)
        if hitl < 3:
            # Push a raw if copying isn't possible.
            raws.append(data[pos])
            cmds[-1] |= flag
            pos += 1
        else:
            tstp, tstl = _search(data, pos+1, sz, cap)
            if (hitl + 1) < tstl:
                raws.append(data[pos])
                cmds[-1] |= flag
                pos += 1
                flag >>= 1
                if not flag:
                    flag = 0x80000000
                    cmds.append(0)
                hitl = tstl
                hitp = tstp
            e = pos - hitp - 1
            pos += hitl
            # Handle MIx first, then Yax conditions.
            if cap == 0x12:
                hitl -= 3
                ctrl.append((hitl << 12) | e)
            elif hitl < 0x12:
                hitl -= 2
                ctrl.append((hitl << 12) | e)
            else:
                ctrl.append(e)
                raws.append(hitl - 0x12)
        # Advance the flag and refill if required.
        flag >>= 1
        if not flag:
            flag = 0x80000000
            cmds.append(0)
    # If no cmds in final word, del it.
    if flag == 0x80000000:
        del cmds[-1]
    # These need to be big-endian.
    if sys.byteorder == 'little':
        cmds.byteswap()
        ctrl.byteswap()
    if mode in block:
        l = (len(cmds) << 2) + 16
        o = (len(ctrl) << 1) + l
        return b''.join((pat.pack(mode.encode('ascii'), sz, l, o), cmds.tobytes(), ctrl.tobytes(), raws))
    elif mode in stream:
        # Convert to stream format.
        return b''.join((pat.pack(mode.encode('ascii'), sz, 0, 0), _z_from_tables(cmds.tobytes(), ctrl.tobytes(), raws, sz, mode)))
    else:
        # If no mode specified, return the tables instead.
        return (cmds.tobytes(), ctrl.tobytes(), raws)

def encode_external(data, mode='Yay'):
    """Uses an external program to compress data into given mode.
    Returns a bytes object.
    Be sure "Yay.exe" is in the same directory as this script!
    Acceptable modes are:
        "Yaz", "Yay", "Yaz0", "Yay0", "Yaz1", "Yay1"
    """
    if len(mode) == 3:
        mode += "0"

    if mode in Ya:
    # pretty messy and likely unsafe...
        import subprocess
        import os
        from tempfile import NamedTemporaryFile

        with NamedTemporaryFile(suffix='.bin', delete=False) as f:
            name = f.name
            f.write(data)
        subprocess.call('yay.exe {}'.format(name))
        os.unlink(name)
        with open(name.replace('.bin', '.yay'), 'rb') as f:
            name = f.name
            output = f.read()
        os.unlink(name)
        if mode in stream:
            output = Yax0r(output)
    elif mode in MI:
        raise NotImplementedError
    else:
        raise TypeError("Unable to encode type {}.".format(mode))

def decode(data):
    """
    Decompress Nintendo archive.
    Reads header, generating tables for type,
        retrieves size, then sends data to _dec().
    """
    name, dec_s, ctl, back, vals, cmp_s = _from_header(data)
    if not dec_s or not name:
        return bytearray()
    return _dec(dec_s, ctl, back, vals, name)

def sizeof(data):
    """Returns the actual compressed size of data."""
    return _from_header(data)[5]

def Yax0r(data):
    """
    Switches Yaz<->Yay format.
    Yaz is a stream format of Yay, and when reduced to tables
        is essentially identical.
    This is handy, since it means half the tools are needed ;*)
    """
    name, dec_s, ctl, back, val, cmp_s = _from_header(data)
    if not dec_s or not name:
        return bytearray()
    if name in Ya:
        ## could just name[2]^=3, if you convert it to death
        new = 'Yay'+name[3] if name[2]=='z' else 'Yaz'+name[3]
    elif name in MI:
        new = 'MIO'+name[3] if name[2]=='L' else 'MIL'+name[3]
    else:
        raise TypeError("This tool only works with these files: {}\n".format(valid))
    print("\tConverting from {} to {}...\n".format(name, new))
    return _build_file(new, dec_s, ctl, val, back)

def main():
    """Tools to manipulate Nintendo MIO/Yaz/Yay compressed files.
    Command line options:

    Nintendo.py <filename>
    Nintendo.py <filename> decode
        Decompress <filename> to <filename>.bin

    Nintendo.py <filename> sizeof
        Prints actual compressed size of <filename> before padding.

    Nintendo.py <filename> <mode>
        Compresses <filename> as a <mode> file to <filename>.<ext>
        Mode must be one of the following: (case matters!)
            "Yay0", "Yay1", "Yaz0", "Yaz1",
            "MIO0", "MIL0", "MIO1", "MIL1"
        The <ext> will be the first three chars of the mode name.

    """
    import argparse
    parser = argparse.ArgumentParser(description="Tools to manipulate Nintendo MIO/Yaz/Yay compressed files.")
    parser.add_argument('file', type=argparse.FileType('rb'))
    parser.add_argument('mode', type=str, default='decode')
    cl = parser.parse_args()
    if cl.file is None: return

    f = cl.file.read()
    n = cl.file.name
    cl.file.close()
    m = cl.mode
    if m in (None, 'decode'):
        with open(n+'.bin', 'wb') as d:
            d.write(decode(f))
    elif m == 'sizeof':
        print(_from_header(data)[5])
    elif m in valid:
        with open(''.join((n, '.', m[0:3].lower())), 'wb') as d:
            d.write(encode(f, m))
    else:
        raise ValueError("Unknown command {}.  Refer to help(Nintendo.main) for commands and usage.".format(mode))

if __name__ == '__main__':
    main()