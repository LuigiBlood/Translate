//Save/Load (1) 0x2AAAD0 - RAM 0x802C6800
seek(0x2AAAD0)
base 0x802C6800
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

//Replace pointers 0x802C6800
seek(0x2AAC2C)
dw (saveload1_exit)
seek(0x2AAC40)
dw (saveload1_save)
seek(0x2AAC54)
dw (saveload1_load)
seek(0x2AAC68)
dw (saveload1_create)
seek(0x2AAC7C)
dw (saveload1_rename)
seek(0x2AAC90)
dw (saveload1_delete)
seek(0x2AACA4)
dw (saveload1_copy)
seek(0x2AACB8)
dw (saveload1_disk)

seek(0x2AACE0)
dw (saveload1_back)
seek(0x2AAD08)
dw (saveload1_hiragana)
seek(0x2AAD1C)
dw (saveload1_katakana)
seek(0x2AAD30)
dw (saveload1_letters)
seek(0x2AAD44)
dw (saveload1_kanji)
seek(0x2AAD58)
dw (saveload1_all)
seek(0x2AAD6C)
dw (saveload1_space)
seek(0x2AAD80)
dw (saveload1_left)
seek(0x2AAD94)
dw (saveload1_right)
seek(0x2AADA8)
dw (saveload1_erase)
seek(0x2AADBC)
dw (saveload1_eraseall)
seek(0x2AADD0)
dw (saveload1_undo)
seek(0x2AADE4)
dw (saveload1_done)

putText(0x2AAFE6, "New Save")
seek(0x2AB050)
base 0x802C6D80
putText(0x2AB050, "Move")

seek(0x2AAFF8) //Fix Eraser animation
saveload1_copy2:
putText(0x2AAFF8, "Copy")
//Change pointer
seek(0x29AAE2)
dh (saveload1_copy2)

//Save/Load (2) 0x2E00C0 - RAM 0x802FBDF0
seek(0x2E00C0)
base 0x802FBDF0
//Rough translations
//putTextnoSeek("Test") //RAM 0x802FBDF0 Unused
saveload2_leftmenu:
putTextnoSeek("Please select from the left menu.") //RAM 0x802FBDF8
saveload2_containersave:
putTextnoSeek("Select a container.") //RAM 0x802FBE18
saveload2_containerfull:
putTextnoSeek("This container is full.") //RAM 0x802FBE50
saveload2_newsave1:
putTextnoSeek("Do you want to save this file as new?") //RAM 0x802FBE70
saveload2_newsave2:
putTextnoSeek("(Select another file if you want to overwrite)") //RAM 0x802FBEA0 Too long?
saveload2_overwrite1:
putTextnoSeek("Do you want to overwrite this file?") //RAM 0x802FBED4
saveload2_overwrite2:
putText4noSeek("Are you sure?", $00FF, "This file will be overwritten.") //RAM 0x802FBEEC
saveload2_nosave:
putTextnoSeek("It is not possible to save.") //RAM 0x802FBF18
saveload2_saving:
putTextnoSeek("Saving...") //RAM 0x802FBF40
saveload2_compression:
putTextnoSeek("(Compression takes a moment)") //RAM 0x802FBF54
saveload2_namefile1:
putTextnoSeek("Do you want to name the file?") //RAM 0x802FBF7C
saveload2_namefile2:
putTextnoSeek("(The name at the bottom will be used if not)") //RAM 0x802FBFA0
saveload2_namesave:
putTextnoSeek("Saving name...") //RAM 0x802FBFCC
saveload2_nocontainer:
putTextnoSeek("There is no container.") //RAM 0x802FBFE8
//putTextnoSeek("Please select a container.") //RAM 0x802FC000
saveload2_selectload:
putTextnoSeek("Select a file.") //RAM 0x802FC034
saveload2_loadfile1:
putTextnoSeek("Do you want to load this file?") //RAM 0x802FC05C
saveload2_loadfile2:
putText4noSeek("(Re-select from the right", $00FF, "if you want a different file)") //RAM 0x802FC080 Unused?
saveload2_nofile:
putTextnoSeek("This container is empty.") //RAM 0x802FC0B4
saveload2_sureload:
putTextnoSeek("Current work will be lost, are you sure?") //RAM 0x802FC0E4
saveload2_loading:
putTextnoSeek("Loading...") //RAM 0x802FC120
saveload2_whatdelete:
putTextnoSeek("What do you want to delete?") //RAM 0x802FC134
//saveload2_selectcontainerdelete:
//putTextnoSeek("Select a container that you want to delete.") //RAM 0x802FC154
saveload2_containerdelete:
putText4noSeek("Do you want to delete", $00FF, "the contents of this container?") //RAM 0x802FC188
//putTextnoSeek("Please select a container.") //RAM 0x802FC1B8
//putTextnoSeek("Select the file to delete.") //RAM 0x802FC1F0
saveload2_filedelete:
putTextnoSeek("Do you want to delete this file?") //RAM 0x802FC21C
saveload2_deleting:
putTextnoSeek("Deleting...") //RAM 0x802FC244
saveload2_whatrename:
putTextnoSeek("What do you want to rename?") //RAM 0x802FC25C
//saveload2_selectcontainerrename:
//putTextnoSeek("Select the container to rename.") //RAM 0x802FC284
saveload2_containerrename:
putText4noSeek("Do you want to change", $00FF, "the name of this container?") //RAM 0x802FC2B8
//putTextnoSeek("Please select a container.") //RAM 0x802FC2E8
//putTextnoSeek("Select the file to rename.") //RAM 0x802FC328
saveload2_filerename:
putTextnoSeek("Do you want to rename this file?") //RAM 0x802FC35C
saveload2_renaming:
putTextnoSeek("Renaming...") //RAM 0x802FC38C
saveload2_moveorcopy:
putTextnoSeek("What do you want to do?") //RAM 0x802FC3B0
saveload2_whatmove:
putTextnoSeek("What do you want to move?") //RAM 0x802FC3CC
saveload2_selectcontainermove1:
putTextnoSeek("Select the container to move from.") //RAM 0x802FC3EC
saveload2_selectcontainermove2:
putTextnoSeek("Select the new container to move to.") //RAM 0x802FC420
saveload2_containermove:
putTextnoSeek("Do you want to move everything?") //RAM 0x802FC450
//putTextnoSeek("Please select a container.") //RAM 0x802FC480
//putTextnoSeek("Select the file to move.") //RAM 0x802FC4B4
saveload2_filemove:
putTextnoSeek("Do you want to move this file?") //RAM 0x802FC4DC
saveload2_moving:
putTextnoSeek("Moving...") //RAM 0x802FC500
saveload2_whatcopy:
putTextnoSeek("What do you want to copy?") //RAM 0x802FC518
saveload2_selectcontainercopy1:
putTextnoSeek("Select the container to copy from.") //RAM 0x802FC534
saveload2_selectcontainercopy2:
putTextnoSeek("Select the container to copy to.") //RAM 0x802FC55C
saveload2_containercopy:
putTextnoSeek("Do you want to copy everything?") //RAM 0x802FC58C
//putTextnoSeek("Please select a container.") //RAM 0x802FC5B4
//putTextnoSeek("Select the file to copy.") //RAM 0x802FC5E8
saveload2_filecopy:
putTextnoSeek("Do you want to copy this file?") //RAM 0x802FC610
saveload2_copying:
putTextnoSeek("Copying...") //RAM 0x802FC634
//putTextnoSeek("Creating new container...") //RAM 0x802FC648 Unused?
//putTextnoSeek("Do you want to put a new name in this container?") //RAM 0x802FC668 Unused?
//putTextnoSeek("Do you want to reorder?") //RAM 0x802FC698 Unused?
//putTextnoSeek("What do you want to sort?") //RAM 0x802FC6B8 Unused?
//putTextnoSeek("Swapping two containers.") //RAM 0x802FC6D0 Unused?
//putTextnoSeek("Please select the first container.") //RAM 0x802FC6F8 Unused?
//putTextnoSeek("Please select the second container.") //RAM 0x802FC71C Unused?
//putTextnoSeek("Do you want to swap both containers?") //RAM 0x802FC740 Unused?
//putTextnoSeek("Re-reading file information...") //RAM 0x802FC770 Unused?
saveload2_init:
putText4noSeek("Do you really want to initialize", $00FF, "the disk? All the files will be gone.") //RAM 0x802FC79C
//putTextnoSeek("Do you want a new container?") //RAM 0x802FC804 Unused?
saveload2_changedisk:
putTextnoSeek("Please change the disk.") //RAM 0x802FC830
saveload2_ejectdisk:
putTextnoSeek("Please eject the disk.") //RAM 0x802FC854
saveload2_insertdisk:
putTextnoSeek("Please insert the disk.") //RAM 0x802FC870
saveload2_accessdisk:
putTextnoSeek("We are accessing a different disk.") //RAM 0x802FC88C
saveload2_mode64dd:
putText4noSeek($00BB, " 64DD ", $00BB) //RAM 0x802FC8AC
saveload2_modesave:
putText4noSeek($00B7, " Save ", $00B7) //RAM 0x802FC8C0
saveload2_modeload:
putText4noSeek($00B7, " Load ", $00B7) //RAM 0x802FC8D0
saveload2_moderename:
putText4noSeek($00B7, " Rename ", $00B7) //RAM 0x802FC8E0
saveload2_modedelete:
putText4noSeek($00B7, " Delete ", $00B7) //RAM 0x802FC8F8
saveload2_modemovecopy:
putText4noSeek($00B7, " Move/Copy ", $00B7) //RAM 0x802FC90C
saveload2_modediskchange:
putText4noSeek($00B7, " Disk Change ", $00B7) //RAM 0x802FC928
saveload2_modemove:
putText4noSeek($00B7, " Move ", $00B7) //RAM 0x802FC948
saveload2_modecopy:
putText4noSeek($00B7, " Copy ", $00B7) //RAM 0x802FC958
//putText4noSeek($00B7, " Sort ", $00B7) //RAM 0x802FC968 Unused?
//putText4noSeek($00B7, " Container Creation ", $00B7) //RAM 0x802FC984 Unused?

//Change pointers
seek(0x2E0C80)
dw (saveload2_leftmenu)
seek(0x2E0C8C)
dw (saveload2_mode64dd)
seek(0x2E0C98)
dw (saveload2_modesave)
seek(0x2E0CA4)
dw (saveload2_modeload)
seek(0x2E0CB0)
dw (saveload2_moderename)
seek(0x2E0CBC)
dw (saveload2_modedelete)
seek(0x2E0CC8)
dw (saveload2_modemovecopy)
seek(0x2E0CD4)
dw (saveload2_modediskchange)
seek(0x2E0CE0)
dw (saveload2_modemove)
seek(0x2E0CEC)
dw (saveload2_modecopy)
seek(0x2E0CF8)
dw (saveload2_containersave)
seek(0x2E0D04)
dw (saveload2_containerfull)
seek(0x2E0D10)
dw (saveload2_newsave1)
seek(0x2E0D1C)
dw (saveload2_newsave1)
seek(0x2E0D28)
dw (saveload2_newsave2)
seek(0x2E0D34)
dw (saveload2_overwrite1)
seek(0x2E0D40)
dw (saveload2_overwrite2)
seek(0x2E0D4C)
dw (saveload2_nosave)
seek(0x2E0D58)
dw (saveload2_saving)
seek(0x2E0D64)
dw (saveload2_saving)
seek(0x2E0D70)
dw (saveload2_compression)
seek(0x2E0D7C)
dw (saveload2_namefile1)
seek(0x2E0D88)
dw (saveload2_namefile2)
seek(0x2E0D94)
dw (saveload2_namesave)
seek(0x2E0DA0)
dw (saveload2_nocontainer)
seek(0x2E0DAC)
dw (saveload2_containersave) //Load
seek(0x2E0DB8)
dw (saveload2_selectload)
seek(0x2E0DC4)
dw (saveload2_loadfile1)
seek(0x2E0DD0)
dw (saveload2_loadfile2)
seek(0x2E0DDC)
dw (saveload2_nofile)
seek(0x2E0DE8)
dw (saveload2_sureload)
seek(0x2E0DF4)
dw (saveload2_loading)
seek(0x2E0E00)
dw (saveload2_whatdelete)
seek(0x2E0E0C)
dw (saveload2_containersave) //Delete
seek(0x2E0E18)
dw (saveload2_containerdelete)
seek(0x2E0E24)
dw (saveload2_containersave) //Delete
seek(0x2E0E30)
dw (saveload2_selectload) //Delete
seek(0x2E0E3C)
dw (saveload2_filedelete)
seek(0x2E0E48)
dw (saveload2_deleting)
seek(0x2E0E54)
dw (saveload2_whatrename)
seek(0x2E0E60)
dw (saveload2_containersave) //Rename
seek(0x2E0E6C)
dw (saveload2_containerrename)
seek(0x2E0E78)
dw (saveload2_containersave) //Rename
seek(0x2E0E84)
dw (saveload2_selectload) //Rename
seek(0x2E0E90)
dw (saveload2_filerename)
seek(0x2E0E9C)
dw (saveload2_renaming)
seek(0x2E0EA8)
dw (saveload2_moveorcopy)
seek(0x2E0EB4)
dw (saveload2_whatmove)
seek(0x2E0EC0)
dw (saveload2_selectcontainermove1)
seek(0x2E0ECC)
dw (saveload2_selectcontainermove2)
seek(0x2E0ED8)
dw (saveload2_containermove)
seek(0x2E0EE4)
dw (saveload2_containersave) //Move
seek(0x2E0EF0)
dw (saveload2_selectload) //Move
seek(0x2E0EFC)
dw (saveload2_filemove)
seek(0x2E0F08)
dw (saveload2_moving)
seek(0x2E0F14)
dw (saveload2_whatcopy)
seek(0x2E0F20)
dw (saveload2_selectcontainercopy1)
seek(0x2E0F2C)
dw (saveload2_selectcontainercopy2)
seek(0x2E0F38)
dw (saveload2_containercopy)
seek(0x2E0F44)
dw (saveload2_containersave) //Copy
seek(0x2E0F50)
dw (saveload2_selectload) //Copy
seek(0x2E0F5C)
dw (saveload2_filecopy)
seek(0x2E0F68)
dw (saveload2_copying)
seek(0x2E0F74)
dw (saveload2_init)

seek(0x2E1110)
base 0x802FCE40
saveload3_donoteject:
putTextnoSeek("Do not eject the disk.")
saveload3_prepsave:
putTextnoSeek("Prepared Save")
saveload3_unreadfiles:
putTextnoSeek("Unreadable Files")
seek(0x2E1180)
dw (saveload3_donoteject), (saveload3_prepsave), (saveload3_unreadfiles)

seek(0x2E1190)
base 0x802FCEC0
saveload4_usedspace:
putTextnoSeek("Used Space: 0.0MB") //RAM 0x802FCEC0
saveload4_currentwork1:
putTextnoSeek("Current work") //RAM 0x802FCEE4
saveload4_currentwork2:
putTextnoSeek("") //RAM 0x802FCF00
saveload4_fromdisk:
//putTextnoSeek("From Disk") //RAM 0x802FCF18 Unused?
saveload4_from64gb:
//putTextnoSeek("From Transfer Pak") //RAM 0x802FCF28 Unused?
saveload4_readfile:
//putTextnoSeek("Read File") //RAM 0x802FCF3C Unused?
saveload4_file:
//putTextnoSeek("File") //RAM 0x802FCF50 Unused?
saveload4_notloaded:
//putTextnoSeek("Not loaded") //RAM 0x802FCF5C Unused?
saveload4_makingfile:
//putTextnoSeek("Making File") //RAM 0x802FCF74 Unused?
saveload4_takenphotos:
//putTextnoSeek("Taken Photos") //RAM 0x802FCF90 Unused?
saveload4_auxpaper:
//putTextnoSeek("Auxiliary Paper") //RAM 0x802FCFA8 Unused?
saveload4_image:
putTextnoSeek("")
//putTextnoSeek("Image") //RAM 0x802FCFC4 Unused?

saveload4_selectcontainer:
putTextnoSeek("Container") //RAM 0x802FCFD8
saveload4_selectfile:
putTextnoSeek("   File") //RAM 0x802FCFE4
saveload4_selectcontainerall1:
putTextnoSeek("All files of") //RAM 0x802FCFF0
saveload4_selectcontainerall2:
putTextnoSeek("  a container") //RAM 0x802FCFFC

saveload4_containerfull:
putTextnoSeek("This container is full.") //RAM 0x802FD010
saveload4_diskactionsuspended:
putText4noSeek("Disk is ejected.", $00FF, "Access suspended.") //RAM 0x802FD030
saveload4_cantwritecontainer:
putTextnoSeek("Cannot write in this container.") //RAM 0x802FD078
saveload4_cantwritefile:
putTextnoSeek("Cannot write file.") //RAM 0x802FD09C
saveload4_enterdisk:
putTextnoSeek("The disk is full.") //RAM 0x802FD0C0
saveload4_filecantdelete:
putTextnoSeek("Cannot delete file.") //RAM 0x802FD0FC
saveload4_containercantdelete:
putTextnoSeek("Cannot delete container.") //RAM 0x802FD128
saveload4_filecantmove:
putTextnoSeek("Cannot move file.") //RAM 0x802FD154
saveload4_namealreadyexists:
putTextnoSeek("Name already exists.") //RAM 0x802FD178
saveload4_cantmakecontainer:
putTextnoSeek("Cannot create container.") //RAM 0x802FD19C
saveload4_diskerror:
putTextnoSeek("Disk Error") //RAM 0x802FD1C8
saveload4_reread:
putText4noSeek("Reread because the disk", $00FF, "has been replaced.") //RAM 0x802FD1E0
saveload4_namenotchanged:
putTextnoSeek("Name was not changed.") //RAM 0x802FD214
saveload4_filenamenotchanged:
putTextnoSeek("Cannot change filename.") //RAM 0x802FD23C
saveload4_containernamenotchanged:
putTextnoSeek("Cannot change container name.") //RAM 0x802FD270
saveload4_filecantdeletewrite:
putTextnoSeek("Cannot write/delete file.") //RAM 0x802FD2A4
saveload4_diskcantdeletewrite:
putTextnoSeek("Cannot write/delete on this disk.") //RAM 0x802FD2D8
saveload4_cannotmovesamecontainer:
putTextnoSeek("Cannot move in the same container.") //RAM 0x802FD30C
saveload4_disknotinserted:
putText4noSeek("Disk is ejected.", $00FF, "Insert disk.") //RAM 0x802FD334
saveload4_cantusedisk:
putText4noSeek("Disk cannot be used here.", $00FF, "Insert correct disk.") //RAM 0x802FD37C
saveload4_insertdisk2:
dh 0x00FF
saveload4_insertdisk:
putTextnoSeek("Insert disk.") //RAM 0x802FD3E4
saveload4_cantusename:
putTextnoSeek("Cannot use name.") //RAM 0x802FD40C
saveload4_diskcorrupted:
putText4noSeek("Corrupted disk.", $00FF, "Replace disk.") //RAM 0x802FD42C
saveload4_diskfault:
putText4noSeek("Disk fault.", $00FF, "Reinsert disk.") //RAM 0x802FD488
saveload4_correctdisk:
putTextnoSeek("Insert correct disk.") //RAM 0x802FD4CC
saveload4_nocontainer:
putTextnoSeek("No container.") //RAM 0x802FD4F8
saveload4_no2container:
putTextnoSeek("No 2 or more containers.") //RAM 0x802FD510
saveload4_cantmovecontent:
putText4noSeek("Cannot move files", ".", $00FF) //RAM 0x802FD53C
saveload4_container70files:
putText4noSeek("A single container can only", $00FF, "contain up to 70 files.") //RAM 0x802FD570
saveload4_nofile:
putTextnoSeek("Container is empty.") //RAM 0x802FD5B4
saveload4_cantremovecontent:
putTextnoSeek("Cannot delete files.") //RAM 0x802FD5E0
saveload4_filelargeload:
putText4noSeek("Cannot load file", $00FF, "Too large") //RAM 0x802FD618
saveload4_filetypeload:
putText4noSeek("Cannot load file", $00FF, "Type is different.") //RAM 0x802FD660
saveload4_filetypeoverwrite:
putText4noSeek("Cannot overwrite file", $00FF, "Type is different.") //RAM 0x802FD6A8
saveload4_containercantdeletewrite:
putText4noSeek("Cannot delete/write", $00FF, "in this container.") //RAM 0x802FD6F0
saveload4_containercantdeletefiles:
putTextnoSeek("Cannot delete some files.") //RAM 0x802FD724
saveload4_error49:
putText4noSeek("Error 49", $00FF, "Do not eject disk while in access.") //RAM 0x802FD768
saveload4_error2:
putText4noSeek("Error 2", $00FF, "Reinsert disk.") //RAM 0x802FD7D4
saveload4_readonly:
putText4noSeek("Read-only disk.", $00FF, "Cannot be used.") //RAM 0x802FD81C
saveload4_movefull:
//putText4noSeek("Move container destination", $00FF, "is full.") //RAM 0x802FD868
saveload4_copyfull:
putText4noSeek("Container destination", $00FF, "is full.")
//putText4noSeek("Copy container destination", $00FF, "is full.") //RAM 0x802FD8A0
saveload4_diskmatch:
putText4noSeek("Disk does not match.", $00FF, "Insert original disk.") //RAM 0x802FD8D8
saveload4_cantinitdisk:
putTextnoSeek("Cannot initialize disk.") //RAM 0x802FD924
saveload4_allfiles:
putTextnoSeek("All files could not be moved.") //RAM 0x802FD94C
saveload4_allfilesmoved:
putTextnoSeek("Every file has been moved.") //RAM 0x802FD988
saveload4_cantsavefile:
putTextnoSeek("Cannot save file.") //RAM 0x802FD9C0
saveload4_namenotgiven:
putTextnoSeek("Name was not given.") //RAM 0x802FD9E4
saveload4_another:
putTextnoSeek("Not on a seperate disk.") //RAM 0x802FDA08
saveload4_contentcantcopy:
putTextnoSeek("Cannot copy.") //RAM 0x802FDA28
saveload4_entercontainer:
putTextnoSeek("Cannot save anymore on this container.") //RAM 0x802FDA5C
saveload4_containerdeleted:
putText4noSeek("Every file of this container", $00FF, "has been deleted.") //RAM 0x802FDA98
saveload4_diskejectsaving:
putText4noSeek("Disk has been ejected.", $00FF, "Do not eject the disk while saving.") //RAM 0x802FDAD4
saveload4_errornumber:
putTextnoSeek("Error  ") //RAM 0x802FDB28
saveload4_readmanual:
putText4noSeek("For more details, please", $00FF, "read the instruction manual.") //RAM 0x802FDB3C
saveload4_thisdiskerror:
putTextnoSeek("This is a disk error.") //RAM 0x802FDB78

//Change pointers
seek(0x2E1E60)
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

seek(0x2904EE)
dh (saveload4_usedspace)
seek(0x291476)
dh (saveload4_currentwork1)
seek(0x29148E)
dh (saveload4_currentwork2)
seek(0x2914AE)
dh (saveload4_fromdisk)
seek(0x2914C6)
dh (saveload4_readfile)
seek(0x2914E6)
dh (saveload4_from64gb)
seek(0x2914FE)
dh (saveload4_readfile)
seek(0x29151E)
dh (saveload4_auxpaper)
seek(0x291536)
dh (saveload4_image)
seek(0x291556)
dh (saveload4_makingfile)
seek(0x291576)
dh (saveload4_takenphotos)
seek(0x292896)
dh (saveload4_selectcontainer)
seek(0x2928B6)
dh (saveload4_selectcontainerall1)
seek(0x2928CE)
dh (saveload4_selectcontainerall2)
seek(0x2928E6)
dh (saveload4_selectfile)
seek(0x29323E)
dh (saveload4_thisdiskerror)
seek(0x293282)
dh (saveload4_thisdiskerror)
seek(0x2932BE)
dh (saveload4_errornumber)

//Move Used Space number 1.2
seek(0x26DCB2)
dh 0x001A //.
seek(0x26DCCE)
dh 0x0018 //1
seek(0x26DCFE)
dh 0x001C //2

seek(0x2E2110)
base 0x802FDE40
saveload5_eject:
putTextnoSeek("Eject the disk.") //RAM 0x802FDE40
saveload5_insert:
putTextnoSeek("Insert disk.") //RAM 0x802FDE60
saveload5_insertboot:
putTextnoSeek("Insert the original game disk.") //RAM 0x802FDE7C
saveload5_wrong:
putTextnoSeek("Wrong disk.") //RAM 0x802FDE9C
saveload5_replace:
//putTextnoSeek("Change Disk") //RAM 0x802FDEC0
saveload5_replaceoriginal:
putTextnoSeek("Change Disk") //RAM 0x802FDEE0
saveload5_anotherread:
putTextnoSeek("Different Disk") //RAM 0x802FDF00
saveload5_originalread:
putTextnoSeek("Paint Studio Game Disk") //RAM 0x802FDF2C
saveload5_bootdiskrequired:
putTextnoSeek("Paint Studio Game Disk is required.") //RAM 0x802FDF4C
saveload5_kanji:
putTextnoSeek("* Pick the first kana of the kanji *") //RAM 0x802FDF90

//Change pointers
seek(0x2A21F6)
dh (saveload5_eject)
seek(0x2A2226)
dh (saveload5_eject)
seek(0x2A2256)
dh (saveload5_eject)
seek(0x2A2286)
dh (saveload5_insert)
seek(0x2A22E6)
dh (saveload5_insert)
seek(0x2A22B6)
dh (saveload5_insertboot)
seek(0x2A221A)
dh (saveload5_wrong)
seek(0x2A21EA)
dh (saveload5_replace)
seek(0x2A224A)
dh (saveload5_replaceoriginal)
seek(0x2A227A)
dh (saveload5_anotherread)
seek(0x2A22DA)
dh (saveload5_originalread)
seek(0x2A22AA)
dh (saveload5_bootdiskrequired)
seek(0x29FE6A)
dh (saveload5_kanji)
