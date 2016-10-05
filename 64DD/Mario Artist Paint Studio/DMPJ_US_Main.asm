//Mario Artist Paint Studio - Japanese to English Translation
//by LuigiBlood

//Thanks to
//- SourceGaming (for some translation help)
//- Zoinkity (GameBoy Camera hack)

arch n64.cpu
endian msb
output "Mario Artist - Paint Studio.ndd", create
origin 0x000000; insert "NUD-DMPJ-JPN.ndd" // Include Japanese Mario Artist - Paint Studio N64 DD ROM

include "N64_CPUREGS.asm"

//macros
macro seek(n) {
  origin {n}
}

macro putText(n, text) {
  seek({n})
  putTextnoSeek({text})
}

macro putTextnoSeek(text) {
  RegularMap()
  dh {text}
  dh 0x0000
}

macro putText2(n, text) {
  seek({n})
  putText2noSeek({text})
}

macro putText2noSeek(text) {
  RegularMap()
  dh 0x5000
  dh {text}
  dh 0x0000
}

macro putText3(n, text, text2) {
  RegularMap()
  seek({n})
  dh {text}
  dh {text2}
  dh 0x0000
}

macro putText4noSeek(pre, text, post) {
  RegularMap()
  dh {pre}
  dh {text}
  dh {post}
  dh 0x0000
}

macro putTextSJIS(n, text) {
  seek({n})
  putTextSJISnoSeek({text})
}

macro putTextSJISnoSeek(text) {
  ShiftJISMap()
  dh 0x5400, 0xFFFF
  dh {text}
  dh 0x0000
}

macro putTextSJIS2(n, text, text2) {
  seek({n})
  ShiftJISMap()
  dh 0x5400, 0xFFFF
  dh {text}
  db 0x0A
  dh {text2}
  dh 0x0000
}

macro putTextSJIS3(n, text, text2, text3) {
  seek({n})
  putTextSJIS3noSeek({text}, {text2}, {text3})
}

macro putTextSJIS3noSeek(text, text2, text3) {
  ShiftJISMap()
  dh 0x5400, 0xFFFF
  dh {text}
  db 0x0A
  dh {text2}
  db 0x0A
  dh {text3}
  dh 0x0000
}

macro putTextSJIS4(n, text, text2, text3, text4) {
  seek({n})
  putTextSJIS4noSeek({text}, {text2}, {text3}, {text4})
}

macro putTextSJIS4noSeek(text, text2, text3, text4) {
  ShiftJISMap()
  dh 0x5400, 0xFFFF
  dh {text}
  db 0x0A
  dh {text2}
  db 0x0A
  dh {text3}
  db 0x0A
  dh {text4}
  dh 0x0000
}

macro putTextSJIS5(n, text, text2, text3, text4, text5) {
  seek({n})
  putTextSJIS5noSeek({text}, {text2}, {text3}, {text4}, {text5})
}

macro putTextSJIS5noSeek(text, text2, text3, text4, text5) {
  ShiftJISMap()
  dh 0x5400, 0xFFFF
  dh {text}
  db 0x0A
  dh {text2}
  db 0x0A
  dh {text3}
  db 0x0A
  dh {text4}
  db 0x0A
  dh {text5}
  dh 0x0000
}

macro putTextSJIS7noSeek(text, text2, text3, text4, text5, text6, text7) {
  ShiftJISMap()
  dh 0x5400, 0xFFFF
  dh {text}
  db 0x0A
  dh {text2}
  db 0x0A
  dh {text3}
  db 0x0A
  dh {text4}
  db 0x0A
  dh {text5}
  db 0x0A
  dh {text6}
  db 0x0A
  dh {text7}
  dh 0x0000
}

macro putTextASCIIBox(n, text, symbol, text2) {
  ASCIIMap()
  seek({n})
  db {text}
  dh {symbol}
  db {text2}
  dh 0x0000
}

// Character Table
macro RegularMap() {
  map '!', $0001, 32 // Map Special Characters & Numbers
  map 'A', $0021, 31 // Map English "Upper Case" Characters & Special Characters
  map 'a', $0041, 30 // Map English "Lower Case" Characters & Special Characters
  map ' ', $00BD     // Map Space Character
}

macro ShiftJISMap() {
  map '0', $824F, 10
  map 'A', $8260, 26
  map 'a', $8281, 26
  
  map ' ', $8140
  map $2C, $8143 //,
  map '.', $8144
  map ':', $8146, 2
  map '?', $8148
  map '!', $8149
  map '-', $817C
  map '\s',$818C //'
  map '&', $8195
}

macro ASCIIMap() {
  map ' ', $20, $60
}

//Translation
include "DMPJ_US_2DPaint.asm"
include "DMPJ_US_3DWorld.asm"
include "DMPJ_US_SaveLoad.asm"
include "DMPJ_US_GBCam.asm"

//GameBoy Camera International Hack
include "DMPJ_US_GBCamHack.asm"

//Remove Page 00F9011E00D7
seek(0x11E62C)
sb 0,3(v0) //dw 0xA0400003
seek(0x2AAE02) //Kanji Pages
dh 0x00

//Gallery is empty (Shift-JIS) 0x1856C0
putTextSJIS2(0x1856C0, "There is no","paintings.")

//Default Box Names (Shift-JIS) 0x186128
putTextASCIIBox(0x186128, "Mario", 0x86A6, "Gallery")
putTextASCIIBox(0x18613C, "Luigi", 0x81A1, "Gallery")
putTextASCIIBox(0x186154, "Wario", 0x819C, "Gallery")
putTextASCIIBox(0x186168, "Peach", 0x86A5, "Gallery")
putTextASCIIBox(0x18617C, "Bowser", 0x86A3, "Gallery")

putTextASCIIBox(0x186190, "Link", 0x86A4, "Box")
putTextASCIIBox(0x1861A4, "Samus", 0x81A5, "Box")
putTextASCIIBox(0x1861B8, "Yoshi", 0x81F4, "Box")
putTextASCIIBox(0x1861CC, "Donkey", 0x81A3, "Box")
putTextASCIIBox(0x1861E0, "Kirby", 0x819A, "Box")

//Main Menu
seek(0x18A168)
base 0x8015BBC0
//2D Paint description (Shift-JIS) 0x18A178 //RAM 0x8015BBD0
desc_2dpaint1:
putTextSJISnoSeek("4 artists")
// 0x18A18C //RAM 0x8015BBE4
desc_2dpaint2:
putTextSJISnoSeek("can draw")
// 0x18A19C //RAM 0x8015BBF4
desc_2dpaint3:
putTextSJISnoSeek("together!")
//2D Movie description (Shift-JIS) 0x18A1B0 //RAM 0x8015BC08
desc_2dmovie1:
putTextSJISnoSeek("Animate")
// 0x18A1C4 //RAM 0x8015BC1C
desc_2dmovie2:
putTextSJISnoSeek("your")
// 0x18A1DC //RAM 0x8015BC34
desc_2dmovie3:
putTextSJISnoSeek("drawings!")
//3D World description (Shift-JIS) 0x18A1F0 //RAM 0x8015BC48
desc_3dworld1:
putTextSJISnoSeek("Explore")
// 0x18A208 //RAM 0x8015BC60
desc_3dworld2:
putTextSJISnoSeek("worlds")
// 0x18A220 //RAM 0x8015BC78
desc_3dworld3:
putTextSJISnoSeek("& take photos!")
//Gallery  description (Shift-JIS) 0x18A238 //RAM 0x8015BC90
desc_gallery1:
putTextSJISnoSeek("Let's look")
// 0x18A24C //RAM 0x8015BCA4
desc_gallery2:
putTextSJISnoSeek("at all your")
// 0x18A264 //RAM 0x8015BCBC
desc_gallery3:
putTextSJISnoSeek("drawings!")

//Change pointers
seek(0x11DE96)
dh (desc_2dpaint1)
seek(0x11DEDA)
dh (desc_2dpaint2)
seek(0x11DF1E)
dh (desc_2dpaint3)

seek(0x11DF72)
dh (desc_2dmovie1)
seek(0x11DFB6)
dh (desc_2dmovie2)
seek(0x11DFFA)
dh (desc_2dmovie3)

seek(0x11E04E)
dh (desc_3dworld1)
seek(0x11E092)
dh (desc_3dworld2)
seek(0x11E0D6)
dh (desc_3dworld3)

seek(0x11E12A)
dh (desc_gallery1)
seek(0x11E16E)
dh (desc_gallery2)
seek(0x11E1B2)
dh (desc_gallery3)

//Printer Text at 0x239B50 UNUSED?
//64GB GameBoy Printer Text at 0x261240 UNUSED?

//Container (Shift-JIS) 0x2A7FE0 UNUSED?
//Work (Shift-JIS) 0x2A7FEC UNUSED?
//Container (Shift-JIS) 0x2AA920 UNUSED?
