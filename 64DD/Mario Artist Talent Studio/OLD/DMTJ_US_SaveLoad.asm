//SaveLoad YAY1 patches---------------------------------
output "8AD9F0.17453.SaveLoad.yay1.bin"

//Save/Load (2)
seekFile(0x33AE0)
base 0x0A033AE0
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
putTextnoSeek("Do you want to rename this file?")
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

//Change pointers
seekFile(0x346A0)
dw (saveload2_leftmenu)
seekFile(origin() + 0x8)
dw (saveload2_mode64dd)
seekFile(origin() + 0x8)
dw (saveload2_modesave)
seekFile(origin() + 0x8)
dw (saveload2_modeload)
seekFile(origin() + 0x8)
dw (saveload2_moderename)
seekFile(origin() + 0x8)
dw (saveload2_modedelete)
seekFile(origin() + 0x8)
dw (saveload2_modemovecopy)
seekFile(origin() + 0x8)
dw (saveload2_modediskchange)
seekFile(origin() + 0x8)
dw (saveload2_modemove)
seekFile(origin() + 0x8)
dw (saveload2_modecopy)
seekFile(origin() + 0x8)
dw (saveload2_containersave)
seekFile(origin() + 0x8)
dw (saveload2_containerfull)
seekFile(origin() + 0x8)
dw (saveload2_newsave1)
seekFile(origin() + 0x8)
dw (saveload2_newsave1)
seekFile(origin() + 0x8)
dw (saveload2_newsave2)
seekFile(origin() + 0x8)
dw (saveload2_overwrite1)
seekFile(origin() + 0x8)
dw (saveload2_overwrite2)
seekFile(origin() + 0x8)
dw (saveload2_nosave)
seekFile(origin() + 0x8)
dw (saveload2_saving)
seekFile(origin() + 0x8)
dw (saveload2_saving)
seekFile(origin() + 0x8)
dw (saveload2_compression)
seekFile(origin() + 0x8)
dw (saveload2_namefile1)
seekFile(origin() + 0x8)
dw (saveload2_namefile2)
seekFile(origin() + 0x8)
dw (saveload2_namesave)
seekFile(origin() + 0x8)
dw (saveload2_nocontainer)
seekFile(origin() + 0x8)
dw (saveload2_containersave) //Load
seekFile(origin() + 0x8)
dw (saveload2_selectload)
seekFile(origin() + 0x8)
dw (saveload2_loadfile1)
seekFile(origin() + 0x8)
dw (saveload2_loadfile2)
seekFile(origin() + 0x8)
dw (saveload2_nofile)
seekFile(origin() + 0x8)
dw (saveload2_sureload)
seekFile(origin() + 0x8)
dw (saveload2_loading)
seekFile(origin() + 0x8)
dw (saveload2_whatdelete)
seekFile(origin() + 0x8)
dw (saveload2_containersave) //Delete
seekFile(origin() + 0x8)
dw (saveload2_containerdelete)
seekFile(origin() + 0x8)
dw (saveload2_containersave) //Delete
seekFile(origin() + 0x8)
dw (saveload2_selectload) //Delete
seekFile(origin() + 0x8)
dw (saveload2_filedelete)
seekFile(origin() + 0x8)
dw (saveload2_deleting)
seekFile(origin() + 0x8)
dw (saveload2_whatrename)
seekFile(origin() + 0x8)
dw (saveload2_containersave) //Rename
seekFile(origin() + 0x8)
dw (saveload2_containerrename)
seekFile(origin() + 0x8)
dw (saveload2_containersave) //Rename
seekFile(origin() + 0x8)
dw (saveload2_selectload) //Rename
seekFile(origin() + 0x8)
dw (saveload2_filerename)
seekFile(origin() + 0x8)
dw (saveload2_renaming)
seekFile(origin() + 0x8)
dw (saveload2_moveorcopy)
seekFile(origin() + 0x8)
dw (saveload2_whatmove)
seekFile(origin() + 0x8)
dw (saveload2_selectcontainermove1)
seekFile(origin() + 0x8)
dw (saveload2_selectcontainermove2)
seekFile(origin() + 0x8)
dw (saveload2_containermove)
seekFile(origin() + 0x8)
dw (saveload2_containersave) //Move
seekFile(origin() + 0x8)
dw (saveload2_selectload) //Move
seekFile(origin() + 0x8)
dw (saveload2_filemove)
seekFile(origin() + 0x8)
dw (saveload2_moving)
seekFile(origin() + 0x8)
dw (saveload2_whatcopy)
seekFile(origin() + 0x8)
dw (saveload2_selectcontainercopy1)
seekFile(origin() + 0x8)
dw (saveload2_selectcontainercopy2)
seekFile(origin() + 0x8)
dw (saveload2_containercopy)
seekFile(origin() + 0x8)
dw (saveload2_containersave) //Copy
seekFile(origin() + 0x8)
dw (saveload2_selectload) //Copy
seekFile(origin() + 0x8)
dw (saveload2_filecopy)
seekFile(origin() + 0x8)
dw (saveload2_copying)
seekFile(origin() + 0x8)
dw (saveload2_init)

seekFile(0x34B30)
base 0x0A034B30
saveload3_donoteject:
putTextnoSeek("Do not eject the disk.")
saveload3_prepsave:
putTextnoSeek("Prepared Save")
saveload3_unreadfiles:
putTextnoSeek("Unreadable Files")
seekFile(0x34BA0)
dw (saveload3_donoteject), (saveload3_prepsave), (saveload3_unreadfiles)


seekFile(0x34BB0)
base 0x0A034BB0
saveload4_usedspace:
putTextnoSeek("Used Space: 0.0MB")
saveload4_currentwork1:
putTextnoSeek("Current work")
saveload4_currentwork2:
putTextnoSeek("")
saveload4_fromdisk:
//putTextnoSeek("From Disk")
saveload4_from64gb:
//putTextnoSeek("From Transfer Pak")
saveload4_readfile:
//putTextnoSeek("Read File")
saveload4_file:
//putTextnoSeek("File")
saveload4_notloaded:
//putTextnoSeek("Not loaded")
saveload4_makingfile:
//putTextnoSeek("Making File")
saveload4_takenphotos:
//putTextnoSeek("Taken Photos")
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

//Change pointers
seekFile(0x3587C)
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

seekFile(0x35B20)
base 0x0A035B20
saveload5_eject:
putTextnoSeek("Eject the disk.")
saveload5_insert:
putTextnoSeek("Insert disk.")
saveload5_insertboot:
putTextnoSeek("Insert the original game disk.")
saveload5_wrong:
putTextnoSeek("Wrong disk.")
saveload5_replace:
//putTextnoSeek("Change Disk")
saveload5_replaceoriginal:
putTextnoSeek("Change Disk")
saveload5_anotherread:
putTextnoSeek("Different Disk")
saveload5_originalread:
putTextnoSeek("Talent Studio Game Disk")
saveload5_bootdiskrequired:
putTextnoSeek("Talent Studio Game Disk is required.")
saveload5_kanji:
putTextnoSeek("* Pick the first kana of the kanji *")

//Erase Descriptions for other characters
//They speak for themselves
seekFile(0x37E48)
putTextnoSeek("      ")
seekFile(0x37E7C)
putTextnoSeek("       ")
seekFile(0x37E90)
putTextnoSeek("      ")
seekFile(0x37EA0)
putTextnoSeek("       ")
seekFile(0x37EB0)
putTextnoSeek("    ")
seekFile(0x37EC0)
putTextnoSeek("   ")
seekFile(0x37FA4)
putTextnoSeek("       ")
seekFile(0x37FB4)
putTextnoSeek("       ")
seekFile(0x37FC4)
putTextnoSeek("      ")

seekFile(0x382DC)
dh $8197

//Disk File patches---------------------------------
outputGame()

//Save/Load (1) 0x2AAAD0 - RAM 0x802C6800
seek(0x8A5028)
base 0x802C3970
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

//Replace pointers
seek(0x8A5184)
dw (saveload1_exit)
seekFile(origin() + 0x10)
dw (saveload1_save)
seekFile(origin() + 0x10)
dw (saveload1_load)
seekFile(origin() + 0x10)
dw (saveload1_create)
seekFile(origin() + 0x10)
dw (saveload1_rename)
seekFile(origin() + 0x10)
dw (saveload1_delete)
seekFile(origin() + 0x10)
dw (saveload1_copy)
seekFile(origin() + 0x10)
dw (saveload1_disk)

seek(0x8A5238)
dw (saveload1_back)

seek(0x8A5260)
dw (saveload1_hiragana)
seekFile(origin() + 0x10)
dw (saveload1_katakana)
seekFile(origin() + 0x10)
dw (saveload1_letters)
seekFile(origin() + 0x10)
dw (saveload1_kanji)
seekFile(origin() + 0x10)
dw (saveload1_all)
seekFile(origin() + 0x10)
dw (saveload1_space)
seekFile(origin() + 0x10)
dw (saveload1_left)
seekFile(origin() + 0x10)
dw (saveload1_right)
seekFile(origin() + 0x10)
dw (saveload1_erase)
seekFile(origin() + 0x10)
dw (saveload1_eraseall)
seekFile(origin() + 0x10)
dw (saveload1_undo)
seekFile(origin() + 0x10)
dw (saveload1_done)

seek(0x8A5354)	//Kanji Page
putTextnoSeek("1/1")

putText(0x8A5540, "New")
seek(0x8A55A8)
base 0x802C3EF0
putText(0x8A55A8, "Move")

seek(0x8A5550) //Fix Eraser animation
saveload1_copy2:
putText(0x8A5550, "Copy")
//Change pointer
seek(0x894F1A)
dh (saveload1_copy2)


seek(0x88A7B6)
dh (saveload4_usedspace)
seek(0x88B746)
dh (saveload4_currentwork1)
seek(0x88B75E)
dh (saveload4_currentwork2)
seek(0x88B77E)
dh (saveload4_fromdisk)
seek(0x88B796)
dh (saveload4_readfile)
seek(0x88B7B6)
dh (saveload4_from64gb)
seek(0x88B7CE)
dh (saveload4_readfile)
seek(0x88B7EE)
dh (saveload4_auxpaper)
seek(0x88B806)
dh (saveload4_image)
seek(0x88B826)
dh (saveload4_makingfile)
seek(0x88B846)
dh (saveload4_takenphotos)
seek(0x88B866)
dh (saveload4_selectfile)
seek(0x88B87E)
dh (saveload4_notloaded)
seek(0x88CBAA)
dh (saveload4_selectcontainer)
seek(0x88CBCA)
dh (saveload4_selectcontainerall1)
seek(0x88CBE2)
dh (saveload4_selectcontainerall2)
seek(0x88CBFA)
dh (saveload4_selectfile)

seek(0x88D55E)
dh (saveload4_thisdiskerror)
seek(0x88D5C2)
dh (saveload4_thisdiskerror)
seek(0x88D616)
dh (saveload4_errornumber)
seek(0x88D652)
dh (saveload4_readmanual)
seek(0x88D6C6)
dh (saveload4_readmanual)

//Move Used Space number 1.2 ASM
seek(0x867420)
sb t1,0x1A/2(t2) //.
seek(0x86743C)
sb t5,0x18/2(t7) //1
seek(0x86746C)
sb t0,0x1C/2(t1) //2

//Move Used Space more than 10MB ASM
seek(0x86749C)
sb t7,0x18/2(t6)
seek(0x8674B8)
sb t0,0x1A/2(t1)
seek(0x8674D4)
sb t4,0x1C/2(t5)

//Change pointers
seek(0x89C6E2); dh (saveload5_replace)
seek(0x89C6EE); dh (saveload5_eject)

seek(0x89C712); dh (saveload5_wrong)
seek(0x89C71E); dh (saveload5_eject)

seek(0x89C742); dh (saveload5_replaceoriginal)
seek(0x89C74E); dh (saveload5_eject)



seek(0x89C772); dh (saveload5_anotherread)
seek(0x89C77E); dh (saveload5_insert)

seek(0x89C7A2); dh (saveload5_bootdiskrequired)
seek(0x89C7AE); dh (saveload5_insertboot)

seek(0x89C7D2); dh (saveload5_originalread)
seek(0x89C7DE); dh (saveload5_insert)

seek(0x89A2D2)
dh (saveload5_kanji)
