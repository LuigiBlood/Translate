//Macros
arch snes.cpu

//Seek SNES LoROM Address
macro seekAddr(n) {
  origin (({n} & $7F0000) >> 1) | ({n} & $7FFF)
  base {n}
}

//Seek File Offset
macro seekFile(n) {
  origin {n}
  base (({n} & $3FFFFF) | 0xC00000)
}

//Get Bank, High, Low Address
macro DB_BANK(n) {
	db (({n} >> 16) & $FF)
}

macro DB_HI(n) {
	db (({n} >> 8) & $FF)
}

macro DB_LO(n) {
	db ({n} & $FF)
}