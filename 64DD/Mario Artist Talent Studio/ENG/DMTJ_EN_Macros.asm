//Common Macros
//NEW
macro seek(n) {
  origin {n} - seek_diff
}

macro seekFile(n) {
  origin {n}
}

macro check(n) {
  if origin() - seek_diff > {n} {
    error "Too much space taken."
  }
}

macro checkFile(n) {
  if origin() > {n} {
    error "Too much space taken."
  }
}

macro textEntryH(size, text) {
  variable skipSeek(origin()+{size})
  textEntryH0({text})
  origin skipSeek
}

macro textEntryH3(size, text, char) {
  variable skipSeek(origin()+{size})
  textEntryH03({text}, {char})
  origin skipSeek
}

macro textEntryH4(size, text, char, text2) {
  variable skipSeek(origin()+{size})
  textEntryH04({text}, {char}, {text2})
  origin skipSeek
}

macro textEntryH0(text) {
  RegularMap()
  db {text}
  db 0x00
}

macro textEntryH2(char, text) {
  RegularMap()
  db {char}, " "
  db {text}
  db " ", {char}
  db 0x00
}

macro textEntryH03(text, char) {
  RegularMap()
  db {text}
  db {char}
  db 0x00
}

macro textEntryH04(text, char, text2) {
  RegularMap()
  db {text}
  db {char}
  db {text2}
  db 0x00
}

macro textEntryASCII(size, text) {
  variable skipSeek(origin()+{size})
  textEntryASCII0({text})
  origin skipSeek
}

macro textEntryASCII0(text) {
  ASCIIMap()
  db {text}
  db 0
}

macro textEntryASCIIBox(n, text, symbol, text2) {
  ASCIIMap()
  seek({n})
  db {text}
  dh {symbol}
  db {text2}
  dh 0x0000
}

macro skip(size) {
  variable skipSeek(origin()+{size})
  origin skipSeek
}

macro outputFile(filename) {
  output {filename}
  origin 0
  base 0x0A000000
}

//OLD
macro putText(n, text) {
  seek({n})
  putTextnoSeek({text})
}

macro putTextnoSeek(text) {
  putTextnoSeeknoEnd({text})
  db 0x0000
}

macro putTextnoSeeknoEnd(text) {
  RegularMap()
  db {text}
}

macro putText2(n, text) {
  seek({n})
  putText2noSeek({text})
}

macro putText2noSeek(text) {
  RegularMap()
  dh 0x5000
  db {text}
  db 0x0000
}

macro putText3(n, pre, text) {
  seek({n})
  putText3noSeek({pre}, {text})
}

macro putText3noSeek(pre, text) {
  putText3noSeeknoEnd({pre}, {text})
  db 0x0000
}

macro putText3noSeeknoEnd(pre, text) {
  RegularMap()
  db {pre}
  db {text}
}

macro putText4(n, pre, text, post) {
  seek({n})
  putText4noSeek({pre}, {text}, {post})
}

macro putText4noSeek(pre, text, post) {
  RegularMap()
  db {pre}
  db {text}
  db {post}
  db 0x0000
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

macro putTextASCII(n, text) {
  ASCIIMap()
  seek({n})
  db {text}, 0
}

macro putTextASCIInoEnd(n, text) {
  ASCIIMap()
  seek({n})
  db {text}
}

macro putTextASCIInoSeek(text) {
  ASCIIMap()
  db {text}, 0
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
  map '\n', $00FF     // Map New Line Character
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
  map 0, 0, 256
}
