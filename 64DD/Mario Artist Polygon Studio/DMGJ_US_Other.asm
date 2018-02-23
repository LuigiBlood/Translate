//Mario Artist Polygon Studio
//Error Messages? RAM 800AC4C0 NDD 0x11F980
seek(0x11F980)
base 0x800AC4C0
error_loading:
putTextASCIInoSeek("Loading...")                       //800AC4C0
error_saving:
putTextASCIInoSeek("Saving...")
error_diskerror:
putTextASCIInoSeek("Disk Error")
error_eject:
putTextASCIInoSeek("Please eject the disk.")
error_insert:
putTextASCIInoSeek("Please insert the disk.")

error_wrongdisk1:
putTextASCIInoSeek("The wrong disk may")
error_wrongdisk2:
putTextASCIInoSeek("have been inserted.")
error_wrongdisk3:
putTextASCIInoSeek("Please insert")
error_wrongdisk4:
putTextASCIInoSeek("the correct disk.")

error_removeddisk1:
putTextASCIInoSeek("When the power switch of the")  //800AC588
error_removeddisk2:
putTextASCIInoSeek("NINTENDO 64 Control Deck is switched on,")  //800AC5A4
error_removeddisk3:
putTextASCIInoSeek("Polygon Studio")  //800AC5C0
error_readmanual:
putTextASCIInoSeek("Please read the instruction manual.")  //800AC5D8

error_note1:
putTextASCIInoSeek("Note: While the ACCESS light is blinking,")  //800AC5F8
error_note2:
putTextASCIInoSeek("please do not eject the disk.")  //800AC618

error_readmanual2:
putTextASCIInoSeek("For more details, please read the manual.")  //800AC638

error_please:
putTextASCIInoSeek(" ")  //800AC658

error_insertagain:
error_removeddisk4:
putTextASCIInoSeek("Please insert the disk again.")  //800AC664

//Change hardcoded pointers
//Loading
seek(0xDF416)
dh error_loading

//Saving
seek(0xDF42A)
//dh error_saving

seek(0xDF43E)
//dh error_diskerror

seek(0xDF452)
//dh error_eject

seek(0xDF466)
//dh error_insert

seek(0xDF47A)
//dh error_wrongdisk1

//Disk Error
seek(0xDFF7E)
dh error_diskerror

//Removed disk
seek(0xE0152)
dh error_removeddisk1
seek(0xE017E)
dh error_removeddisk2
seek(0xE01AA)
dh error_removeddisk3
seek(0xE01D6)
dh error_removeddisk4

//Wrong disk
seek(0xE020A)
dh error_wrongdisk1
seek(0xE0236)
dh error_wrongdisk2
seek(0xE0262)
dh error_wrongdisk3
seek(0xE028E)
dh error_wrongdisk4

//Please read the instruction manual.
seek(0xE02CA)
dh error_readmanual

//Note
seek(0xE0306)
dh error_note1
seek(0xE3332)
dh error_note2

//Please read for more info
seek(0xE035E)
dh error_readmanual2
seek(0xE038A)
dh error_please

//Insert Disk
seek(0xE03B6)
dh error_insert

//Insert Disk again
seek(0xE03F2)
dh error_insertagain
seek(0xE041E)
dh error_please




//Other Messages RAM 802FAD10 - NDD 0x1C9978
seek(0x1C9978)
base 0x802FAD10
//4 lines "Do you want to return to the main menu after the automatic save?" (???)
other_autosavereturn1:
  putTextASCIInoSeek("Do you want to return")
other_autosavereturn2:
  putTextASCIInoSeek("to the main menu")
other_autosavereturn3:
  putTextASCIInoSeek("after the automatic save?")
other_autosavereturn4:
  putTextASCIInoSeek("")

//3 lines "The painting will disappear. Are you sure?"
other_paintgone1:
  putTextASCIInoSeek("The painting will")
other_paintgone2:
  putTextASCIInoSeek("disappear.")
other_paintgone3:
  putTextASCIInoSeek("Are you sure?")

//3 lines "The stamp will disappear. Are you sure?"
other_stampgone1:
  putTextASCIInoSeek("The stamp will")
other_stampgone2:
  putTextASCIInoSeek("disappear.")
other_stampgone3:
  putTextASCIInoSeek("Are you sure?")

//2 lines "Initialization of the automatic save area of the disk."
other_initauto1:
  putTextASCIInoSeek("Initialization of the")
other_initauto2:
  putTextASCIInoSeek("automatic save area.")

//4 lines "Auto-saved work will disappear. Are you sure?" (L+Down+B)
other_photosgone1:
  putTextASCIInoSeek("Auto-saved content")
other_photosgone2:
  putTextASCIInoSeek("will disappear.")
other_photosgone3:
  putTextASCIInoSeek("")
other_photosgone4:
  putTextASCIInoSeek("Are you sure?")

//6 lines "Initialization of the data area of the disk. All the saved data will disappear. Are you sure?" (L+Down+A)
other_initdisk1:
  putTextASCIInoSeek("Initialization of the")
other_initdisk2:
  putTextASCIInoSeek("data area of the disk.")
other_initdisk3:
  putTextASCIInoSeek("All your saved content")
other_initdisk4:
  putTextASCIInoSeek("will disappear.")
other_initdisk5:
  putTextASCIInoSeek("Are you sure?")

//2 lines "Initialization... Do not eject the disk."
other_initprogress1:
  putTextASCIInoSeek("Initialization...")
other_initprogress2:
  putTextASCIInoSeek("Do not eject the disk.")

//3 lines "Your current work will disappear. Are you sure?"
other_currentgone1:
  putTextASCIInoSeek("Your current work")
other_currentgone2:
  putTextASCIInoSeek("will disappear.")
other_currentgone3:
  putTextASCIInoSeek("Are you sure?")

seek(0x1C9708)
dw other_autosavereturn1, other_autosavereturn2, other_autosavereturn3, other_autosavereturn4, 0, 0
dw other_paintgone1, other_paintgone2, other_paintgone3, 0, 0, 0
dw other_stampgone1, other_stampgone2, other_stampgone3, 0, 0, 0
dw other_initauto1, other_initauto2, other_photosgone1, other_photosgone2, other_photosgone3, other_photosgone4
dw other_initdisk1, other_initdisk2, other_initdisk3, other_initdisk4, other_initdisk5, 0
dw other_initprogress1, other_initprogress2, 0, 0, 0, 0
dw other_currentgone1, other_currentgone2, other_currentgone3, 0, 0, 0


//Default Container Names
seek(0xE3EAC)
putTextASCIInoSeeknoEnd("Block Work")
dh 0x81A1
db 0x00

seek(0xE3EC0)
putTextASCIInoSeeknoEnd("3D Work")
dh 0x86A3
db 0x00

seek(0xE3ED0)
putTextASCIInoSeeknoEnd("Stage Work")
dh 0x819C
db 0x00

seek(0xE3EE4)
putTextASCIInoSeeknoEnd("2D Work")
dh 0x86A6
db 0x00

seek(0xE3EF4)
putTextASCIInoSeeknoEnd("Power Machine")
dh 0x86A4
db 0x00

seek(0xE3F08)
putTextASCIInoSeek("Container 1")

seek(0xE3F14)
putTextASCIInoSeek("Container 2")

seek(0xE3F20)
putTextASCIInoSeek("Container 3")

seek(0xE3F2C)
putTextASCIInoSeek("Container 4")

seek(0xE3F38)
putTextASCIInoSeek("Container 5")
