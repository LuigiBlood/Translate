// 3D World Mode

putText(0x1567BA, "Save") //RAM 0x80128208
putText(0x156863, "Return") //RAM 0x801282B0
putText(0x157050, "Go to Main Menu")
putText(0x157AC3, "Jurassic World")
putText(0x157B66, "Planet Mars")
putText(0x157C12, "Sea World")
putText(0x157CB9, "Explore")
putText(0x157D61, "Paint")
putText(0x157E0E, "Music")
putText(0x157EB5, "Watch")
putText(0x157F5A, "Save/Load")
putText(0x157FFE, "Next Page")
putText(0x1580A6, "Next Page")
putText(0x15814E, "Next Page")
putText(0x1582A8, "Change Texture")
putText(0x158345, "Exit")
putText(0x158400, "Reset")
putText(0x158495, "Exit")
putText(0x158543, "Music 1")
putText(0x1585EB, "Music 2")
putText(0x158694, "Shuffle")
putText(0x158737, "Stereo")
putText(0x1587DD, "Mono")
putText(0x15888B, "Headphones")

//Hack
seek(0x11745E)
dh $0015 //Save
seek(0x11746E)
dh $0021 //Return

putText2(0x15AD64, "When taking a photo...")

//Turtle (Shift-JIS) 0x15ADE8
putTextSJIS(0x15AD94, "Turtle")
//Shark (Shift-JIS) 0x15AE00
putTextSJIS(0x15ADB0, "Shark")
//Manta Ray (Shift-JIS) 0x15AE18
putTextSJIS(0x15ADCC, "Manta Ray")
//Mermaid (Shift-JIS) 0x15AE30
putTextSJIS(0x15ADE8, "Mermaid")
//Octopus (Shift-JIS) 0x15AE48
putTextSJIS(0x15AE04, "Octopus")

//Raptor (Shift-JIS) 0x15AEA8
putTextSJIS(0x15AE74, "Raptor")
//Stegosaurus (Shift-JIS) 0x15AEC0
putTextSJIS(0x15AE90, "Stegosaurus")
//T-Rex (Shift-JIS) 0x15AED8
putTextSJIS(0x15AEAC, "T-Rex")
//Triceratops (Shift-JIS) 0x15AEF0
putTextSJIS(0x15AEC8, "Triceratops")
//Gallimimus (Shift-JIS) 0x15AF08
putTextSJIS(0x15AEE4, "Gallimimus")

//Gaburr (Shift-JIS) 0x15AF68
putTextSJIS(0x15AF54, "Gaburr")
//Filbert (Shift-JIS) 0x15AF80
putTextSJIS(0x15AF70, "Filbert")
//Jack (Shift-JIS) 0x15AF98
putTextSJIS(0x15AF8C, "Jack")
//Colon (Shift-JIS) 0x15AFB0
putTextSJIS(0x15AFA8, "Colon")
//Linda (Shift-JIS) 0x15AFC8
putTextSJIS(0x15AFC4, "Linda")

//ASM Hack 0x18 byte entries to 0x1C byte entries
seek(0x118D32)
dh 0x001C
sll t6,s0,3 //dw 0x001070C0
seek(0x118D4A)
dh 0xC798
sll t6,t6,2 //dw 0x000E7080
seek(0x118D62)
dh 0xFF20
seek(0x118DC6)
dh 0xFF20

//Names 3D World
//Balloonfish (Shift-JIS) 0x179912 Unused
putText(0x179953, "Shark")
putText(0x17998C, "Dolphin")
//Scorpion fish (Shift-JIS) 0x179A04 Unused
putText(0x179A42, "Manta Ray")
putText(0x179AF4, "Octopus")
putText(0x179B33, "Turtle")
putText(0x179B6C, "Mermaid")

putText(0x179BAF, "Brachiosaurus")
putText(0x179BE7, "Gallimimus")
putText2(0x179C54, "Pteranodon")
putText(0x179C97, "Raptor")
putText(0x179CD8, "Stegosaurus")
putText(0x179D14, "Triceratops")
putText(0x179D4A, "T-Rex")

putText(0x17A237, "Linda")
putText(0x17A273, "Laura")
putText(0x17A2AF, "Colon")
putText(0x17A2EA, "Jack")
putText(0x17A327, "Snorky")
putText(0x17A364, "Filbert")
putText(0x17A3A0, "Gaburr")

putText(0x17A5FD, "Fish 1")
//Coloring (Shift-JIS) 0x17A7DF Unused?
putText(0x17A81A, "CAM1")
putText(0x17A856, "CAM1")
putText(0x17A892, "CAM1")

//Space out the number for "Fish ", fixes "Pteranodon"
seek(0x117B86) //800E95DC
dh 0x0018
seek(0x117DB6) //800E980C
dh 0x9138

//"is now available!" (Shift-JIS) 0x189900
seek(0x1898F8)
dh 0x0000
putTextSJIS(0x1898FC, "is now available!") //RAM 0x8015B354

//Change position
seek(0x118E62)
dh $0070

//Save or work will disappear (Shift-JIS) 0x18A2E4 //3D World
putTextSJIS3(0x18A2E4, "Are you sure","you want to exit","without saving?")

//3D World Explore (Text)
seek(0x0018AC48)
base 0x8015C6A0
explore_controller:
putText2noSeek("This mode uses the controller.")
explore_empty:
dh 0x5000, 0x0000
explore_start:
//"Press A or Z to Start!" (Shift-JIS)
putTextSJISnoSeek("Press A or Z to Start!")
explore_zoomin:
putText2noSeek("Zoom In")
explore_zoomout:
putText2noSeek("Zoom Out")
explore_left:
putText2noSeek("Turn Left")
explore_right:
putText2noSeek("Turn Right")
explore_move:
putText2noSeek("Move")
explore_exit:
putText2noSeek("Exit")
explore_run:
putText2noSeek("Run/Swim")
explore_take:
putText2noSeek("Take Photo")
explore_photo:
putText2noSeek("Photo Mode")
explore_circle:
dh 0x5000,0x00B7, 0x0000
explore_camera:
putText2noSeek("Camera")

//3D World Explore ASM Hack
seek(0x0012713A)
dh (explore_controller)
seek(0x00127186)
dh (explore_empty)
seek(0x001271CA)
dh (explore_start)
seek(0x0012720E)
dh (explore_zoomin)
seek(0x00127252)
dh (explore_zoomout)
seek(0x00127296)
dh (explore_left)
seek(0x001272DA)
dh (explore_right)
seek(0x0012731E)
dh (explore_move)
seek(0x00127362)
dh (explore_exit)
seek(0x001273A6)
dh (explore_run)
seek(0x001273EA)
dh (explore_empty)
seek(0x0012742E)
dh (explore_take)
seek(0x00127472)
dh (explore_photo)
seek(0x001274B6)
dh (explore_circle)
seek(0x001274FA)
dh (explore_camera)


