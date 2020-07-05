//Save & Load (Overlay Disk 0x268400 / RAM 80284130 / Size 0x84F20)
//Disk 0x2A54E0 / RAM 802C1210 - Text Rendering
//Disk 0x2A4E00 / RAM 802C0B30 - Text Size Calc

seek(0x268400)
base 0x80284130

//1 byte Text Hack
seek(0x2A54E0+0xB8)
lbu t5,0(t3)
seek(0x2A54E0+0xCC)
lbu t4,0(t6)
seek(0x2A54E0+0xF4)
lbu t8,0(t9)
seek(0x2A54E0+0x110)
lbu t2,0(t1)
seek(0x2A54E0+0x130)
lbu t5,0(t3)
seek(0x2A54E0+0x150)
lbu t7,0(t4)
seek(0x2A54E0+0x170)
lbu t1,0(t8)
seek(0x2A54E0+0x190)
lbu t3,0(t0)
seek(0x2A54E0+0x1B4)
lbu a1,0(t6)
seek(0x2A54E0+0x258)
addiu t0,t3,1
seek(0x2A54E0+0x264)
lbu t6,0(t5)

seek(0x2A4E00+0x18)
lbu t6,0(a0)
seek(0x2A4E00+0x24)
lbu t7,0(a0)
seek(0x2A4E00+0x68)
lbu t2,0(a0)
seek(0x2A4E00+0x80)
lbu t3,0(a0)
seek(0x2A4E00+0x9C)
lbu t5,0(a0)
seek(0x2A4E00+0xB8)
lbu t7,0(a0)
seek(0x2A4E00+0xD4)
lbu t9,0(a0)
seek(0x2A4E00+0xF0)
lbu t1,0(a0)
seek(0x2A4E00+0x10C)
lbu t3,0(a0)
seek(0x2A4E00+0x124)
lbu t6,0(a0)
seek(0x2A4E00+0x164)
lbu t6,1(a0)
seek(0x2A4E00+0x218)
addiu a0,a0,1
lbu t4,0(a0)


//--Menus (Disk 0x2AAAD0 / RAM 802C6800)
seek(0x2AAAD0)
save1_1:
textEntryH("Exit")			//でる
save1_2:
textEntryH("Save")			//さくひんセーブ
save1_3:
textEntryH("Load")			//さくひんロード
save1_4:
textEntryH("Rename")			//なまえへんこう
save1_5:
textEntryH("Delete")			//さくひんのさくじょ
save1_6:
textEntryH("Move/Copy")			//さくひんのいどう・コピー
save1_7:
textEntryH("Create Container")		//いれものさくせい
save1_8:
textEntryH("Change Disk")		//ディスクのいれかえ

save1_9:
textEntryH("Hiragana")			//ひらがな
save1_10:
textEntryH("Katakana")			//カタカナ
save1_11:
textEntryH("AaBbCc")			//えいすう
save1_12:
textEntryH("Kanji/Symbols")		//かんじ/きごう
save1_13:
textEntryH("All")			//ひらがな/カタカナ/えいすう
save1_14:
textEntryH("Space")			//くうはく
save1_15:
textEntryH("Left")			//もどる
save1_16:
textEntryH("Right")			//すすむ
save1_17:
textEntryH("Erase")			//1 もじけす
save1_18:
textEntryH("Erase All")			//すべてけす
save1_19:
textEntryH("Undo")			//やりなおし
save1_20:
textEntryH("Done")			//けってい
save1_21:
textEntryH("Back")			//もどる
save1_22:
textEntryH("Next")			//ページおくり

seek(0x2AAC1C)
textEntrySkip(16); dw (save1_1)
textEntrySkip(16); dw (save1_2)
textEntrySkip(16); dw (save1_3)
textEntrySkip(16); dw (save1_7)
textEntrySkip(16); dw (save1_4)
textEntrySkip(16); dw (save1_5)
textEntrySkip(16); dw (save1_6)
textEntrySkip(16); dw (save1_8)

textEntrySkip(20)
textEntrySkip(16); dw (save1_21)

textEntrySkip(20)
textEntrySkip(16); dw (save1_9)
textEntrySkip(16); dw (save1_10)
textEntrySkip(16); dw (save1_11)
textEntrySkip(16); dw (save1_12)
textEntrySkip(16); dw (save1_13)
textEntrySkip(16); dw (save1_14)
textEntrySkip(16); dw (save1_15)
textEntrySkip(16); dw (save1_16)
textEntrySkip(16); dw (save1_17)
textEntrySkip(16); dw (save1_18)
textEntrySkip(16); dw (save1_19)
textEntrySkip(16); dw (save1_20)


//--Kanji/Symbol Page Number (Disk 0x2AADFC / RAM 802C6B2C)
seek(0x2AADFC)
textEntryH("1/1")			//1/1ページ

seek(0x28FD28)
sb t1,0(t2)
seek(0x28FD40)
sb t4,2(t5)


//--New Save (Disk 0x2AAFE8 / RAM 802C6C18)
seek(0x2AAFE8)
textEntryH("New Save")			//あたらしくセーブする


//--Move / Copy (Disk 0x2AB050 / RAM 802C6D80)
seek(0x2AB050)
textEntryH("Move")			//いどう
seek(0x2AB058)
textEntryH("Copy")			//コピー


//--Kind Menuing (Disk 0x2E00C0 / RAM 802FBDF0)
seek(0x2E00C0)
save2_1:
//RAM 802FBDF0 - テスト
textEntryH("Test")
save2_2:
//RAM 802FBDF8 - ひだりから えらんでください
textEntryH("Please choose from the left menu.")

save2_3:
//RAM 802FBE18 - このさくひんをセーブするいれものを えらんでください
textEntryH("Please select the container to save to.")
save2_4:
//RAM 802FBE50 - このいれものは いっぱいです
textEntryH("This container is full.")
save2_5:
//RAM 802FBE70 - このさくひんを あたらしく セーブしますか?
textEntryH("Do you want to save this file as new?")
save2_6:
//RAM 802FBEA0 - (うわがきするときは みぎから えらんでください)
textEntryH("(Select a file on the right side to overwrite)")
save2_7:
//RAM 802FBED4 - ここにセーブしますか?
textEntryH("Do you want to overwrite this file?")
save2_8:
//RAM 802FBEEC - まえのさくひんが きえますが いいですか?
textEntryH("Are you sure?\nThis file will be overwritten.")
save2_9:
//RAM 802FBF18 - あたらしくセーブすることは できません
textEntryH("You cannot save a new file.")
save2_10:
//RAM 802FBF40 - セーブしています…
textEntryH("Saving...")
save2_11:
//RAM 802FBF54 - (あっしゅくに じかんが かかります)
textEntryH("(The compression will take a moment.)")
save2_12:
//RAM 802FBF7C - さくひんに なまえを つけますか?
textEntryH("Do you want to give this file a name?")
save2_13:
//RAM 802FBFA0 - (つけないときは したのなまえになります)
textEntryH("(The name below will be used if not.)")
save2_14:
//RAM 802FBFCC - なまえを つけています…
textEntryH("Saving Name...")

save2_15:
//RAM 802FBFE8 - いれものが ありません
textEntryH("There is no container.")
save2_16:
//RAM 802FC000 - ロードするさくひんの いれものを えらんでください
textEntryH("Please select the container to load from.")
save2_17:
//RAM 802FC034 - ロードするさくひんを えらんでください
textEntryH("Please select the file to load.")
save2_18:
//RAM 802FC05C - このさくひんを ロードしますか?
textEntryH("Do you want to load this file?")
save2_19:
//RAM 802FC080 - (ちがうときは みぎからえらびなおしてください)
textEntryH("(If not, select another file on the right side.)")
save2_20:
//RAM 802FC0B4 - このいれものには さくひんが はいっていません
textEntryH("This container is empty.")
save2_21:
//RAM 802FC0E4 - げんざいのさくひんは セーブされていませんが\nいいですか?
textEntryH("The current creation will be lost.\nAre you sure?")
save2_22:
//RAM 802FC120 - ロードしています…
textEntryH("Loading...")

save2_23:
//RAM 802FC134 - どちらを さくじょ しますか?
textEntryH("What do you want to delete?")
save2_24:
//RAM 802FC154 - なかみを さくじょするいれものを えらんでください
textEntryH("Please select the container\nyou want to delete the contents from.")
save2_25:
//RAM 802FC188 - このいれものの なかみを さくじょ しますか?
textEntryH("Do you want to delete the contents\nof this container?")
save2_26:
//RAM 802FC1B8 - さくじょする さくひんのいれものを えらんでください
textEntryH("Please select the container that contains\nthe file you want to delete.")
save2_27:
//RAM 802FC1F0 - さくじょする さくひんを えらんでください
textEntryH("Please select the file you want to delete.")
save2_28:
//RAM 802FC21C - このさくひんを さくじょ しますか?
textEntryH("Are you sure you want to delete this file?")
save2_29:
//RAM 802FC244 - さくじょ しています…
textEntryH("Deleting...")

save2_30:
//RAM 802FC25C - どちらのなまえを へんこう しますか?
textEntryH("What do you want to rename?")
save2_31:
//RAM 802FC284 - なまえを へんこうするいれものを えらんでください
textEntryH("Please select the container\nyou want to rename.")
save2_32:
//RAM 802FC2B8 - このいれものの なまえを へんこうしますか?
textEntryH("Do you want to rename this container?")
save2_33:
//RAM 802FC2E8 - なまえを へんこうするさくひんの いれものを\nえらんでください
textEntryH("Please select the container that contains\nthe file you want to rename.")
save2_34:
//RAM 802FC328 - なまえを へんこうするさくひんを えらんでください
textEntryH("Please select the file you want to rename.")
save2_35:
//RAM 802FC35C - このさくひんの なまえを へんこう しますか?
textEntryH("Do you want to rename this file?")
save2_36:
//RAM 802FC38C - なまえを へんこう しています…
textEntryH("Renaming...")

save2_37:
//RAM 802FC3B0 - したから えらんでください
textEntryH("What do you want to do?")
save2_38:
//RAM 802FC3CC - どちらを いどう しますか?
textEntryH("What do you want to move?")
save2_39:
//RAM 802FC3EC - なかみを いどうするいれものを えらんでください
textEntryH("Please select the container\nto move all its contents from.")
save2_40:
//RAM 802FC420 - いどうするさきの いれものを えらんでください
textEntryH("Please select the destination container\nto move files to.")
save2_41:
//RAM 802FC450 - さくひんを すべて いどうしても いいですか?
textEntryH("Do you want to move all its contents?")
save2_42:
//RAM 802FC480 - いどうするさくひんの いれものを えらんでください
textEntryH("Please select the container\nto move a file from.")
save2_43:
//RAM 802FC4B4 - いどうするさくひんを えらんでください
textEntryH("Please select a file to move.")
save2_44:
//RAM 802FC4DC - このさくひんを いどう しますか?
textEntryH("Do you want to move this file?")
save2_45:
//RAM 802FC500 - いどう しています…
textEntryH("Moving...")
save2_46:
//RAM 802FC518 - どちらを コピーしますか?
textEntryH("What do you want to copy?")
save2_47:
//RAM 802FC534 - コピーするいれものを えらんでください
textEntryH("Please select the container to copy from.")
save2_48:
//RAM 802FC55C - コピーするさきの いれものを えらんでください
textEntryH("Please select the destination\ncontainer to copy files to.")
save2_49:
//RAM 802FC58C - さくひんを すべて コピーしますか?
textEntryH("Do you want to copy all its contents?")
save2_50:
//RAM 802FC5B4 - コピーするさくひんの いれものを えらんでください
textEntryH("Please select the container\nto copy a file from.")
save2_51:
//RAM 802FC5E8 - コピーするさくひんを えらんでください
textEntryH("Please select a file to copy.")
save2_52:
//RAM 802FC610 - このさくひんを コピーしますか?
textEntryH("Do you want to copy this file?")
save2_53:
//RAM 802FC634 - コピーしています…
textEntryH("Copying...")

save2_54:
//RAM 802FC648 - いれものをさくせいしています…
textEntryH("Creating new container...")
save2_55:
//RAM 802FC668 - このいれものにあたらしいなまえをつけますか?
textEntryH("Do you want to name this new container?")
save2_56:
//RAM 802FC698 - どちらのならびかえをしますか?
textEntryH("What do you want to do?")
save2_57:
//RAM 802FC6B8 - どうならびかえますか?
textEntryH("What do you want to sort?")
save2_58:
//RAM 802FC6D0 - 2つのいれもののばしょをいれかえます
textEntryH("Swap the locations of 2 containers.")
save2_59:
//RAM 802FC6F8 - 1つめのいれものをえらんでください
textEntryH("Please select the first container.")
save2_60:
//RAM 802FC71C - 2つめのいれものをえらんでください
textEntryH("Please select the second container.")
save2_61:
//RAM 802FC740 - 2つのいれもののばしょをいれかえていいですか?
textEntryH("Do you want to swap the location\nof these two containers?")
save2_62:
//RAM 802FC770 - ファイルじょうほうをよみなおしています…
textEntryH("Reading the file information again...")
save2_63:
//RAM 802FC79C - ディスクの データりょういきを しょきか します\nすべてのさくひんが きえてしまいますが いいですか?
textEntryH("The contents of this disk will be gone.\nAre you sure you want to initialize the disk?")
save2_64:
//RAM 802FC804 - いれものを あたらしく さくせいしますか?
textEntryH("Do you want to create a new container?")

save2_65:
//RAM 802FC830 - ディスクのこうかんをおこないます
textEntryH("Please change the disk.")
save2_66:
//RAM 802FC854 - ディスクをぬいてください
textEntryH("Please eject the disk.")
save2_67:
//RAM 802FC870 - ディスクをいれてください
textEntryH("Please insert the disk.")
save2_68:
//RAM 802FC88C - ちがうディスクがはいっています
textEntryH("A different disk is inserted.")

save2_69:
//RAM 802FC8AC - ★ 64DD ★
textEntryH2($00BB, "64DD")
save2_70:
//RAM 802FC8C0 - ● セーブ ●
textEntryH2($00B7, "Save")
save2_71:
//RAM 802FC8D0 - ● ロード ●
textEntryH2($00B7, "Load")
save2_72:
//RAM 802FC8E0 - ● なまえへんこう ●
textEntryH2($00B7, "Rename")
save2_73:
//RAM 802FC8F8 - ● さくじょ ●
textEntryH2($00B7, "Delete")
save2_74:
//RAM 802FC90C - ● そのたのメニュー ●
textEntryH2($00B7, "Menu")
save2_75:
//RAM 802FC928 - ● ディスクの いれかえ ●
textEntryH2($00B7, "Disk Change")
save2_76:
//RAM 802FC948 - ● いどう ●
textEntryH2($00B7, "Move")
save2_77:
//RAM 802FC958 - ● コピー ●
textEntryH2($00B7, "Copy")
save2_78:
//RAM 802FC968 - ● ならべかえ モード ●
textEntryH2($00B7, "Sort")
save2_79:
//RAM 802FC984 - ● いれものさくせい モード ●
textEntryH2($00B7, "Create Container")

seek(0x2E0C78)
textEntrySkip(8); dw (save2_2)
textEntrySkip(8); dw (save2_69)
textEntrySkip(8); dw (save2_70)
textEntrySkip(8); dw (save2_71)
textEntrySkip(8); dw (save2_72)
textEntrySkip(8); dw (save2_73)
textEntrySkip(8); dw (save2_74)
textEntrySkip(8); dw (save2_75)
textEntrySkip(8); dw (save2_76)
textEntrySkip(8); dw (save2_77)
textEntrySkip(8); dw (save2_3)
textEntrySkip(8); dw (save2_4)
textEntrySkip(8); dw (save2_5)
textEntrySkip(8); dw (save2_5)
textEntrySkip(8); dw (save2_6)
textEntrySkip(8); dw (save2_7)
textEntrySkip(8); dw (save2_8)
textEntrySkip(8); dw (save2_9)
textEntrySkip(8); dw (save2_10)
textEntrySkip(8); dw (save2_10)
textEntrySkip(8); dw (save2_11)
textEntrySkip(8); dw (save2_12)
textEntrySkip(8); dw (save2_13)
textEntrySkip(8); dw (save2_14)
textEntrySkip(8); dw (save2_15)
textEntrySkip(8); dw (save2_16)
textEntrySkip(8); dw (save2_17)
textEntrySkip(8); dw (save2_18)
textEntrySkip(8); dw (save2_19)
textEntrySkip(8); dw (save2_20)
textEntrySkip(8); dw (save2_21)
textEntrySkip(8); dw (save2_22)
textEntrySkip(8); dw (save2_23)
textEntrySkip(8); dw (save2_24)
textEntrySkip(8); dw (save2_25)
textEntrySkip(8); dw (save2_26)
textEntrySkip(8); dw (save2_27)
textEntrySkip(8); dw (save2_28)
textEntrySkip(8); dw (save2_29)
textEntrySkip(8); dw (save2_30)
textEntrySkip(8); dw (save2_31)
textEntrySkip(8); dw (save2_32)
textEntrySkip(8); dw (save2_33)
textEntrySkip(8); dw (save2_34)
textEntrySkip(8); dw (save2_35)
textEntrySkip(8); dw (save2_36)
textEntrySkip(8); dw (save2_37)
textEntrySkip(8); dw (save2_38)
textEntrySkip(8); dw (save2_39)
textEntrySkip(8); dw (save2_40)
textEntrySkip(8); dw (save2_41)
textEntrySkip(8); dw (save2_42)
textEntrySkip(8); dw (save2_43)
textEntrySkip(8); dw (save2_44)
textEntrySkip(8); dw (save2_45)
textEntrySkip(8); dw (save2_46)
textEntrySkip(8); dw (save2_47)
textEntrySkip(8); dw (save2_48)
textEntrySkip(8); dw (save2_49)
textEntrySkip(8); dw (save2_50)
textEntrySkip(8); dw (save2_51)
textEntrySkip(8); dw (save2_52)
textEntrySkip(8); dw (save2_53)
textEntrySkip(8); dw (save2_63)


//--Bottom Window Text (Disk 0x2E1110 / RAM 802FCE40)
//Text ID RAM 802C3CEC
seek(0x2E1110)
save3_1:
textEntryH("Please do not eject the disk.")	//ディスクを ぬかないでください
save3_2:
textEntryH("Preparing to save...")		//セーブのじゅんびをしています
save3_3:
textEntryH("Some files cannot be used here.")	//ここであつかえないファイルがふくまれますも

seek(0x2E1180)
dw (save3_1),(save3_2),(save3_3)


//--UI and Error Text (Disk 0x2E1190 / RAM 802FCEC0)
//UI ID / RAM 802C3D34 (byte)
//Error ID / RAM 802C3D40
seek(0x2E1190)
save4_1:
//RAM 802FCEC0 - しようりょう: 222 Mバイト
textEntryH("Used Space: 222 MB")
save4_2:
//RAM 802FCEE4 - さくせいがめんに ひょうじ
textEntryH("Current creation")
save4_3:
//RAM 802FCF00 - されている さくひん
textEntryH(" ")
save4_4:
//RAM 802FCF18 - ディスクから
textEntryH("from Disk")
save4_5:
//RAM 802FCF28 - 64GBパックから
textEntryH("from Transfer Pak")
save4_6:
//RAM 802FCF3C - よみこんださくひん
textEntryH("Creation loaded")
save4_7:
//RAM 802FCF50 - さくひんは
textEntryH("File is")
save4_8:
//RAM 802FCF5C - ロードされていません
textEntryH("not loaded")
save4_9:
//RAM 802FCF74 - さくせいちゅうのさくひん
textEntryH("Current creation")
save4_10:
//RAM 802FCF90 - さつえいしたしゃしん
textEntryH("Photo Taken")
save4_11:
//RAM 802FCFA8 - ほじょヨウシに ひょうじ
textEntryH("Current creation on")
save4_12:
//RAM 802FCFC4 - されている がぞう
textEntryH("alternate canvas")

save4_13:
//RAM 802FCFD8 - いれもの
textEntryH("Container")
save4_14:
//RAM 802FCFE4 - さくひん
textEntryH("File")
save4_15:
//RAM 802FCFF0 - いれものの
textEntryH("All contents of")
save4_16:
//RAM 802FCFFC - なかみすべて
textEntryH("a container.")

save4_e1:
//RAM 802FD010 - いれものが いっぱいです。\n
textEntryH("The container is full.\n")
save4_e2:
//RAM 802FD030 - ディスクが さしこまれていません。\n\nさぎょうを ちゅうだんします。
textEntryH("The disk has been ejected.\n\nAccess suspended.")
save4_e3:
//RAM 802FD078 - このいれものには かきこめません。
textEntryH("You cannot write to\nthis container.")
save4_e4:
//RAM 802FD09C - このさくひんには かきこめません。
textEntryH("You cannot write this file.")
save4_e5:
//RAM 802FD0C0 - このディスクには これいじょう さくひんが\nはいりません。
textEntryH("There is no more space to fit\nmore files on this disk.")
save4_e6:
//RAM 802FD0FC - このさくひんを けすことは できません。
textEntryH("You cannot delete this file.")
save4_e7:
//RAM 802FD128 - このいれものを けすことは できません。
textEntryH("You cannot delete\nthis container.")
save4_e8:
//RAM 802FD154 - このさくひんは いどうできません。
textEntryH("You cannot move this file.")
save4_e9:
//RAM 802FD178 - おなじなまえが すでにあります。
textEntryH("This name already exists.")
save4_e10:
//RAM 802FD19C - これいじょう いれものを つくれません。
textEntryH("You cannot create a container.")
save4_e11:
//RAM 802FD1C8 - ディスクのエラーです。
textEntryH("Disk Error")
save4_e12:
//RAM 802FD1E0 - ディスクが いれかえられたので\nよみなおします。
textEntryH("The disk has been read again\nbecause it has been replaced.")
save4_e13:
//RAM 802FD214 - なまえは へんこう されませんでした。
textEntryH("The name was not changed.")
save4_e14:
//RAM 802FD23C - このさくひんの なまえは へんこう\nできません。
textEntryH("You cannot rename this file.")
save4_e15:
//RAM 802FD270 - このいれものの なまえは へんこう\nできません。
textEntryH("You cannot rename\nthis container.")
save4_e16:
//RAM 802FD2A4 - このさくひんは かいたり けしたり\nできません。
textEntryH("You cannot write\nor delete this file.")
save4_e17:
//RAM 802FD2D8 - このディスクには かいたり けしたり\nできません。
textEntryH("You cannot write\nor delete on this disk.")
save4_e18:
//RAM 802FD30C - おなじいれものにいどうはできません。
textEntryH("You cannot move\nin the same container.")
save4_e19:
//RAM 802FD334 - ディスクが はいっていません。\n\nディスクを さしこんで ください。
textEntryH("The disk has been ejected.\n\nPlease insert disk.")
save4_e20:
//RAM 802FD37C - このディスクは ここでは つかうことが\nできません。\n\nただしいディスクに いれかえて ください。
textEntryH("This disk cannot be used.\n\nPlease insert the correct disk.")
save4_e21:
//RAM 802FD3E0 -  \n
db $FF
save4_e22:
//RAM 802FD3E4 - ディスクを さしこんで  ください。
textEntryH("Please insert disk.")
save4_e23:
//RAM 802FD40C - そのなまえは つかえません。
textEntryH("You cannot use this name.")
save4_e24:
//RAM 802FD42C - このディスクは データが こわれています。\n\nただしいディスクに いれかえて ください。
textEntryH("The contents of this disk\nhas been wiped.")
save4_e25:
//RAM 802FD488 - まちがったディスクが さしこまれている\nかのうせいが あります。\n
textEntryH("The wrong disk\nmay have been inserted.\n")
save4_e26:
//RAM 802FD4CC - ただしいディスクに いれかえて ください。
textEntryH("Please insert the correct disk.")
save4_e27:
//RAM 802FD4F8 - いれものが ありません。
textEntryH("There are no containers.")
save4_e28:
//RAM 802FD514 - 2ついじょうのいれものが ありません。
textEntryH("There are no more\nthan 2 containers.")
save4_e29:
//RAM 802FD53C - なかみを すべて いどうすることが\nできません。\n
textEntryH("You cannot move all the files.\n")
save4_e30:
//RAM 802FD570 - 1 つのいれものには 70こまでしか\nさくひんが はいりません。
textEntryH("A container can contain\nup to 70 files.")
save4_e31:
//RAM 802FD5B4 - このいれものには さくひんが ありません。
textEntryH("This container is empty.")
save4_e32:
//RAM 802FD5E0 - なかみを すべて さくじょ することが\nできません。
textEntryH("You cannot delete all the files.")
save4_e33:
//RAM 802FD618 - このさくひんは サイズが おおきいので\nここでは ロードできません。
textEntryH("The file could not be loaded\nbecause it is too big.")
save4_e34:
//RAM 802FD660 - このさくひんは しゅるいが ちがうので\nここでは ロードできません。
textEntryH("The file could not be loaded\nbecause it is of a different type.")
save4_e35:
//RAM 802FD6A8 - このさくひんは しゅるいが ちがうので\nうわがきセーブは できません。
textEntryH("The file cannot be overwritten\nbecause it is of a different type.")
save4_e36:
//RAM 802FD6F0 - このいれものには かいたり けしたり\nできません。
textEntryH("You cannot write\nor delete this container.")
save4_e37:
//RAM 802FD724 - このいれものの なかには\nさくじょできない さくひんが あります。
textEntryH("You cannot delete some of\nthe files in this container.")
save4_e38:
//RAM 802FD768 - エラーばんごう49\nちゅうい:\nアクセスランプ てんめつちゅうに\nディスクを ぬかないでください。
textEntryH("Error 49\n\nPlease do not eject the disk\nwhile the access lamp is blinking.")
save4_e39:
//RAM 802FD7D4 - エラーばんごう2\n\nディスクを さしこみなおして ください。
textEntryH("Error 2\n\nPlease reinsert the disk.")
save4_e40:
//RAM 802FD81C - よみこみ せんよう ディスクです。\nここでは つかうことが できません。\n
textEntryH("This is a read-only disk.\nIt cannot be used.\n")
save4_e41:
//RAM 802FD868 - いどうさきの いれものが いっぱいに\nなりました。\n
save4_e42:
//RAM 802FD8A0 - コピーさきの いれものが いっぱいに\nなりました。\n
textEntryH("The destination container\nis full.\n")
save4_e43:
//RAM 802FD8D8 - ディスクが ちがいます。\n\nぬいたときのディスクに いれかえて\nください。
textEntryH("This is a different disk.\n\nPlease insert the original disk.")
save4_e44:
//RAM 802FD924 - このディスクは しょきか できません。
textEntryH("This disk cannot be initialized.")
save4_e45:
//RAM 802FD94C - すべてのさくひんを いどうすることが\nできませんでした。
textEntryH("Could not move all of the files.")
save4_e46:
//RAM 802FD988 - このいれものの すべてのさくひんを\nいどうしました。
textEntryH("All files of the container\nhave been moved.")
save4_e47:
//RAM 802FD9C0 - このさくひんは セーブできません。
textEntryH("This file could not be saved.")
save4_e48:
//RAM 802FD9E4 - なまえが つけられませんでした。
textEntryH("This file could not be renamed.")
save4_e49:
//RAM 802FDA08 - べつのディスクではありません。
textEntryH("This is not a different disk.")
save4_e50:
//RAM 802FDA28 - なかみを すべてコピーすることが\nできません。\n
textEntryH("Could not copy all of the files.\n")
save4_e51:
//RAM 802FDA5C - このいれものには これいじょう さくひんが\nはいりません。
textEntryH("There is no more space to fit\nmore files in this container.")
save4_e52:
//RAM 802FDA98 - このいれものの すべてのさくひんを\nさくじょ しました。
textEntryH("All files of the container\nhave been deleted.")
save4_e53:
//RAM 802FDAD4 - ディスクが ぬかれました。\nセーブしょりちゅうに\nディスクを ぬかないでください。
textEntryH("The disk has been ejected.\nPlease do not eject\nthe disk while saving.")
save4_e54:
//RAM 802FDB28 - エラーばんごう
textEntryH("Error ")
save4_e55:
//RAM 802FDB3C - くわしくは とりあつかいせつめいしょを\nおよみください。
textEntryH("For additional details, please\nread the instruction booklet.")
save4_e56:
//RAM 802FDB78 - ディスクエラーです。
textEntryH("This is a disk error.")

seek(0x2E1E60)
dw (save4_e1),(save4_e30),0
dw (save4_e2),0
dw (save4_e3),0
dw (save4_e4),0
dw (save4_e5),0
dw (save4_e6),0
dw (save4_e7),0
dw (save4_e8),0
dw (save4_e9),0
dw (save4_e10),0
dw (save4_e11),0
dw (save4_e12),0
dw (save4_e13),0
dw (save4_e14),0
dw (save4_e15),0
dw (save4_e16),0
dw (save4_e17),0
dw (save4_e18),0
dw (save4_e19),0
dw (save4_e20),0
dw (save4_e22),0
dw (save4_e23),0
dw (save4_e24),0
dw (save4_e25),(save4_e26),0
dw (save4_e27),0
dw (save4_e28),0
dw (save4_e29),(save4_e30),0
dw (save4_e31),0
dw (save4_e32),0
dw (save4_e34),0
dw (save4_e35),0
dw (save4_e36),0
dw (save4_e37),0
dw (save4_e38),(save4_e55),(save4_e21),0
dw (save4_e39),0
dw (save4_e40),(save4_e26),0
dw (save4_e20),0
dw (save4_e41),(save4_e30),0
dw (save4_e42),(save4_e30),0
dw (save4_e33),0
dw (save4_e43),0
dw (save4_e44),0
dw (save4_e45),0
dw (save4_e46),0
dw (save4_e47),0
dw (save4_e48),0
dw (save4_e49),0
dw (save4_e50),(save4_e30),0
dw (save4_e51),0
dw (save4_e52),0
dw (save4_e38),(save4_e55),0
dw (save4_e53),0


seek(0x2904EE)
dh (save4_1)

seek(0x291476)
dh (save4_2)
seek(0x291476+0x8)
//dh $0091	//X Pos
seek(0x291476+0x10)
dh $004B	//Y Pos
seek(0x29148E)
dh (save4_3)
seek(0x29148E+0x8)
//dh $0091	//X Pos
seek(0x29148E+0x10)
//dh $0050	//Y Pos

seek(0x2914AE)
//dh (save4_4)
dh (save4_6)
seek(0x2914AE+0x8)
//dh $0091	//X Pos
seek(0x2914AE+0x10)
//dh $0046	//Y Pos
seek(0x2914C6)
//dh (save4_6)
dh (save4_4)
seek(0x2914C6+0x8)
//dh $0091	//X Pos
seek(0x2914C6+0x10)
//dh $0050	//Y Pos

seek(0x2914E6)
//dh (save4_5)
dh (save4_6)
seek(0x2914E6+0x8)
//dh $0091	//X Pos
seek(0x2914E6+0x10)
//dh $0046	//Y Pos
seek(0x2914FE)
//dh (save4_6)
dh (save4_5)
seek(0x2914FE+0x8)
//dh $0091	//X Pos
seek(0x2914FE+0x10)
//dh $0050	//Y Pos

seek(0x29151E)
dh (save4_11)
seek(0x29151E+0x8)
//dh $0091	//X Pos
seek(0x29151E+0x10)
//dh $0046	//Y Pos
seek(0x291536)
dh (save4_12)
seek(0x291536+0x8)
//dh $0091	//X Pos
seek(0x291536+0x10)
//dh $0050	//Y Pos

seek(0x291556)
dh (save4_9)
seek(0x291556+0x8)
//dh $0091	//X Pos
seek(0x291556+0x10)
//dh $004B	//Y Pos

seek(0x291576)
dh (save4_10)
seek(0x291576+0x8)
//dh $0091	//X Pos
seek(0x291576+0x10)
//dh $004B	//Y Pos

seek(0x292896)
dh (save4_13)
seek(0x292896+0x8)
dh $005F	//X Pos
seek(0x292896+0x10)
//dh $0064	//Y Pos
seek(0x2928B6)
dh (save4_15)
seek(0x2928B6+0x8)
dh $0054	//X Pos
seek(0x2928B6+0x10)
//dh $0064	//Y Pos
seek(0x2928CE)
dh (save4_16)
seek(0x2928CE+0x8)
//dh $005B	//X Pos
seek(0x2928CE+0x10)
//dh $006D	//Y Pos
seek(0x2928E6)
dh (save4_14)
seek(0x2928E6+0x8)
dh $00C4	//X Pos
seek(0x2928E6+0x10)
//dh $0064	//Y Pos

seek(0x29323E)
dh (save4_e56)
seek(0x293282)
dh (save4_e56)
seek(0x2932BE)
dh (save4_e54)
seek(0x2932EA)
dh (save4_e55)
seek(0x293346)
dh (save4_e55)

//Move Used Space number 1.2 / Function RAM 80289958
seek(0x26DCB0)
sb t8,13(t9)	//. (0x12)
seek(0x26DCCC)
sb t2,12(t3)	//1 (0x10)
seek(0x26DCFC)
sb t7,14(t8)	//2 (0x14)

seek(0x26DD2C)
sb t3,12(t4)	//space (0x10)
seek(0x26DD48)
sb t7,13(t8)	//1 (0x12)
seek(0x26DD64)
sb t1,14(t2)	//2 (0x14)


//--Disk Swap Text (Disk 0x2E2110 / RAM 802FDE40)
//Text ID RAM 803096E0 (0x10-0x12 & 0x20-0x22)
seek(0x2E2110)
save5_1:
textEntryH("Please eject the disk.")				//RAM 802FDE40 - ディスクを とりだしてください
save5_2:
textEntryH("Please insert a disk.")				//RAM 802FDE60 - ディスクを いれてください
save5_3:
textEntryH("Please insert the original disk.")			//RAM 802FDE7C - きどうディスクをいれてください
save5_4:
textEntryH("The wrong disk has been inserted.")			//RAM 802FDE9C - まちがったディスクがはいっています
save5_5:
textEntryH("Loading content from a different disk.")		//RAM 802FDEC0 - べつのディスクといれかえます
save5_6:
textEntryH("Change to the original Paint Studio disk.")		//RAM 802FDEE0 - もとのディスクと いれかえます
save5_7:
textEntryH("Loading content from a different disk.")		//RAM 802FDF00 - べつのディスクの さくひんをよみこみます
save5_8:
textEntryH("Change to the original Paint Studio disk.")		//RAM 802FDF2C - もとのディスクをよみこみます
save5_9:
textEntryH("The original Paint Studio disk\nis required to continue.")	//RAM 802FDF4C - ゲームをつづけるためには\nきどうディスクがひつようです

//0x10 - Eject disk for a different disk
seek(0x2A21EA)
dh (save5_5)
seek(0x2A21F6)
dh (save5_1)
//0x11 - Eject disk because it is the wrong disk
seek(0x2A221A)
dh (save5_4)
seek(0x2A2226)
dh (save5_1)
//0x12 - Eject disk for the original disk
seek(0x2A224A)
dh (save5_6)
seek(0x2A2256)
dh (save5_1)
//0x20 - Insert different disk
seek(0x2A227A)
dh (save5_7)
seek(0x2A2286)
dh (save5_2)
//0x21 - Insert original disk (after wrong disk)
seek(0x2A22AA)
dh (save5_9)
seek(0x2A22B6)
dh (save5_3)
//0x22 - Insert original disk
seek(0x2A22DA)
dh (save5_8)
seek(0x2A22E6)
//dh (save5_2)
dh (save5_3)


//--Kanji Menu Text (Disk 0x2E2260 / RAM 802FDF90)
seek(0x2E2260)
save6_1:
//RAM 802FDF90 - ～ つかいたいかんじの さいしょのもじをえらんでください ～
textEntryH("* Please select the beginning of the kanji *")

seek(0x29FE6A)
dh (save6_1)
seek(0x29FE72)
dh 0x003E	//X Pos


//Function Text + Kanji Font Rendering (Disk 0x2A0224 / RAM 802BBF54)
//Test these: き せ み and last (symbols)
seek(0x2A0224+0x114)
addiu at,0,8

seek(0x2A0224+0x128)
ori t5,t4,0
seek(0x2A0224+0x130)
sb t3,0x58(t6)

seek(0x2A0224+0x170)
ori t5,t3,0
seek(0x2A0224+0x17C)
sb t4,0x58(t6)

seek(0x2A0224+0x1A8)
ori t2,t1,0
seek(0x2A0224+0x1B0)
sb t0,0x58(t3)

seek(0x2A0224+0x1DC)
ori t9,t8,0
seek(0x2A0224+0x1E4)
sb t7,0x58(t1)

seek(0x2A0224+0x204)
ori t5,t4,0
seek(0x2A0224+0x20C)
sb t3,0x58(t6)

seek(0x2A0224+0x240)
ori t3,t4,0
seek(0x2A0224+0x248)
sb 0,0x58(t5)

//Symbols Menu (Disk 0x2E4438 / RAM 80300168)
seek(0x2E1C00)	//Repoint because of space
//Page 1
kanji1_1:
textEntryH("Special")		//とくしゅもじ
db $FE,$81,$58,$01,$FE,$81,$57,$01,$FE,$83,$95,$02,$FE,$81,$59,$01,$FE,$81,$54,$02,$FB
db $FE,$82,$EC,$01,$FE,$82,$EE,$02,$FE,$83,$8E,$01,$FE,$83,$90,$02,$FE,$88,$6A,$04,$FF
kanji1_2:
textEntryH("Digits")		//ぜんかくすうじ
db $FE,$82,$50,$09,$FE,$82,$4F,$01,$FF
kanji1_3:
textEntryH("Circled")		//まる\nすうじ
db $FE,$85,$40,$0A,$FB,$0A,$FF
kanji1_4:
textEntryH("Roman")		//ローマ\nすうじ
db $FE,$85,$9F,$0D,$FF
kanji1_5:
textEntryH("Arrow")		//やじるし
db $FE,$81,$A8,$04,$FE,$86,$D3,$04,$FF

//Page 2
kanji2_1:
textEntryH("Symbol")		//きごう
db $FE,$81,$97,$01,$FE,$81,$A6,$02,$FE,$86,$9B,$01,$FE,$86,$9D,$02,$FE,$81,$94,$01,$FE,$81,$96,$01,$FE,$81,$4F,$01,$FE,$81,$95,$01,$FE,$81,$89,$02,$FE,$87,$9E,$01,$FB
db $FE,$81,$75,$02,$FE,$81,$69,$02,$FE,$81,$6D,$02,$FE,$81,$71,$04,$FE,$81,$79,$02,$FB
db $FE,$86,$9F,$04,$FE,$81,$9B,$01,$FE,$81,$A0,$01,$FE,$81,$A2,$01,$FE,$81,$A4,$01,$FE,$81,$99,$01,$FE,$81,$F3,$01,$FE,$81,$9D,$01,$FE,$86,$B3,$02,$FB
db $FE,$81,$41,$07,$FE,$81,$65,$04,$FE,$81,$4A,$02,$FB
db $FE,$81,$63,$02,$FE,$81,$88,$01,$FE,$81,$E6,$01,$FE,$81,$51,$01,$FE,$81,$5E,$02,$FE,$81,$60,$01,$FE,$81,$5B,$01,$FE,$84,$A0,$01,$FE,$84,$9F,$01,$FE,$81,$49,$01,$FE,$81,$48,$01,$FB
db $FE,$81,$7B,$04,$FE,$81,$80,$03,$FE,$81,$E0,$01,$FE,$81,$85,$03,$FE,$81,$E4,$02,$FB
db $FE,$81,$E3,$01,$FE,$81,$B8,$08,$FE,$81,$C8,$02,$FE,$81,$DC,$01,$FE,$81,$98,$01,$FB
db $FE,$81,$93,$01,$FE,$81,$8E,$05,$FE,$81,$CD,$02,$FE,$81,$DB,$01,$FE,$81,$DD,$03,$FE,$81,$E7,$01,$FF

//Page 3
kanji3_1:
textEntryH("Capital\nLetters")	//ぜんかくABC
db $FE,$82,$60,$1A,$FF
kanji3_2:
textEntryH("Small\nLetters")	//ぜんかくabc
db $FE,$82,$81,$1A,$FF
kanji3_3:
textEntryH("Greek\nLetters")	//ギリシヤもじ
db $FE,$83,$9F,$18,$FB,$FE,$83,$BF,$18,$FF

//Pointers
seek(0x2E45C8)
dw (kanji1_1),(kanji1_2),(kanji1_3),(kanji1_4),(kanji1_5),0
dw (kanji2_1),0
dw (kanji3_1),(kanji3_2),(kanji3_3),0

//Change Symbols Kanji
seek(0x2E48CC)
//dh 0xFFFF
dh 0x8197


//--Disk Usage Percentage Function (Disk 0x2A661C / RAM 802C234C)
seek(0x2A661C+0x88)
sb t7,0(t8)
seek(0x2A661C+0xE8)
addiu t9,t8,-1
seek(0x2A661C+0x120)
sb t4,0(t5)

seek(0x2E535C)
db $40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$00,$00,$00
db $40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$00,$00,$00


//--Date & Time Text Generation - RAM 8007F6D8
//Function (Disk 0x299904 / RAM 802B5634)
//802B56F0
seek(0x299904+0xBC)
addiu t7,t5,0
addu t8,sp,t7
addiu t3,t6,0xFFE0
sb t3,0x38(t8)

//802B571C
seek(0x299904+0xE8)
sb t4,5(t1)
addiu t2,sp,0x38
lbu t6,5(t2)
sb t6,2(t2)
addiu t5,0,0xAE
addiu t3,sp,0x38
sb t5,8(t3)
addiu t7,0,0x1A
addiu t8,sp,0x38
sb t7,0xE(t8)
addiu t9,sp,0x38
lbu t0,0xE(t9)
sb t0,0xB(t9)
addiu t4,sp,0x38
sb 0,0x11(t4)
