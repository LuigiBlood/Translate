//Game Boy Camera (Overlay Disk 0x2EF0E0 / RAM 80284130 / Size 0x3E680)
//Disk 0x306F4C / RAM 8029BF9C - Text Rendering
//Disk 0x3068D0 / RAM 8029B920 - Text Size Calc?

seek(0x2EF0E0)
base 0x80284130

//One byte char hack
seek(0x306F4C+0x94)
lbu t0,0(t8)
seek(0x306F4C+0xA8)
lbu t9,0(t1)
seek(0x306F4C+0xD0)
lbu t3,0(t4)
seek(0x306F4C+0xEC)
lbu t7,0(t6)
seek(0x306F4C+0x10C)
lbu t0,0(t8)
seek(0x306F4C+0x12C)
lbu t2,0(t9)
seek(0x306F4C+0x14C)
lbu t6,0(t3)
seek(0x306F4C+0x16C)
lbu t8,0(t5)
seek(0x306F4C+0x190)
lbu a1,0(t1)
seek(0x306F4C+0x234)
addiu t5,t8,1
seek(0x306F4C+0x240)
lbu t1,0(t0)

seek(0x3068D0+0x18)
lbu t6,0(a0)
seek(0x3068D0+0x24)
lbu t7,0(a0)
seek(0x3068D0+0x68)
lbu t2,0(a0)
seek(0x3068D0+0x80)
lbu t3,0(a0)
seek(0x3068D0+0x9C)
lbu t5,0(a0)
seek(0x3068D0+0xB8)
lbu t7,0(a0)
seek(0x3068D0+0xD4)
lbu t9,0(a0)
seek(0x3068D0+0xF0)
lbu t1,0(a0)
seek(0x3068D0+0x10C)
lbu t3,0(a0)
seek(0x3068D0+0x124)
lbu t6,0(a0)
seek(0x3068D0+0x164)
lbu t6,1(a0)
seek(0x3068D0+0x218)
addiu a0,a0,1
lbu t4,0(a0)


//--Image Setup
seek(0x30A080)
gbcam_exit:
textEntryH("Exit")				//でる
gbcam_back:
textEntryH("Return")				//もどる
gbcam_bright:
textEntryH("Brighter Colors")			//あかるいぶぶんのいろ
gbcam_dark:
textEntryH("Darker Colors")			//くらいぶぶんのいろ
seek(0x30A1B0)
gbcam_lever:
textEntryH("Smooth")				//なめらかレバー

//Repoint
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


//--Selection
seek(0x32C870)
gbcam_select1:
textEntryH("Please select an option.")		//したからえらんでください
gbcam_select2:
textEntryH("Please select a picture.")		//よみこむしゃしんをえらんでください
seek(0x32C8C0)
dw (gbcam_select1)
seek(0x32C8D0)
dw (gbcam_select2)

//--Unused?
seek(0x32C8F0)
gbcam2_donoteject:
textEntryH("Please do not eject the disk.")	//ディスクをぬかないでください
gbcam2_prepsave:
textEntryH("Preparing to save...")		//セーブのじゅんびをしています
gbcam2_unreadfiles:
textEntryH("It includes files that cannot be used.")	//ここであつかえないファイルがふくまれます
gbcam2_shootsetup:
textEntryH("A Button: Shoot/B Button: Setup")	//Aボタン:さつえいBボタン:せってい
gbcam2_movieshot:
textEntryH("Picture taken.")			//さつえいしました
gbcam2_continue:
textEntryH("Press B Button to continue shooting.")	//Bボタンで さつえいをつづけます
gbcam2_readback:
textEntryH("A Button: Read/B Button: Back")	//Aボタン:よみこみBボタン:もどる
gbcam2_read:
textEntryH("File read.")			//よみこみました

//pointers
seek(0x32C9F8)
dw (gbcam2_donoteject), (gbcam2_prepsave)
dw (gbcam2_unreadfiles), (gbcam2_shootsetup), (gbcam2_movieshot), (gbcam2_continue)
dw (gbcam2_readback), (gbcam2_read)


//--Errors
//RAM 8029F210 - Error ID
seek(0x32CA20)
gbcam3_containerfull:
textEntryH("The container is full.")			//いれものがいっぱいです。
gbcam3_diskactionsuspended:
textEntryH("The disk has been ejected.\nAccess suspended.")	//ディスクがさされていません。\nしょりをちゅうだんします。
gbcam3_cantwritecontainer:
textEntryH("You cannot write to\nthis container.")	//このいれものにはかきこめません。
gbcam3_cantwritefile:
textEntryH("You cannot write this file.")		//このファイルにはかきこめません。
gbcam3_enterdisk:
textEntryH("The disk is full.")				//ディスクがいっぱいです。
gbcam3_filecantdelete:
textEntryH("You cannot delete this file.")		//このファイルをけすことはできません。
gbcam3_containercantdelete:
textEntryH("You cannot delete\nthis container.")		//このいれものをけすことはできません。
gbcam3_filecantmove:
textEntryH("You cannot move this file.")		//このファイルはいどうできません。
gbcam3_namealreadyexists:
textEntryH("This name already exists.")			//おなじなまえがすでにあります。
gbcam3_cantmakecontainer:
textEntryH("You cannot create a container.")		//これいじょういれものをつくれません。
gbcam3_diskerror:
textEntryH("Disk Error")				//ディスクのエラーです。
gbcam3_reread:
textEntryH("The disk has been read again\nbecause it has been replaced.")	//ディスクがこうかんされたので\nよみなおします。
gbcam3_namenotchanged:
textEntryH("The name was not changed.")			//なまえはへんこうされませんでした。
gbcam3_filenamenotchanged:
textEntryH("You cannot rename this file.")		//このファイルのなまえは\nへんこうできません。
gbcam3_containernamenotchanged:
textEntryH("You cannot rename\nthis container.")		//このいれもののなまえは\nへんこうできません。
gbcam3_filecantdeletewrite:
textEntryH("You cannot write\nor delete this file.")	//このさくひんは\nかいたりけしたりできません。
gbcam3_diskcantdeletewrite:
textEntryH("You cannot write\nor delete on this disk.")	//このディスクには\nかいたりけしたりできません。
gbcam3_cannotmovesamecontainer:
textEntryH("You cannot move\nin the same container.")	//おなじいれものにいどうはできません。
gbcam3_disknotinserted:
textEntryH("The disk has been ejected.\nPlease insert disk.")	//ディスクがはいっていません。\nディスクをいれてください。
gbcam3_cantusedisk:
textEntryH("This disk is unformatted.\nPlease insert the correct disk.")	//このディスクはフォーマット\nされていません。\nただしいディスクに\nいれかえてください。
gbcam3_insertdisk:
db 0x00FF						// \n
gbcam3_insertdisk2:
textEntryH("Please insert disk.")			//ディスクをいれてください。
gbcam3_cantusename:
textEntryH("You cannot use this name.")			//そのなまえはつかえません。
gbcam3_destroydata:
textEntryH("The contents of this disk\nhas been wiped.")	//このディスクはデータが はかいされて\nいます。
gbcam3_wrongdisk:
textEntryH("The wrong disk\nhas been inserted.")		//まちがったディスクがささっています。
gbcam3_correctdisk:
textEntryH("Please insert the correct disk.")		//ただしいディスクにいれかえてください。
gbcam3_nocontainer:
textEntryH("There are no containers.")			//いれものがありません。
gbcam3_no2container:
textEntryH("There are no more\nthan 2 containers.")	//2ついじょうのいれものがありません。
gbcam3_cantmovecontent:
textEntryH("You cannot move all the files.")		//なかみをすべていどうすることが\nできません。
gbcam3_container70files:
textEntryH("A container can contain\nup to 70 files.")	//1つのいれものには70こまで\nさくひんがはいります。
gbcam3_nofile:
textEntryH("This container is empty.")			//このいれものにはさくひんがありません。
gbcam3_cantremovecontent:
textEntryH("You cannot delete all the files.")		//なかみをすべてけすことができません。
gbcam3_fileloadfail:
textEntryH("You cannot load this file here.")		//このさくひんはここではよめません。
gbcam3_toolarge:
textEntryH("(This file is too big.)")			//(サイズが おおきすぎます。)
gbcam3_differenttype:
textEntryH("(The type is different.)")			//(しゅるいが ちがいます。)
gbcam3_filetypewrite:
textEntryH("You cannot write to this file,\nbecause it is of a different type.")	//ちがうしゅるいのファイルなので\nかきこめません。
gbcam3_containercantdeletewrite:
textEntryH("You cannot write\nor delete this container.")	//このいれものは\nかいたりけしたりできません。
gbcam3_containercantdeletefiles:
textEntryH("You cannot delete some of\nthe files in this container.")	//このいれもののなかには\nさくじょできないさくひんが\nあります。
gbcam3_error49:
textEntryH("Please do not eject the disk\nwhile the access lamp is blinking.")	//アクセスランプてんめつちゅうに\nディスクをぬかないでください。
gbcam3_error2:
textEntryH("Please reinsert the disk.")			//ディスクを さしこみなおしてください。
gbcam3_readonly:
textEntryH("This is a read-only disk.\nIt is not available.")	//よみこみせんようディスクです。\nここでは りようできません。
gbcam3_differentformat:
textEntryH("This disk is of\na different format.")	//このディスクはフォーマットが\nちがいます。
gbcam3_movefull:
							//いどうさきのいれものが\nいっぱいになりました。
gbcam3_copyfull:
textEntryH("The container destination\nis full.")	//コピーさきのいれものが\nいっぱいになりました。
gbcam3_nophoto:
textEntryH("No pictures have been saved.")		//セーブされているしゃしんはありません。
gbcam3_cantinitdisk:
textEntryH("This disk cannot be initialized.")		//このディスクはしょきかできません。
gbcam3_errornumber:
textEntryH("Error ")					//エラーばんごう
gbcam3_readmanual:
textEntryH("For additional details, please\nread the instruction booklet.")	//くわしくはとりあつかいせつめいしょを\nおよみください。
gbcam3_thisdiskerror:
textEntryH("This is a disk error.")			//ディスクエラーです。

gbcam3_transpaknotinserted:
textEntryH("The N64 Transfer Pak\nis not inserted.")	//64GBパックがささっていません。
gbcam3_gbcameranotinserted:
textEntryH("The Game Boy Camera is\nnot inserted into\nthe N64 Transfer Pak.")	//64GBパックにポケットカメラが\nささっていません。
gbcam3_gbotherinserted:
textEntryH("A GB Game Pak other than\nthe Game Boy Camera\nhas been inserted into\nthe N64 Transfer Pak.")	//64GBパックに\nポケットカメラいがいの\nカートリッジがささっています。\n
gbcam3_otherpakinserted:
textEntryH("Something other than the\nN64 Transfer Pak has been\ninserted into the controller.\nPlease replace it with\nthe N64 Transfer Pak.")	//コントローラに64GBパックいがいの\nものがささっています。\n64GBパックにさしかえてください。
gbcam3_transpakproper:
textEntryH("The N64 Transfer Pak is\nnot properly inserted.\nPlease reinsert the\nN64 Transfer Pak again.")	//64GBパックがただしく\nせつぞくされていません。\nもういちど64GBパックを\nせつぞくしなおしてください。
gbcam3_gbcameranotinserted2:
textEntryH("The Game Boy Camera\nis not inserted.")	//GBカメラカートリッジが\nささっていません

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

seek(0x300C42)
dh (gbcam3_errornumber)
seek(0x300BF2)
dh (gbcam3_thisdiskerror)
seek(0x300C1E)
dh (gbcam3_thisdiskerror)


//--Menu (and prototype leftovers)
seek(0x32D650)
camera_saved:
textEntryH("Saved Photos")		//しゃしんよみこみ
camera_take:
textEntryH("Take a Photo")		//しゃしんさつえい
//textEntryH("Fixed Brightness")	//あかるさこてい
//textEntryH("Smooth")			//なめらかにする
//textEntryH("Shoot")			//さつえい
//textEntryH("Return")			//もどる
//textEntryH("Reset")			//リセット
//textEntryH("Negative")		//ネガ
//textEntryH("Solid")			//ベタ
//textEntryH("Color")			//カラー
//textEntryH("Mosaic")			//モザイク
camera_brightness:
textEntryH("Bright")			//あかるさ
camera_contrast:
textEntryH("Contrast")			//コントラスト
//textEntryH("Color Reset")		//カラーセレクト
//textEntryH("Photo Size:")		//しゃしんサイズ:
//textEntryH("Read")			//よみこみ
//textEntryH("OK")			//OK
//textEntryH("Change Color")		//いろがえ
//textEntryH("Gradation")		//グラデーション
//textEntryH("Put Photo in Page")	//まいはいっています

seek(0x30283A)
dh (camera_saved)
seek(0x302852)
dh (camera_take)
seek(0x30285A)
dh $00A8
seek(0x30531E)
dh (camera_brightness)
seek(0x30534E)
dh (camera_contrast)
