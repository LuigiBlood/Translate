//Game Boy Camera
//Code Overlay (Disk 0x8C8840 / RAM 80280000)
//Yay1 Overlay (Disk 0x8E7E48 / RAM 80507360 / Base 0A000000)
outputGame()

//One byte char hack
seek(0x8DFA00)
lbu t0,0(t8)
seek(0x8DFA00 + 0x14)
lbu t9,0(t1)
seek(0x8DFA00 + 0x3C)
lbu t3,0(t4)
seek(0x8DFA00 + 0x58)
lbu t7,0(t6)
seek(0x8DFA00 + 0x78)
lbu t0,0(t8)
seek(0x8DFA00 + 0x98)
lbu t2,0(t9)
seek(0x8DFA00 + 0xB8)
lbu t6,0(t3)
seek(0x8DFA00 + 0xD8)
lbu t8,0(t5)
seek(0x8DFA00 + 0xFC)
lbu a1,0(t1)
seek(0x8DFA00 + 0x1A0)
addiu t5,t8,1
seek(0x8DFA00 + 0x1AC)
lbu t1,0(t0)

seek(0x8DF2F0 + 0x18)
lbu t6,0(a0)
seek(0x8DF2F0 + 0x24)
lbu t7,0(a0)
seek(0x8DF2F0 + 0x68)
lbu t2,0(a0)
seek(0x8DF2F0 + 0x80)
lbu t3,0(a0)
seek(0x8DF2F0 + 0x9C)
lbu t5,0(a0)
seek(0x8DF2F0 + 0xB8)
lbu t7,0(a0)
seek(0x8DF2F0 + 0xD4)
lbu t9,0(a0)
seek(0x8DF2F0 + 0xF0)
lbu t1,0(a0)
seek(0x8DF2F0 + 0x10C)
lbu t3,0(a0)
seek(0x8DF2F0 + 0x124)
lbu t6,0(a0)
seek(0x8DF2F0 + 0x164)
lbu t6,1(a0)
seek(0x8DF2F0 + 0x218)
addiu a0,a0,1
lbu t4,0(a0)


//--Image Setup
seek(0x8E2900)
base 0x8029A0C0
gbcam_exit:
textEntryH0("Exit")				//でる
gbcam_back:
textEntryH0("Return")				//もどる
gbcam_bright:
textEntryH0("Brighter Colors")			//あかるいぶぶんのいろ
gbcam_dark:
textEntryH0("Darker Colors")			//くらいぶぶんのいろ
gbcam_lever:
textEntryH0("Smooth")				//なめらかレバー

//Repoint
seek(0x8D68EA); dh (gbcam_exit)
seek(0x8D6942); dh (gbcam_exit)
seek(0x8D699A); dh (gbcam_exit)
seek(0x8D69F6); dh (gbcam_exit)
seek(0x8D6A3E); dh (gbcam_back)
seek(0x8D6A86); dh (gbcam_bright)
seek(0x8D6ACE); dh (gbcam_dark)
seek(0x8D6B4A); dh (gbcam_lever)
seek(0x8D6BA6); dh (gbcam_lever)


outputFile("./Temp/8E7E48.CCC7.GBCam.yay1.bin")
//--Selection
seekFile(0x1F090)
gbcam_select1:
textEntryH0("Please select an option.")		//したからえらんでください
gbcam_select2:
textEntryH0("Please select a picture.")		//よみこむしゃしんをえらんでください

seekFile(0x1F0E0); dw (gbcam_select1)
seekFile(0x1F0F0); dw (gbcam_select2)

//--Unused?
seekFile(0x1F110)
gbcam2_donoteject:
textEntryH0("Please do not eject the disk.")	//ディスクをぬかないでください
gbcam2_prepsave:
textEntryH0("Preparing to save...")		//セーブのじゅんびをしています
gbcam2_unreadfiles:
textEntryH0("It includes files that cannot be used.")	//ここであつかえないファイルがふくまれます
gbcam2_shootsetup:
textEntryH0("A Button: Shoot/B Button: Setup")	//Aボタン:さつえいBボタン:せってい
gbcam2_movieshot:
textEntryH0("Picture taken.")			//さつえいしました
gbcam2_continue:
textEntryH0("Press B Button to continue shooting.")	//Bボタンで さつえいをつづけます
gbcam2_readback:
textEntryH0("A Button: Read/B Button: Back")	//Aボタン:よみこみBボタン:もどる
gbcam2_read:
textEntryH0("File read.")			//よみこみました

//pointers
seekFile(0x1F218)
dw (gbcam2_donoteject), (gbcam2_prepsave)
dw (gbcam2_unreadfiles), (gbcam2_shootsetup), (gbcam2_movieshot), (gbcam2_continue)
dw (gbcam2_readback), (gbcam2_read)


//--Errors
//RAM 8029A200 - Error ID
seekFile(0x1F240)
gbcam3_containerfull:
textEntryH0("The container is full.")			//いれものがいっぱいです。
gbcam3_diskactionsuspended:
textEntryH0("The disk has been ejected.\nAccess suspended.")	//ディスクがさされていません。\nしょりをちゅうだんします。
gbcam3_cantwritecontainer:
textEntryH0("You cannot write to\nthis container.")	//このいれものにはかきこめません。
gbcam3_cantwritefile:
textEntryH0("You cannot write this file.")		//このファイルにはかきこめません。
gbcam3_enterdisk:
textEntryH0("The disk is full.")				//ディスクがいっぱいです。
gbcam3_filecantdelete:
textEntryH0("You cannot delete this file.")		//このファイルをけすことはできません。
gbcam3_containercantdelete:
textEntryH0("You cannot delete\nthis container.")		//このいれものをけすことはできません。
gbcam3_filecantmove:
textEntryH0("You cannot move this file.")		//このファイルはいどうできません。
gbcam3_namealreadyexists:
textEntryH0("This name already exists.")			//おなじなまえがすでにあります。
gbcam3_cantmakecontainer:
textEntryH0("You cannot create a container.")		//これいじょういれものをつくれません。
gbcam3_diskerror:
textEntryH0("Disk Error")				//ディスクのエラーです。
gbcam3_reread:
textEntryH0("The disk has been read again\nbecause it has been replaced.")	//ディスクがこうかんされたので\nよみなおします。
gbcam3_namenotchanged:
textEntryH0("The name was not changed.")			//なまえはへんこうされませんでした。
gbcam3_filenamenotchanged:
textEntryH0("You cannot rename this file.")		//このファイルのなまえは\nへんこうできません。
gbcam3_containernamenotchanged:
textEntryH0("You cannot rename\nthis container.")		//このいれもののなまえは\nへんこうできません。
gbcam3_filecantdeletewrite:
textEntryH0("You cannot write\nor delete this file.")	//このさくひんは\nかいたりけしたりできません。
gbcam3_diskcantdeletewrite:
textEntryH0("You cannot write\nor delete on this disk.")	//このディスクには\nかいたりけしたりできません。
gbcam3_cannotmovesamecontainer:
textEntryH0("You cannot move\nin the same container.")	//おなじいれものにいどうはできません。
gbcam3_disknotinserted:
textEntryH0("The disk has been ejected.\nPlease insert disk.")	//ディスクがはいっていません。\nディスクをいれてください。
gbcam3_cantusedisk:
textEntryH0("This disk is unformatted.\nPlease insert the correct disk.")	//このディスクはフォーマット\nされていません。\nただしいディスクに\nいれかえてください。
gbcam3_insertdisk:
db 0x00FF						// \n
gbcam3_insertdisk2:
textEntryH0("Please insert disk.")			//ディスクをいれてください。
gbcam3_cantusename:
textEntryH0("You cannot use this name.")			//そのなまえはつかえません。
gbcam3_destroydata:
textEntryH0("The contents of this disk\nhas been wiped.")	//このディスクはデータが はかいされて\nいます。
gbcam3_wrongdisk:
textEntryH0("The wrong disk\nhas been inserted.")		//まちがったディスクがささっています。
gbcam3_correctdisk:
textEntryH0("Please insert the correct disk.")		//ただしいディスクにいれかえてください。
gbcam3_nocontainer:
textEntryH0("There are no containers.")			//いれものがありません。
gbcam3_no2container:
textEntryH0("There are no more\nthan 2 containers.")	//2ついじょうのいれものがありません。
gbcam3_cantmovecontent:
textEntryH0("You cannot move all the files.")		//なかみをすべていどうすることが\nできません。
gbcam3_container70files:
textEntryH0("A container can contain\nup to 70 files.")	//1つのいれものには70こまで\nさくひんがはいります。
gbcam3_nofile:
textEntryH0("This container is empty.")			//このいれものにはさくひんがありません。
gbcam3_cantremovecontent:
textEntryH0("You cannot delete all the files.")		//なかみをすべてけすことができません。
gbcam3_fileloadfail:
textEntryH0("You cannot load this file here.")		//このさくひんはここではよめません。
gbcam3_toolarge:
textEntryH0("(This file is too big.)")			//(サイズが おおきすぎます。)
gbcam3_differenttype:
textEntryH0("(The type is different.)")			//(しゅるいが ちがいます。)
gbcam3_filetypewrite:
textEntryH0("You cannot write to this file,\nbecause it is of a different type.")	//ちがうしゅるいのファイルなので\nかきこめません。
gbcam3_containercantdeletewrite:
textEntryH0("You cannot write\nor delete this container.")	//このいれものは\nかいたりけしたりできません。
gbcam3_containercantdeletefiles:
textEntryH0("You cannot delete some of\nthe files in this container.")	//このいれもののなかには\nさくじょできないさくひんが\nあります。
gbcam3_error49:
textEntryH0("Please do not eject the disk\nwhile the access lamp is blinking.")	//アクセスランプてんめつちゅうに\nディスクをぬかないでください。
gbcam3_error2:
textEntryH0("Please reinsert the disk.")			//ディスクを さしこみなおしてください。
gbcam3_readonly:
textEntryH0("This is a read-only disk.\nIt is not available.")	//よみこみせんようディスクです。\nここでは りようできません。
gbcam3_differentformat:
textEntryH0("This disk is of\na different format.")	//このディスクはフォーマットが\nちがいます。
gbcam3_movefull:
							//いどうさきのいれものが\nいっぱいになりました。
gbcam3_copyfull:
textEntryH0("The container destination\nis full.")	//コピーさきのいれものが\nいっぱいになりました。
gbcam3_nophoto:
textEntryH0("No pictures have been saved.")		//セーブされているしゃしんはありません。
gbcam3_cantinitdisk:
textEntryH0("This disk cannot be initialized.")		//このディスクはしょきかできません。
gbcam3_errornumber:
textEntryH0("Error ")					//エラーばんごう
gbcam3_readmanual:
textEntryH0("For additional details, please\nread the instruction booklet.")	//くわしくはとりあつかいせつめいしょを\nおよみください。
gbcam3_thisdiskerror:
textEntryH0("This is a disk error.")			//ディスクエラーです。

gbcam3_transpaknotinserted:
textEntryH0("The N64 Transfer Pak\nis not inserted.")	//64GBパックがささっていません。
gbcam3_gbcameranotinserted:
textEntryH0("The Game Boy Camera is\nnot inserted into\nthe N64 Transfer Pak.")	//64GBパックにポケットカメラが\nささっていません。
gbcam3_gbotherinserted:
textEntryH0("A GB Game Pak other than\nthe Game Boy Camera\nhas been inserted into\nthe N64 Transfer Pak.")	//64GBパックに\nポケットカメラいがいの\nカートリッジがささっています。\n
gbcam3_otherpakinserted:
textEntryH0("Something other than the\nN64 Transfer Pak has been\ninserted into the controller.\nPlease replace it with\nthe N64 Transfer Pak.")	//コントローラに64GBパックいがいの\nものがささっています。\n64GBパックにさしかえてください。
gbcam3_transpakproper:
textEntryH0("The N64 Transfer Pak is\nnot properly inserted.\nPlease reinsert the\nN64 Transfer Pak again.")	//64GBパックがただしく\nせつぞくされていません。\nもういちど64GBパックを\nせつぞくしなおしてください。
gbcam3_gbcameranotinserted2:
textEntryH0("The Game Boy Camera\nis not inserted.")	//GBカメラカートリッジが\nささっていません

//pointers
seekFile(0x1FC10)
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

//--Menu (and prototype leftovers)
seekFile(0x1FEA0)
camera_saved:
textEntryH0("Saved Photos")		//しゃしんよみこみ
camera_take:
textEntryH0("Take a Photo")		//しゃしんさつえい
//textEntryH0("Fixed Brightness")	//あかるさこてい
//textEntryH0("Smooth")			//なめらかにする
//textEntryH0("Shoot")			//さつえい
//textEntryH0("Return")			//もどる
//textEntryH0("Reset")			//リセット
//textEntryH0("Negative")		//ネガ
//textEntryH0("Solid")			//ベタ
//textEntryH0("Color")			//カラー
//textEntryH0("Mosaic")			//モザイク
camera_brightness:
textEntryH0("Bright")			//あかるさ
camera_contrast:
textEntryH0("Contrast")			//コントラスト
//textEntryH0("Color Reset")		//カラーセレクト
//textEntryH0("Photo Size:")		//しゃしんサイズ:
//textEntryH0("Read")			//よみこみ
//textEntryH0("OK")			//OK
//textEntryH0("Change Color")		//いろがえ
//textEntryH0("Gradation")		//グラデーション
//textEntryH0("Put Photo in Page")	//まいはいっています


outputGame()

seek(0x8D94FE); dh (gbcam3_thisdiskerror)
seek(0x8D958E); dh (gbcam3_errornumber)
seek(0x8D954E); dh (gbcam3_thisdiskerror)

seek(0x8DB26A); dh (camera_saved)
seek(0x8DB282); dh (camera_take)
seek(0x8DDD3E); dh (camera_brightness)
seek(0x8DDD6E); dh (camera_contrast)
