//Mario Artist Talent Studio - Japanese to English Translation
//by LuigiBlood

arch n64.cpu
endian msb
origin 0x000000;

//macros
macro seek(n) {
  origin {n} - 0x727D8
}

macro extract(filename, offset, length) {
	origin 0
	output {filename}, create
	insert "NUD-DMTJ-JPN.n64", {offset} - 0x727D8, {length}
}

//Start

//extract("147620.7C9B.yay1", 0x147620, 0x7C9B)			//???
//extract("21B380.14827.yay1", 0x21B380, 0x14827)		//???
extract("914B78.AEEC.Kanji.yay1", 0x914B78, 0xAEEC)		//Writer (Seperate)
extract("8E7E48.CCC7.GBCam.yay1", 0x8E7E48, 0xCCC7)		//Game Boy Camera
extract("8AD9F0.17453.SaveLoad.yay1", 0x8AD9F0, 0x17453)	//Save & Load
extract("AA3520.7267.ShowTime.yay1", 0xAA3520, 0x7267)	//Show Time
//extract("12BF830.1272C.MainMenu.yay1", 0x12BF830, 0x1272C)	//Main Menu
//extract("12D5180.2BDD6.TitleScreen.yay1", 0x12D5180, 0x2BDD6)	//Title Screen