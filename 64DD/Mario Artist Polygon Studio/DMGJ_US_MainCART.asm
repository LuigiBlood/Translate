//Mario Artist Polygon Studio - Japanese to English Translation
//by LuigiBlood

//Thanks to:
//krom for Initial Translation work
//Popcorn for Translation Help
//Lumpio- for Translation Help

arch n64.cpu
endian msb
output "Mario Artist - Polygon Studio.n64", create
origin 0x000000; insert "NUD-DMGJ-JPN.n64" // Include Japanese Mario Artist - Polygon Studio N64 DD ROM

origin 0x10; dw 0x8DC4FF94, 0x938754FC //New checksum

include "N64_CPUREGS.asm"

//macros
macro seek(n) {
  origin {n} - 0x727D8
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

macro putTextByte(n, text) {
  seek({n})
  putTextBytenoSeek({text})
}

macro putTextBytenoSeek(text) {
  RegularMap()
  db {text}
  db 0x00
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

macro putTextASCII(n, text) {
  ASCIIMap()
  seek({n})
  db {text}
  db 0x00
}

macro putTextASCIInoSeek(text) {
  ASCIIMap()
  db {text}
  db 0x00
}

macro putTextASCIInoSeeknoEnd(text) {
  ASCIIMap()
  db {text}
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
  map '\s', $00B7    // Map Circle
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
  map 'á', $01
  map 'â', $02
  map 'ã', $03
  map 'ä', $04
  map 'å', $05
  map 'æ', $06
  map 'ç', $07
  map 'è', $08
  map 'é', $09
  map 'ê', $0A
  map 'ë', $0B
  map 'ì', $0C
  map 'í', $0D
  map 'î', $0E
  map 'ï', $0F
  map 'ï', $10
  map 'ñ', $11
  map 'ò', $12
  map 'ó', $13
  map 'ô', $14
  map 'õ', $15
  map 'ö', $16
  map '÷', $17
  map 'ø', $18
  map 'ù', $19
  map 'ú', $1A
  map 'û', $1B
  map 'ü', $1C
  map 'ÿ', $1F
}

//Translation
include "DMGJ_US_ASM.asm"
include "DMGJ_US_Graphics.asm"
include "DMGJ_US_Editor.asm"
include "DMGJ_US_Options.asm"
include "DMGJ_US_Gallery.asm"
include "DMGJ_US_OpenWorld.asm"
include "DMGJ_US_Other.asm"
include "DMGJ_US_Minigames.asm"
include "DMGJ_US_SaveLoad.asm"
