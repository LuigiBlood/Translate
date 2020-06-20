//3D Movie Mode

putText2(0x1CAA48, "Save")
putText2(0x1CAAF0, "Take Photo")
putText2(0x1CAB98, "Return")

putText2(0x1CB378, "Go to Main Menu")

putText2(0x1CBDF8, "Jurassic World")
putText2(0x1CBEA0, "Planet Mars")
putText2(0x1CBF48, "Sea World")
putText2(0x1CBFF0, "Explore")
putText2(0x1CC098, "Take Photo")
putText2(0x1CC140, "Paint")
putText2(0x1CC1E8, "Music")
putText2(0x1CC290, "Watch")
putText2(0x1CC338, "Save/Load")
putText2(0x1CC3E0, "Next Page")
putText2(0x1CC488, "Next Page")
putText2(0x1CC530, "Next Page")
putText2(0x1CC5D8, "Change Texture")
putText2(0x1CC680, "Exit")
putText2(0x1CC728, "Reset")
putText2(0x1CC7D0, "Exit")
putText2(0x1CC878, "Music 1")
putText2(0x1CC920, "Music 2")
putText2(0x1CC9C8, "Music 3")
putText2(0x1CCA70, "Music 4")
putText2(0x1CCB18, "Stereo")
putText2(0x1CCBC0, "Mono")
putText2(0x1CCC68, "Headphones")

//Hack
seek(0x183F06)
	dh $003A	//Take Photo
seek(0x183F16)
	dh $0029	//Return & Save (Buggy)