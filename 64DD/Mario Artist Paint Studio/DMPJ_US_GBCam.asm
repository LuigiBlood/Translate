//Game Boy Camera Text 0x30A080
seek(0x30A080)
base 0x8029F0D0
gbcam_exit:
putTextnoSeek("Exit")
gbcam_back:
putTextnoSeek("Back")
gbcam_bright:
putTextnoSeek("Bright Colors")
gbcam_dark:
putTextnoSeek("Dark Colors")
seek(0x30A1B0)
gbcam_lever:
putTextnoSeek("Smooth")

//Game Boy Camera Text ASM Hack
seek(0x2FDFC2)
dh (gbcam_exit)
seek(0x2FE01A)
dh (gbcam_exit)
seek(0x2FE072)
dh (gbcam_exit)
seek(0x2FE0CA)
dh (gbcam_exit)
seek(0x2FE126)
dh (gbcam_exit)

seek(0x2FE16E)
dh (gbcam_back)
seek(0x2FE1B6)
dh (gbcam_bright)
seek(0x2FE1FE)
dh (gbcam_dark)
seek(0x2FE27A)
dh (gbcam_lever)
seek(0x2FE2D6)
dh (gbcam_lever)

//Game Boy Camera Text 0x32C870
seek(0x32C870)
base 0x802C18C0
gbcam_select1:
putTextnoSeek("Select an option")
gbcam_select2:
putTextnoSeek("Please choose a photo.")
seek(0x32C8C0)
dw (gbcam_select1)
seek(0x32C8D0)
dw (gbcam_select2)

seek(0x32C8E0)
base 0x802C1930
gbcam2_donoteject:
putTextnoSeek("Do not eject the disk.") //RAM 0x802C1940
gbcam2_prepsave:
putTextnoSeek("Prepared Save") //RAM 0x802C1960
gbcam2_unreadfiles:
putTextnoSeek("Unreadable Files") //RAM 0x802C1980
gbcam2_shootsetup:
putTextnoSeek("A: Shoot / B: Setup") //RAM 0x802C19AC
gbcam2_movieshot:
putTextnoSeek("Shooting Film") //RAM 0x802C19D4
gbcam2_continue:
putTextnoSeek("B: Continue shooting") //RAM 0x802C19E8
gbcam2_readback:
putTextnoSeek("A: Read / B: Back") //RAM 0x802C1A0C
gbcam2_read:
putTextnoSeek("Reading") //RAM 0x802C1A34

//pointers
seek(0x32C9F8)
dw (gbcam2_donoteject), (gbcam2_prepsave)
dw (gbcam2_unreadfiles), (gbcam2_shootsetup), (gbcam2_movieshot), (gbcam2_continue)
dw (gbcam2_readback), (gbcam2_read)

seek(0x32CA20)
base 0x802C1A70
gbcam3_containerfull:
putTextnoSeek("Container is full.") //RAM 0x802C1A70
gbcam3_diskactionsuspended:
putText4noSeek("Disk is ejected.", $00FF, "Access suspended.") //RAM 0x802C1A8C
gbcam3_cantwritecontainer:
putTextnoSeek("Cannot write in this container.") //RAM 0x802C1AC8
gbcam3_cantwritefile:
putTextnoSeek("Cannot write file.") //RAM 0x802C1AEC
gbcam3_enterdisk:
putTextnoSeek("Disk is full.") //RAM 0x802C1B10
gbcam3_filecantdelete:
putTextnoSeek("Cannot delete file.") //RAM 0x802C1B2C
gbcam3_containercantdelete:
putTextnoSeek("Cannot delete container.") //RAM 0x802C1B54
gbcam3_filecantmove:
putTextnoSeek("Cannot move file.") //RAM 0x802C1B7C
gbcam3_namealreadyexists:
putTextnoSeek("Name already exists.") //RAM 0x802C1BA0
gbcam3_cantmakecontainer:
putTextnoSeek("Cannot create container.") //RAM 0x802C1BC0
gbcam3_diskerror:
putTextnoSeek("Disk Error") //RAM 0x802C1BE8
gbcam3_reread:
putText4noSeek("Reread because the disk", $00FF, "has been replaced.") //RAM 0x802C1C00
gbcam3_namenotchanged:
putTextnoSeek("Name was not changed.") //RAM 0x802C1C30
gbcam3_filenamenotchanged:
putTextnoSeek("Cannot change filename.") //RAM 0x802C1C54
gbcam3_containernamenotchanged:
putTextnoSeek("Cannot change container name.") //RAM 0x802C1C84
gbcam3_filecantdeletewrite:
putTextnoSeek("Cannot write/delete file.") //RAM 0x802C1CB4
gbcam3_diskcantdeletewrite:
putTextnoSeek("Cannot write/delete on this disk.") //RAM 0x802C1CE4
gbcam3_cannotmovesamecontainer:
putTextnoSeek("Cannot move in the same container.") //RAM 0x802C1D14
gbcam3_disknotinserted:
putText4noSeek("Disk is ejected.", $00FF, "Insert disk.") //RAM 0x802C1D3C
gbcam3_cantusedisk:
putText4noSeek("Disk cannot be used here.", $00FF, "Insert correct disk.") //RAM 0x802C1D78
gbcam3_insertdisk:
dh 0x00FF //RAM 0x802C1DD0
gbcam3_insertdisk2:
putTextnoSeek("Insert disk.") //RAM 0x802C1DD4
gbcam3_cantusename:
putTextnoSeek("Cannot use name.") //RAM 0x802C1DF0
gbcam3_destroydata:
putTextnoSeek("The disk's data has been destroyed.") //RAM 0x802C1E0C
gbcam3_wrongdisk:
putTextnoSeek("Wrong disk.") //RAM 0x802C1E3C
gbcam3_correctdisk:
putTextnoSeek("Insert correct disk.") //RAM 0x802C1E64
gbcam3_nocontainer:
putTextnoSeek("No container.") //RAM 0x802C1E8C
gbcam3_no2container:
putTextnoSeek("No 2 or more containers.") //RAM 0x802C1EA4
gbcam3_cantmovecontent:
putText4noSeek("Cannot move files", ".", $00FF) //RAM 0x802C1ECC
gbcam3_container70files:
putText4noSeek("A single container can only", $00FF, "contain up to 70 files.") //RAM 0x802C1EFC
gbcam3_nofile:
putTextnoSeek("Container is empty.") //RAM 0x802C1F34
gbcam3_cantremovecontent:
putTextnoSeek("Cannot delete files.") //RAM 0x802C1F5C
gbcam3_fileloadfail:
putTextnoSeek("Cannot load file.") //RAM 0x802C1F84
gbcam3_toolarge:
putTextnoSeek("(Too large)") //RAM 0x802C1FA8
gbcam3_differenttype:
putTextnoSeek("(Different type)") //RAM 0x802C1FC8
gbcam3_filetypewrite:
putText4noSeek("Cannot write file.", $00FF, "(Different type)") //RAM 0x802C1FE8
gbcam3_containercantdeletewrite:
putText4noSeek("Cannot delete/write", $00FF, "in this container.") //RAM 0x802C201C
gbcam3_containercantdeletefiles:
putTextnoSeek("Cannot delete some files.") //RAM 0x802C204C
gbcam3_error49:
putTextnoSeek("Do not eject disk while in access.") //RAM 0x802C208C
gbcam3_error2:
putTextnoSeek("Reinsert disk.") //RAM 0x802C20CC
gbcam3_readonly:
putText4noSeek("Read-only disk.", $00FF, "Cannot be used.") //RAM 0x802C20F4
gbcam3_differentformat:
putTextnoSeek("Disk is different format.") //RAM 0x802C2134
gbcam3_movefull:
//putText4noSeek("Move container destination", $00FF, "is full.") //RAM 0x802C2160
gbcam3_copyfull:
putText4noSeek("Container destination", $00FF, "is full.")
//putText4noSeek("Copy container destination", $00FF, "is full.") //RAM 0x802C2190
gbcam3_nophoto:
putTextnoSeek("No photo found.") //RAM 0x802C21C0
gbcam3_cantinitdisk:
putTextnoSeek("Cannot initialize disk.") //RAM 0x802C21E8
gbcam3_errornumber:
//putTextnoSeek("Error  ") //RAM 0x802C220C UNUSED
gbcam3_readmanual:
putText4noSeek("For more details, please", $00FF, "read the instruction manual.") //RAM 0x802C2220
gbcam3_thisdiskerror:
//putTextnoSeek("This is a disk error.") //RAM 0x802C2258 UNUSED

gbcam3_transpaknotinserted:
gbcam3_otherpakinserted:
gbcam3_transpakproper:
putTextnoSeek("Transfer Pak is not inserted.") //RAM 0x802C2270
gbcam3_gbcameranotinserted:
gbcam3_gbcameranotinserted2:
gbcam3_gbotherinserted:
putTextnoSeek("GameBoy Camera is not inserted.") //RAM 0x802C2294
//gbcam3_gbotherinserted:
//putTextnoSeek("A cartridge other than the GameBoy Camera has been inserted.") //RAM 0x802C22CC
//gbcam3_otherpakinserted:
//putTextnoSeek("Something other than the Transfer Pak is inserted. Please replace with the Transfer Pak.") //RAM 0x802C2318
//gbcam3_transpakproper:
//putTextnoSeek("Transfer Pak is not properly inserted.") //RAM 0x802C237C
//gbcam3_gbcameranotinserted2:
//putTextnoSeek("GB Camera cartridge is not inserted.") //RAM 0x802C23EC

//pointers
seek(0x32D3C8)
dw (gbcam3_containerfull),(gbcam3_container70files)
dw 0,(gbcam3_diskactionsuspended),0,(gbcam3_cantwritecontainer)
dw 0,(gbcam3_cantwritefile),0,(gbcam3_enterdisk)
dw 0,(gbcam3_filecantdelete),0,(gbcam3_containercantdelete)
dw 0,(gbcam3_containercantdelete),0,(gbcam3_namealreadyexists)
dw 0,(gbcam3_cantmakecontainer),0,(gbcam3_diskerror)
dw 0,(gbcam3_reread),0,(gbcam3_namenotchanged)
dw 0,(gbcam3_filenamenotchanged),0,(gbcam3_containernamenotchanged)
dw 0,(gbcam3_filecantdeletewrite),0,(gbcam3_diskcantdeletewrite)
dw 0,(gbcam3_cannotmovesamecontainer),0,(gbcam3_disknotinserted)
dw 0,(gbcam3_cantusedisk),0,(gbcam3_insertdisk2)
dw 0,(gbcam3_cantusename),0,(gbcam3_destroydata)
dw (gbcam3_correctdisk),0,(gbcam3_wrongdisk),(gbcam3_correctdisk)
dw 0,(gbcam3_nocontainer),0,(gbcam3_no2container)
dw 0,(gbcam3_cantmovecontent),(gbcam3_container70files),0
dw (gbcam3_nofile),0,(gbcam3_cantremovecontent),0
dw (gbcam3_fileloadfail),(gbcam3_differenttype),0,(gbcam3_filetypewrite)
dw 0,(gbcam3_containercantdeletewrite),0,(gbcam3_containercantdeletefiles)
dw 0,(gbcam3_error49),(gbcam3_readmanual),(gbcam3_insertdisk)
dw 0,(gbcam3_error2),0,(gbcam3_readonly)
dw (gbcam3_correctdisk),0,(gbcam3_differentformat),(gbcam3_correctdisk)
dw 0,(gbcam3_transpaknotinserted),0,(gbcam3_gbcameranotinserted)
dw 0,(gbcam3_gbotherinserted),0,(gbcam3_otherpakinserted)
dw 0,(gbcam3_transpakproper),0,(gbcam3_gbcameranotinserted2)
dw 0,(gbcam3_movefull),(gbcam3_container70files),0
dw (gbcam3_copyfull),(gbcam3_container70files),0,(gbcam3_fileloadfail)
dw (gbcam3_toolarge),0,(gbcam3_nophoto),0
dw (gbcam3_cantinitdisk),0,0,0

//Menu
seek(0x32D650)
base 0x802C26A0
camera_saved:
putTextnoSeek("Saved Photos") //RAM 0x802C26A0
camera_take:
putTextnoSeek("   Take Photo") //RAM 0x802C26B4

//putTextnoSeek("Fixed Brightness") //RAM 0x802C26C8 UNUSED
//putTextnoSeek("Smooth") //RAM 0x802C26D8 UNUSED
//putTextnoSeek("Shoot") //RAM 0x802C26E8 UNUSED
//putTextnoSeek("Back") //RAM 0x802C26F4 UNUSED
//putTextnoSeek("Reset") //RAM 0x802C26FC UNUSED
//putTextnoSeek("Negative") //RAM 0x802C2708 UNUSED
//putTextnoSeek("Beta") //RAM 0x802C2710 UNUSED
//putTextnoSeek("Color") //RAM 0x802C2718 UNUSED
//putTextnoSeek("Mosaic") //RAM 0x802C2720 UNUSED
//putTextnoSeek("Bright") //RAM 0x802C272C UNUSED
//putTextnoSeek("Contrast") //RAM 0x802C2738 UNUSED
//putTextnoSeek("Color Reset") //RAM 0x802C2748 UNUSED
//putTextnoSeek("Photo Size:") //RAM 0x802C2758 UNUSED
//putTextnoSeek("Read") //RAM 0x802C276C UNUSED
//putTextnoSeek("OK") //RAM 0x802C2778 UNUSED
//putTextnoSeek("Color Change") //RAM 0x802C2780 UNUSED
//putTextnoSeek("Gradation") //RAM 0x802C278C UNUSED
//putTextnoSeek("Put Photo on Page") //RAM 0x802C279C UNUSED

seek(0x30283A)
dh (camera_saved)
seek(0x302852)
dh (camera_take)
seek(0x302852)
dh (camera_take)
