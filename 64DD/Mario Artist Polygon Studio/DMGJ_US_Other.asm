//Mario Artist Polygon Studio
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
