outputGame()

//Other

//Transfer Pak errors
//TPak not inserted
putTextASCII(0x126B60, "On Controller 1,|please insert|Transfer Pak and|GameBoy Camera.") //801B32A0
//Nothing inserted to the TPak
putTextASCII(0x126BA0, "On Controller 1,|please insert|GameBoy Camera|to the Transfer Pak.") //801B32E0
//Cart other than GBCamera inserted to the TPak
putTextASCII(0x126BE0, "On Controller 1,|please insert|GameBoy Camera|to the Transfer Pak.") //801B3320
//Something else than the TPak is inserted
putTextASCII(0x126C58, "On Controller 1,|please insert|Transfer Pak and|GameBoy Camera.") //801B3398
//Connector abnormal
putTextASCII(0x126CC8, "Connection is|abnormal.|Turn off the system|and read the|Transfer Pak|manual.") //801B3408
//Please turn off
putTextASCII(0x126D38, "Turn off the system|and read the|Transfer Pak manual.") //801B3478

//Change Controller number offset
seek(0xAB102)
dh $0031
seek(0xAB106)
dh $000E

//Change pointer
seek(0xAB0CE)
dh $3320

//Capture Cartridge errors
putTextASCII(0x10CE58, "Turn off the system|and insert the|Capture Pak.") //80199598
putTextASCII(0x10CE94, "Plug the video cable.") //801995D4

//Disk Errors
putTextASCII(0x1267DC, "Loading...")
putTextASCII(0x1267EC, "Saving...")
putTextASCII(0x1267FC, "Disk Error")
putTextASCII(0x12680C, "Please eject the disk.")
putTextASCII(0x12682C, "Please insert the disk.")
putTextASCII(0x12684C, "This may be the wrong disk.")
putTextASCII(0x12686C, "")
putTextASCII(0x126888, "Insert the correct disk.")
putTextASCII(0x1268A4, "When the main unit of")
putTextASCII(0x1268C0, "NINTENDO 64 is powered on")
putTextASCII(0x1268DC, "Talent Studio")
putTextASCII(0x1268F4, "Please read the manual.")
putTextASCII(0x126914, "Note: When ACCESS LED is lit")
putTextASCII(0x126934, "Please do not eject the disk.")
putTextASCII(0x126954, "For details, please read the")
putTextASCII(0x126974, "manual.")
putTextASCII(0x126980, "Please insert disk again.")

//Container Default Names
putTextASCII(0x126A00, "Nintendo Office")
putTextASCII(0x126A14, "Company")
putTextASCII(0x126A20, "Nintendo Pro")
putTextASCII(0x126A30, "Mouse Plan")
putTextASCII(0x126A3C, "Microphone")

putTextASCII(0x126A48, "64DD Theater")
putTextASCII(0x126A58, "VC Music")
putTextASCII(0x126A6C, "Film Studio")
putTextASCII(0x126A7C, "GameBoy TV")
seek(0x126A88)
dh $819A	//Star SJIS
putTextASCIInoSeek(" Watch?")

//Initialize Disk
//Hold L + Down D-Pad + B from startup
putTextASCII(0x12BB080, "Disk Initialization.|All the saved data|will be gone.|Are you sure?")
//Unsure
putTextASCII(0x12BB0E0, "Disk Auto Save|Initialization.|Auto saved data and albums|will be gone.|Are you sure?")
putTextASCII(0x12BB154, "Initialization...|Do not eject the disk.")

//Capture Pak Text
putText(0x0128474, "Reset") //Color Reset

seek(0x10CDB8)
base 0x801994F8
movie_capture_exit:
putTextnoSeek("Exit")
seek(0x10CD6C)
movie_capture_back:
putTextnoSeek("Back")

seek(0x10CDEC)
dw (movie_capture_exit)
seek(0x10CE14)
dw (movie_capture_back)
