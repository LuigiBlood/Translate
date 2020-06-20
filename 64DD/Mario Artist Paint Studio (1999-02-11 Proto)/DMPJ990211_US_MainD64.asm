//Mario Artist Paint Studio - Japanese to English Translation
//by LuigiBlood

//Thanks to
//- SourceGaming (for some translation help)
//- Zoinkity (GameBoy Camera hack)

arch n64.cpu
endian msb
output "DMPJ990211_EN.d64", create
origin 0x000000;
insert "DMPJ990211.hdr"	//Header
insert "NUD-TEST-JPN.ndd",0x738C0,0x212E308	//ROM
insert "NUD-TEST-JPN.ndd",0x21CA140,0x5420E0	//RAM

include "N64_CPUREGS.asm"

//macros
macro seek(n) {
  origin {n}-0x738C0+0x200
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
  map '\s',$8165 //'
  map '-', $817C
  map '&', $8195
}

macro ASCIIMap() {
  map ' ', $20, $60
}

//Patch
include "DMPJ990211_Patch.asm"

//Translation
include "DMPJ990211_US_2DPaint.asm"
include "DMPJ990211_US_3DMovie.asm"
