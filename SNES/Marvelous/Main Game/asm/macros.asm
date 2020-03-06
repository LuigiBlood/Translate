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

macro ptr_replace(id, n) {
	seekFile($0011E3 + {id})
	DB_BANK({n})
	seekFile($0012DC + {id})
	DB_HI({n})
	seekFile($0013D5 + {id})
	DB_LO({n})
}

macro bound_check(n) {
	if origin() > {n} {
		error "ERROR, OVERWRITING ANOTHER FILE"
	}
}