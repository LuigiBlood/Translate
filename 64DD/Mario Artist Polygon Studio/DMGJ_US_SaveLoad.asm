//Mario Artist Polygon Studio
//Save & Load
//RAM 8077DC10 - NDD 0x200F10
seek(0x200F10)
base 0x8077DC10
saveload1_exit:
putTextnoSeek("Exit")
saveload1_save:
putTextnoSeek("Save")
saveload1_load:
putTextnoSeek("Load")
saveload1_rename:
putTextnoSeek("Rename")
saveload1_delete:
putTextnoSeek("Delete")
saveload1_copy:
putTextnoSeek("Move/Copy")
saveload1_create:
putTextnoSeek("Create Container") //???
saveload1_disk:
putTextnoSeek("Change Disk")
saveload1_hiragana:
putTextnoSeek("Hiragana")
saveload1_katakana:
putTextnoSeek("Katakana")
saveload1_letters:
putTextnoSeek("AaBbCc")
saveload1_kanji:
putTextnoSeek("Kanji")
saveload1_all:
putTextnoSeek("All")
saveload1_space:
putTextnoSeek("Space")
saveload1_left:
putTextnoSeek("Left")
saveload1_right:
putTextnoSeek("Right")
saveload1_erase:
putTextnoSeek("Erase")
saveload1_eraseall:
putTextnoSeek("Erase All")
saveload1_undo:
putTextnoSeek("Undo")
saveload1_done:
putTextnoSeek("Done")
saveload1_back:
putTextnoSeek("Back")
saveload1_nextpage:
//putTextnoSeek("Next Page") //Unused?

//Pointers
seek(0x20106C)
dw (saveload1_exit)
seek(0x201080)
dw (saveload1_save)
seek(0x201094)
dw (saveload1_load)
seek(0x2010A8)
dw (saveload1_create)
seek(0x2010BC)
dw (saveload1_rename)
seek(0x2010D0)
dw (saveload1_delete)
seek(0x2010E4)
dw (saveload1_copy)
seek(0x2010F8)
dw (saveload1_disk)

seek(0x201120)
dw (saveload1_back)
seek(0x201148)
dw (saveload1_hiragana)
seek(0x20115C)
dw (saveload1_katakana)
seek(0x201170)
dw (saveload1_letters)
seek(0x201184)
dw (saveload1_kanji)
seek(0x201198)
dw (saveload1_all)
seek(0x2011AC)
dw (saveload1_space)
seek(0x2011C0)
dw (saveload1_left)
seek(0x2011D4)
dw (saveload1_right)
seek(0x2011E8)
dw (saveload1_erase)
seek(0x2011FC)
dw (saveload1_eraseall)
seek(0x201210)
dw (saveload1_undo)
seek(0x201224)
dw (saveload1_done)

putText(0x201428, "New")
seek(0x201490)
base 0x8077E190
putText(0x201490, "Move")

seek(0x201438) //Fix Eraser animation
saveload1_copy2:
putText(0x201438, "Copy")
//Change pointer
seek(0x1F3696)
dh (saveload1_copy2)

//RAM 807C2110 - NDD 0x23A030
seek(0x23A030)
base 0x807C2110
//Rough translations
//putTextnoSeek("Test")
saveload2_leftmenu:
putTextnoSeek("Please select from the left menu.")
saveload2_containersave:
putTextnoSeek("Select a container.")
saveload2_containerfull:
putTextnoSeek("This container is full.")
saveload2_newsave1:
putTextnoSeek("Do you want to save this file as new?")
saveload2_newsave2:
putTextnoSeek("(Select another file if you want to overwrite)")
saveload2_overwrite1:
putTextnoSeek("Do you want to overwrite this file?")
saveload2_overwrite2:
putText4noSeek("Are you sure?", $00FF, "This file will be overwritten.")
saveload2_nosave:
putTextnoSeek("It is not possible to save.")
saveload2_saving:
putTextnoSeek("Saving...")
saveload2_compression:
putTextnoSeek("(Compression takes a moment)")
saveload2_namefile1:
putTextnoSeek("Do you want to name the file?")
saveload2_namefile2:
putTextnoSeek("(The name at the bottom will be used if not)")
saveload2_namesave:
putTextnoSeek("Saving name...")
saveload2_nocontainer:
putTextnoSeek("There is no container.")
//putTextnoSeek("Please select a container.")
saveload2_selectload:
putTextnoSeek("Select a file.")
saveload2_loadfile1:
putTextnoSeek("Do you want to load this file?")
saveload2_loadfile2:
putText4noSeek("(Re-select from the right", $00FF, "if you want a different file)")
saveload2_nofile:
putTextnoSeek("This container is empty.")
saveload2_sureload:
putTextnoSeek("Current work will be lost, are you sure?")
saveload2_loading:
putTextnoSeek("Loading...")
saveload2_whatdelete:
putTextnoSeek("What do you want to delete?")
//saveload2_selectcontainerdelete:
//putTextnoSeek("Select a container that you want to delete.")
saveload2_containerdelete:
putText4noSeek("Do you want to delete", $00FF, "the contents of this container?")
//putTextnoSeek("Please select a container.")
//putTextnoSeek("Select the file to delete.")
saveload2_filedelete:
putTextnoSeek("Do you want to delete this file?")
saveload2_deleting:
putTextnoSeek("Deleting...")
saveload2_whatrename:
putTextnoSeek("What do you want to rename?")
//saveload2_selectcontainerrename:
//putTextnoSeek("Select the container to rename.")
saveload2_containerrename:
putText4noSeek("Do you want to change", $00FF, "the name of this container?")
//putTextnoSeek("Please select a container.")
//putTextnoSeek("Select the file to rename.")
saveload2_filerename:
putTextnoSeek("Do you want to rename this file?") //RAM 0x802FC35C
saveload2_renaming:
putTextnoSeek("Renaming...")
saveload2_moveorcopy:
putTextnoSeek("What do you want to do?")
saveload2_whatmove:
putTextnoSeek("What do you want to move?")
saveload2_selectcontainermove1:
putTextnoSeek("Select the container to move from.")
saveload2_selectcontainermove2:
putTextnoSeek("Select the new container to move to.")
saveload2_containermove:
putTextnoSeek("Do you want to move everything?")
//putTextnoSeek("Please select a container.")
//putTextnoSeek("Select the file to move.")
saveload2_filemove:
putTextnoSeek("Do you want to move this file?")
saveload2_moving:
putTextnoSeek("Moving...")
saveload2_whatcopy:
putTextnoSeek("What do you want to copy?")
saveload2_selectcontainercopy1:
putTextnoSeek("Select the container to copy from.")
saveload2_selectcontainercopy2:
putTextnoSeek("Select the container to copy to.")
saveload2_containercopy:
putTextnoSeek("Do you want to copy everything?")
//putTextnoSeek("Please select a container.")
//putTextnoSeek("Select the file to copy.")
saveload2_filecopy:
putTextnoSeek("Do you want to copy this file?")
saveload2_copying:
putTextnoSeek("Copying...")
//putTextnoSeek("Creating new container...")
//putTextnoSeek("Do you want to put a new name in this container?")
//putTextnoSeek("Do you want to reorder?")
//putTextnoSeek("What do you want to sort?")
//putTextnoSeek("Swapping two containers.")
//putTextnoSeek("Please select the first container.")
//putTextnoSeek("Please select the second container.")
//putTextnoSeek("Do you want to swap both containers?")
//putTextnoSeek("Re-reading file information...")
saveload2_init:
putText4noSeek("Do you really want to initialize", $00FF, "the disk? All the files will be gone.")
//putTextnoSeek("Do you want a new container?")
saveload2_changedisk:
putTextnoSeek("Please change the disk.")
saveload2_ejectdisk:
putTextnoSeek("Please eject the disk.")
saveload2_insertdisk:
putTextnoSeek("Please insert the disk.")
saveload2_accessdisk:
putTextnoSeek("We are accessing a different disk.")
saveload2_mode64dd:
putText4noSeek($00BB, " 64DD ", $00BB)
saveload2_modesave:
putText4noSeek($00B7, " Save ", $00B7)
saveload2_modeload:
putText4noSeek($00B7, " Load ", $00B7)
saveload2_moderename:
putText4noSeek($00B7, " Rename ", $00B7)
saveload2_modedelete:
putText4noSeek($00B7, " Delete ", $00B7)
saveload2_modemovecopy:
putText4noSeek($00B7, " Move/Copy ", $00B7)
saveload2_modediskchange:
putText4noSeek($00B7, " Disk Change ", $00B7)
saveload2_modemove:
putText4noSeek($00B7, " Move ", $00B7)
saveload2_modecopy:
putText4noSeek($00B7, " Copy ", $00B7)
//putText4noSeek($00B7, " Sort ", $00B7)
//putText4noSeek($00B7, " Container Creation ", $00B7)

//Pointers
seek(0x23AC48)
dw (saveload2_leftmenu)
seek(0x23AC54)
dw (saveload2_mode64dd)
seek(0x23AC60)
dw (saveload2_modesave)
seek(0x23AC6C)
dw (saveload2_modeload)
seek(0x23AC78)
dw (saveload2_moderename)
seek(0x23AC84)
dw (saveload2_modedelete)
seek(0x23AC90)
dw (saveload2_modemovecopy)
seek(0x23AC9C)
dw (saveload2_modediskchange)
seek(0x23ACA8)
dw (saveload2_modemove)
seek(0x23ACB4)
dw (saveload2_modecopy)
seek(0x23ACC0)
dw (saveload2_containersave)
seek(0x23ACCC)
dw (saveload2_containerfull)
seek(0x23ACD8)
dw (saveload2_newsave1)
seek(0x23ACE4)
dw (saveload2_newsave1)
seek(0x23ACF0)
dw (saveload2_newsave2)
seek(0x23ACFC)
dw (saveload2_overwrite1)
seek(0x23AD08)
dw (saveload2_overwrite2)
seek(0x23AD14)
dw (saveload2_nosave)
seek(0x23AD20)
dw (saveload2_saving)
seek(0x23AD2C)
dw (saveload2_saving)
seek(0x23AD38)
dw (saveload2_compression)
seek(0x23AD44)
dw (saveload2_namefile1)
seek(0x23AD50)
dw (saveload2_namefile2)
seek(0x23AD5C)
dw (saveload2_namesave)
seek(0x23AD68)
dw (saveload2_nocontainer)
seek(0x23AD74)
dw (saveload2_containersave) //Load
seek(0x23AD80)
dw (saveload2_selectload)
seek(0x23AD8C)
dw (saveload2_loadfile1)
seek(0x23AD98)
dw (saveload2_loadfile2)
seek(0x23ADA4)
dw (saveload2_nofile)
seek(0x23ADB0)
dw (saveload2_sureload)
seek(0x23ADBC)
dw (saveload2_loading)
seek(0x23ADC8)
dw (saveload2_whatdelete)
seek(0x23ADD4)
dw (saveload2_containersave) //Delete
seek(0x23ADE0)
dw (saveload2_containerdelete)
seek(0x23ADEC)
dw (saveload2_containersave) //Delete
seek(0x23ADF8)
dw (saveload2_selectload) //Delete
seek(0x23AE04)
dw (saveload2_filedelete)
seek(0x23AE10)
dw (saveload2_deleting)
seek(0x23AE1C)
dw (saveload2_whatrename)
seek(0x23AE28)
dw (saveload2_containersave) //Rename
seek(0x23AE34)
dw (saveload2_containerrename)
seek(0x23AE40)
dw (saveload2_containersave) //Rename
seek(0x23AE4C)
dw (saveload2_selectload) //Rename
seek(0x23AE58)
dw (saveload2_filerename)
seek(0x23AE64)
dw (saveload2_renaming)
seek(0x23AE70)
dw (saveload2_moveorcopy)
seek(0x23AE7C)
dw (saveload2_whatmove)
seek(0x23AE88)
dw (saveload2_selectcontainermove1)
seek(0x23AE94)
dw (saveload2_selectcontainermove2)
seek(0x23AEA0)
dw (saveload2_containermove)
seek(0x23AEAC)
dw (saveload2_containersave) //Move
seek(0x23AEB8)
dw (saveload2_selectload) //Move
seek(0x23AEC4)
dw (saveload2_filemove)
seek(0x23AED0)
dw (saveload2_moving)
seek(0x23AEDC)
dw (saveload2_whatcopy)
seek(0x23AEE8)
dw (saveload2_selectcontainercopy1)
seek(0x23AEF4)
dw (saveload2_selectcontainercopy2)
seek(0x23AF00)
dw (saveload2_containercopy)
seek(0x23AF0C)
dw (saveload2_containersave) //Copy
seek(0x23AF18)
dw (saveload2_selectload) //Copy
seek(0x23AF24)
dw (saveload2_filecopy)
seek(0x23AF30)
dw (saveload2_copying)
seek(0x23AF3C)
dw (saveload2_init)

//RAM 807C31C0 NDD 0x23B0E0
seek(0x23B0E0)
base 0x807C31C0
saveload3_donoteject:
putTextnoSeek("Do not eject the disk.")
saveload3_prepsave:
putTextnoSeek("Prepared Save")
saveload3_unreadfiles:
putTextnoSeek("Unreadable Files")
seek(0x23B150)
dw (saveload3_donoteject), (saveload3_prepsave), (saveload3_unreadfiles)

//RAM 807C3240 - NDD 0x23B160
seek(0x23B160)
base 0x807C3240
saveload4_usedspace:
putTextnoSeek("Used Space: 0.0MB")
saveload4_currentwork1:
//putTextnoSeek("Current work")
saveload4_currentwork2:
putTextnoSeek("")
saveload4_fromdisk:
putTextnoSeek("From Disk")
saveload4_from64gb:
//putTextnoSeek("From Transfer Pak")
saveload4_readfile:
//putTextnoSeek("Read File")
saveload4_file: //RAM 807C32D0
putTextnoSeek("File")
saveload4_notloaded: //RAM 807C32DC
putTextnoSeek("is not loaded")
saveload4_makingfile:
//putTextnoSeek("Making File")
saveload4_takenphotos:
putTextnoSeek("Current Work")
saveload4_auxpaper:
//putTextnoSeek("Auxiliary Paper")
saveload4_image:
putTextnoSeek("")
//putTextnoSeek("Image")

saveload4_selectcontainer:
putTextnoSeek("Container")
saveload4_selectfile:
putTextnoSeek("   File")
saveload4_selectcontainerall1:
putTextnoSeek("All files of")
saveload4_selectcontainerall2:
putTextnoSeek("  a container")

saveload4_containerfull:
putTextnoSeek("This container is full.")
saveload4_diskactionsuspended:
putText4noSeek("Disk is ejected.", $00FF, "Access suspended.")
saveload4_cantwritecontainer:
putTextnoSeek("Cannot write in this container.")
saveload4_cantwritefile:
putTextnoSeek("Cannot write file.")
saveload4_enterdisk:
putTextnoSeek("The disk is full.")
saveload4_filecantdelete:
putTextnoSeek("Cannot delete file.")
saveload4_containercantdelete:
putTextnoSeek("Cannot delete container.")
saveload4_filecantmove:
putTextnoSeek("Cannot move file.")
saveload4_namealreadyexists:
putTextnoSeek("Name already exists.")
saveload4_cantmakecontainer:
putTextnoSeek("Cannot create container.")
saveload4_diskerror:
putTextnoSeek("Disk Error")
saveload4_reread:
putText4noSeek("Reread because the disk", $00FF, "has been replaced.")
saveload4_namenotchanged:
putTextnoSeek("Name was not changed.")
saveload4_filenamenotchanged:
putTextnoSeek("Cannot change filename.")
saveload4_containernamenotchanged:
putTextnoSeek("Cannot change container name.")
saveload4_filecantdeletewrite:
putTextnoSeek("Cannot write/delete file.")
saveload4_diskcantdeletewrite:
putTextnoSeek("Cannot write/delete on this disk.")
saveload4_cannotmovesamecontainer:
putTextnoSeek("Cannot move in the same container.")
saveload4_disknotinserted:
putText4noSeek("Disk is ejected.", $00FF, "Insert disk.")
saveload4_cantusedisk:
putText4noSeek("Disk cannot be used here.", $00FF, "Insert correct disk.")
saveload4_insertdisk2:
dh 0x00FF
saveload4_insertdisk:
putTextnoSeek("Insert disk.")
saveload4_cantusename:
putTextnoSeek("Cannot use name.")
saveload4_diskcorrupted:
putText4noSeek("Corrupted disk.", $00FF, "Replace disk.")
saveload4_diskfault:
putText4noSeek("Disk fault.", $00FF, "Reinsert disk.")
saveload4_correctdisk:
putTextnoSeek("Insert correct disk.")
saveload4_nocontainer:
putTextnoSeek("No container.")
saveload4_no2container:
putTextnoSeek("No 2 or more containers.")
saveload4_cantmovecontent:
putText4noSeek("Cannot move files", ".", $00FF)
saveload4_container70files:
putText4noSeek("A single container can only", $00FF, "contain up to 70 files.")
saveload4_nofile:
putTextnoSeek("Container is empty.")
saveload4_cantremovecontent:
putTextnoSeek("Cannot delete files.")
saveload4_filelargeload:
putText4noSeek("Cannot load file", $00FF, "Too large")
saveload4_filetypeload:
putText4noSeek("Cannot load file", $00FF, "Type is different.")
saveload4_filetypeoverwrite:
putText4noSeek("Cannot overwrite file", $00FF, "Type is different.")
saveload4_containercantdeletewrite:
putText4noSeek("Cannot delete/write", $00FF, "in this container.")
saveload4_containercantdeletefiles:
putTextnoSeek("Cannot delete some files.")
saveload4_error49:
putText4noSeek("Error 49", $00FF, "Do not eject disk while in access.")
saveload4_error2:
putText4noSeek("Error 2", $00FF, "Reinsert disk.")
saveload4_readonly:
putText4noSeek("Read-only disk.", $00FF, "Cannot be used.")
saveload4_movefull:
//putText4noSeek("Move container destination", $00FF, "is full.")
saveload4_copyfull:
putText4noSeek("Container destination", $00FF, "is full.")
//putText4noSeek("Copy container destination", $00FF, "is full.")
saveload4_diskmatch:
putText4noSeek("Disk does not match.", $00FF, "Insert original disk.")
saveload4_cantinitdisk:
putTextnoSeek("Cannot initialize disk.")
saveload4_allfiles:
putTextnoSeek("All files could not be moved.")
saveload4_allfilesmoved:
putTextnoSeek("Every file has been moved.")
saveload4_cantsavefile:
putTextnoSeek("Cannot save file.")
saveload4_namenotgiven:
putTextnoSeek("Name was not given.")
saveload4_another:
putTextnoSeek("Not on a seperate disk.")
saveload4_contentcantcopy:
putTextnoSeek("Cannot copy.")
saveload4_entercontainer:
putTextnoSeek("Cannot save anymore on this container.")
saveload4_containerdeleted:
putText4noSeek("Every file of this container", $00FF, "has been deleted.")
saveload4_diskejectsaving:
putText4noSeek("Disk has been ejected.", $00FF, "Do not eject the disk while saving.")
saveload4_errornumber:
putTextnoSeek("Error  ")
saveload4_readmanual:
putText4noSeek("For more details, please", $00FF, "read the instruction manual.")
saveload4_thisdiskerror:
putTextnoSeek("This is a disk error.")

//Pointers
//Change pointers
seek(0x23BE40)
dw (saveload4_containerfull),(saveload4_container70files),0,(saveload4_diskactionsuspended)
dw 0,(saveload4_cantwritecontainer),0,(saveload4_cantwritefile)
dw 0,(saveload4_enterdisk),0,(saveload4_filecantdelete)
dw 0,(saveload4_containercantdelete),0,(saveload4_filecantmove)
dw 0,(saveload4_namealreadyexists),0,(saveload4_cantmakecontainer)
dw 0,(saveload4_diskerror),0,(saveload4_reread)
dw 0,(saveload4_namenotchanged),0,(saveload4_filenamenotchanged)
dw 0,(saveload4_containernamenotchanged),0,(saveload4_filecantdeletewrite)
dw 0,(saveload4_diskcantdeletewrite),0,(saveload4_cannotmovesamecontainer)
dw 0,(saveload4_disknotinserted),0,(saveload4_cantusedisk)
dw 0,(saveload4_insertdisk),0,(saveload4_cantusename)
dw 0,(saveload4_diskcorrupted),0,(saveload4_diskfault)
dw (saveload4_correctdisk),0,(saveload4_nocontainer),0
dw (saveload4_no2container),0,(saveload4_cantmovecontent),(saveload4_container70files)
dw 0,(saveload4_nofile),0,(saveload4_cantremovecontent)
dw 0,(saveload4_filetypeload),0,(saveload4_filetypeoverwrite)
dw 0,(saveload4_containercantdeletewrite),0,(saveload4_containercantdeletefiles)
dw 0,(saveload4_error49),(saveload4_readmanual),(saveload4_insertdisk2)
dw 0,(saveload4_error2),0,(saveload4_readonly)
dw (saveload4_correctdisk),0,(saveload4_cantusedisk),0
dw (saveload4_movefull),(saveload4_container70files),0,(saveload4_copyfull)
dw (saveload4_container70files),0,(saveload4_filelargeload),0
dw (saveload4_diskmatch),0,(saveload4_cantinitdisk),0
dw (saveload4_allfiles),0,(saveload4_allfilesmoved),0
dw (saveload4_cantsavefile),0,(saveload4_namenotgiven),0
dw (saveload4_another),0,(saveload4_contentcantcopy),(saveload4_container70files)
dw 0,(saveload4_entercontainer),0,(saveload4_containerdeleted)
dw 0,(saveload4_error49),(saveload4_readmanual),0
dw (saveload4_diskejectsaving),0,0,0

seek(0x1EC32E)
dh (saveload4_usedspace)
seek(0x1ECD7A)
dh (saveload4_currentwork1)
seek(0x1ECD92)
dh (saveload4_currentwork2)
seek(0x1ECDB2)
dh (saveload4_fromdisk)
seek(0x1ECDCA)
dh (saveload4_readfile)
seek(0x1ECDEA)
dh (saveload4_from64gb)
seek(0x1ECE02)
dh (saveload4_readfile)
seek(0x1ECE22)
dh (saveload4_auxpaper)
seek(0x1ECE3A)
dh (saveload4_image)
seek(0x1ECE5A)
dh (saveload4_makingfile)
seek(0x1ECE7A)
dh (saveload4_takenphotos)
seek(0x1ECE9A)
dh (saveload4_file)
seek(0x1ECEB2)
dh (saveload4_notloaded)
seek(0x1EDB8E)
dh (saveload4_selectcontainer)
seek(0x1EDBAE)
dh (saveload4_selectcontainerall1)
seek(0x1EDBBE)
dh (saveload4_selectcontainerall2)
seek(0x1EDBD6)
dh (saveload4_selectfile)
seek(0x1EE252)
dh (saveload4_thisdiskerror)
seek(0x1EE292)
dh (saveload4_thisdiskerror)
seek(0x1EE2CA)
dh (saveload4_errornumber)

//Move Used Space number 1.2
seek(0x1D2BEE)
dh (saveload4_usedspace + 26) //.
seek(0x1D2C26)
dh (saveload4_usedspace + 24) //1
seek(0x1D2C76)
dh (saveload4_usedspace + 28) //2


seek(0x23C0F0)
base 0x807C41D0
saveload5_eject: //41D0
putTextnoSeek("Eject the disk.")
saveload5_insert: //41F0
putTextnoSeek("Insert disk.")
saveload5_insertboot: //420C
putTextnoSeek("Insert the original game disk.")
saveload5_wrong: //422C
putTextnoSeek("Wrong disk.")
saveload5_replace: //4250
//putTextnoSeek("Change Disk")
saveload5_replaceoriginal: //4270
putTextnoSeek("Change Disk")
saveload5_anotherread: //4290
putTextnoSeek("Different Disk")
saveload5_originalread: //42BC
putTextnoSeek("Polygon Studio Disk")
saveload5_bootdiskrequired: //42DC
putTextnoSeek("Polygon Studio Disk is required.")
saveload5_kanji: //4320
putTextnoSeek("* Pick the first kana of the kanji *")

//Change pointers
seek(0x1F86C2)
dh (saveload5_eject)
seek(0x1F86E6)
dh (saveload5_eject)
seek(0x1F8706)
dh (saveload5_eject)
seek(0x1F8726)
dh (saveload5_insert)
seek(0x1F8766)
dh (saveload5_insert)
seek(0x1F8746)
dh (saveload5_insertboot)
seek(0x1F86EA)
dh (saveload5_wrong)
seek(0x1F86CA)
dh (saveload5_replace)
seek(0x1F870A)
dh (saveload5_replaceoriginal)
seek(0x1F872A)
dh (saveload5_anotherread)
seek(0x1F876A)
dh (saveload5_originalread)
seek(0x1F874A)
dh (saveload5_bootdiskrequired)
seek(0x1F6DF2)
dh (saveload5_kanji)
