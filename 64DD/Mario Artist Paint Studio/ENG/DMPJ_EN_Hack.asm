//Mario Artist Paint Studio - Various Hacks

//Text Hacks

//Remove Page 00F9011E00D7
seek(0x11E62C)
sb 0,3(v0) //dw 0xA0400003
seek(0x2AAE02) //Kanji Pages
dh 0x00


//Big Text: Use ASCII instead (1 byte)
//Function RAM 8000A884 - Disk 0x7DD44 - Text Rendering
//Function RAM 80008988 - Message Display
//if it starts with FFFF then Shift-JIS text, if not then small text

seek(0x7E064)
base 0x8000ABA4
//Convert ASCII to Shift-JIS
sll v0,v0,1
lui s1,0x8005
addiu s1,s1,0x08CC
addu s1,s1,v0
lhu s1,0(s1)
//+1 byte (Shift-JIS)
seek(0x7E19C)
addiu s3,s3,1
//+1 byte (New Line)
seek(0x7DF30)
addiu s3,s3,1
//+0 byte (New Line)
seek(0x7E1C4)
nop

//seek(0x7CFA0)
//addiu s2,s2,1
//seek(0x7CFB0)
//lui t3,0x8005
//sll t4,s1,1
//addu t3,t3,t4
//seek(0x7CFC0)
//lh a0,0x8CC(t3)

//Character Width //RAM 0x800520EC
//XX, YY
//XX = Char width
//YY = Move current char to the left
//List of characters with different width: 0x800508CC
seek(0xC55AC)
db $06, $00 // 。
db $10, $08 // 「
db $08, $00 // 」
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $05, $00 // Space
db $09, $05 // !
db $0E, $08 // "
db $0D, $00 // #
db $0C, $02 // $
db $0D, $01 // %
db $0C, $01 // &
db $0C, $0A // '
db $0E, $09 // (
db $06, $00 // )
db $0C, $02 // *
db $0D, $02 // +
db $04, $00 // ,
db $0D, $02 // -
db $05, $00 // .
db $0E, $00 // /
db $0C, $02 // 0
db $0B, $03 // 1
db $0C, $02 // 2
db $0C, $03 // 3
db $0C, $02 // 4
db $0C, $02 // 5
db $0C, $02 // 6
db $0C, $03 // 7
db $0C, $02 // 8
db $0C, $02 // 9
db $09, $05 // :
db $09, $05 // ;
db $10, $00
db $0D, $01 // =
db $0B, $03 // ~
db $0B, $03
db $0D, $00 // @
db $0D, $01 // A
db $0C, $02 // B
db $0D, $02 // C
db $0D, $02 // D
db $0C, $02 // E
db $0C, $02 // F
db $0C, $01 // G
db $0D, $01 // H
db $09, $06 // I
db $0A, $02 // J
db $0C, $02 // K
db $0C, $02 // L
db $0D, $01 // M
db $0C, $02 // N
db $0D, $01 // O
db $0C, $03 // P
db $0D, $01 // Q
db $0C, $02 // R
db $0C, $02 // S
db $0B, $02 // T
db $0C, $02 // U
db $0D, $01 // V
db $0E, $00 // W
db $0D, $02 // X
db $0D, $02 // Y
db $0C, $03 // Z
db $10, $00
db $10, $00
db $10, $00
db $0B, $03 // ^
db $10, $00
db $10, $00
db $0C, $03 // a
db $0C, $03 // b
db $0B, $03 // c
db $0B, $02 // d
db $0B, $02 // e
db $0A, $04 // f
db $0C, $02 // g
db $0B, $03 // h
db $09, $05 // i
db $09, $04 // j
db $0B, $03 // k
db $0A, $05 // l
db $0F, $01 // m
db $0C, $03 // n
db $0B, $03 // o
db $0C, $03 // p
db $0B, $02 // q
db $0B, $04 // r
db $0B, $04 // s
db $0B, $04 // t
db $0B, $03 // u
db $0C, $03 // v
db $0D, $01 // w
db $0C, $03 // x
db $0C, $03 // y
db $0C, $03 // z


//Other Hacks

//International Game Boy Camera support (Zoinkity)
//"GAMEBOYCAMERA" ID to detect US/EU Game Boy Camera - Zoinkity Hack //RAM 0x80237994
seek(0x1D047C)
dw 0x10400003, 0x8FA400B0, 0x10000087, 0x24140014, 0x3C058027, 0x8CA6C4F4, 0x10860002, 0x8CA5C4F8, 0x14850004
//beq v0,0,$802379A4
//lw a0,b0(sp)
//b $80237BBC
//addiu s4,0,$14
//lui a1,$8027
//lw a2,-$3b0c(a1) //8026C4F4 "POCK" -> "BOYC"
//beq a0,a1,$802379B8
//lw a1,-$3b08(a1) //8026C4F8 "ETCA"
//bne a0,a1,$802379C8
seek(0x2EF55F)
db 0x0C

//"BOYC"
seek(0x204FDC)
db 0x42, 0x4F, 0x59, 0x43

//"GAMEBOYCAMERA   "
seek(0x30D520)
db 0x47, 0x41, 0x4D, 0x45, 0x42, 0x4F, 0x59, 0x43, 0x41, 0x4D, 0x45, 0x52, 0x41, 0x00, 0x00, 0x00