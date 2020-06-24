//Mario Artist Paint Studio - Various Hacks

//Remove Page 00F9011E00D7
seek(0x11E62C)
sb 0,3(v0) //dw 0xA0400003
seek(0x2AAE02) //Kanji Pages
dh 0x00
