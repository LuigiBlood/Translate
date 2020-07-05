//Mario Artist Paint Studio - Common Macros

//NEW
macro textEntry(size, text) {
  variable skipSeek(origin()+{size})
  RegularMap()
  dh 0x5000
  dh {text}
  dh 0x0000
  origin skipSeek
}

macro textEntry2(size, text, text2) {
  variable skipSeek(origin()+{size})
  RegularMap()
  dh 0x5000
  dh {text}
  dh {text2}
  dh 0x0000
  origin skipSeek
}

macro textEntrySkip(size) {
  variable skipSeek(origin()+{size})
  origin skipSeek
}

macro textEntry0(text) {
  RegularMap()
  dh 0x5000
  dh {text}
  dh 0x0000
}

macro textEntryASCII(size, text) {
  variable skipSeek(origin()+{size})
  ASCIIMap()
  dh 0x5000, 0xFFFF
  db {text}
  db 0,0,0
  origin skipSeek
}

macro textEntryASCII0(text) {
  ASCIIMap()
  dh 0x5000, 0xFFFF
  db {text}
  db 0,0,0
}

macro textEntryH(text) {
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

macro textEntryASCIIBox(n, text, symbol, text2) {
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
  map '\n', $00FF    // Map New Line
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
