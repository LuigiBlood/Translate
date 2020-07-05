//Save & Load
//Code Overlay (Disk 0x8616B8 / RAM 80280000)
//Yay1 Overlay (Disk 0x8AD9F0 / RAM 8066BD70)
outputGame()

//One byte char hack
//Render Text Function (Disk 0x89F9D8 / RAM 802BE320)
seek(0x89FA90)
lbu t5,0(t3)
seek(0x89FA90 + 0x14)
lbu t4,0(t6)
seek(0x89FA90 + 0x3C)
lbu t8,0(t9)
seek(0x89FA90 + 0x58)
lbu t2,0(t1)
seek(0x89FA90 + 0x78)
lbu t5,0(t3)
seek(0x89FA90 + 0x98)
lbu t7,0(t4)
seek(0x89FA90 + 0xB8)
lbu t1,0(t8)
seek(0x89FA90 + 0xD8)
lbu t3,0(t0)
seek(0x89FA90 + 0xFC)
lbu a1,0(t6)
seek(0x89FA90 + 0x1A0)
addiu t0,t3,1
seek(0x89FA90 + 0x1AC)
lbu t6,0(t5)

seek(0x89F2F8 + 0x18)
lbu t6,0(a0)
seek(0x89F2F8 + 0x24)
lbu t7,0(a0)
seek(0x89F2F8 + 0x68)
lbu t2,0(a0)
seek(0x89F2F8 + 0x80)
lbu t3,0(a0)
seek(0x89F2F8 + 0x9C)
lbu t5,0(a0)
seek(0x89F2F8 + 0xB8)
lbu t7,0(a0)
seek(0x89F2F8 + 0xD4)
lbu t9,0(a0)
seek(0x89F2F8 + 0xF0)
lbu t1,0(a0)
seek(0x89F2F8 + 0x10C)
lbu t3,0(a0)
seek(0x89F2F8 + 0x124)
lbu t6,0(a0)
seek(0x89F2F8 + 0x164)
lbu t6,1(a0)
seek(0x89F2F8 + 0x218)
addiu a0,a0,1
lbu t4,0(a0)


//--Menus
seek(0x8A5028)
base 0x802C3970
save1_1:
textEntryH0("Exit")			//でる
save1_2:
textEntryH0("Save")			//さくひんセーブ
save1_3:
textEntryH0("Load")			//さくひんロード
save1_4:
textEntryH0("Rename")			//なまえへんこう
save1_5:
textEntryH0("Delete")			//さくひんのさくじょ
save1_6:
textEntryH0("Move/Copy")			//さくひんのいどう・コピー
save1_7:
textEntryH0("Create Container")		//いれものさくせい
save1_8:
textEntryH0("Change Disk")		//ディスクのいれかえ

save1_9:
textEntryH0("Hiragana")			//ひらがな
save1_10:
textEntryH0("Katakana")			//カタカナ
save1_11:
textEntryH0("AaBbCc")			//えいすう
save1_12:
textEntryH0("Kanji/Symbols")		//かんじ/きごう
save1_13:
textEntryH0("All")			//ひらがな/カタカナ/えいすう
save1_14:
textEntryH0("Space")			//くうはく
save1_15:
textEntryH0("Left")			//もどる
save1_16:
textEntryH0("Right")			//すすむ
save1_17:
textEntryH0("Erase")			//1 もじけす
save1_18:
textEntryH0("Erase All")			//すべてけす
save1_19:
textEntryH0("Undo")			//やりなおし
save1_20:
textEntryH0("Done")			//けってい
save1_21:
textEntryH0("Back")			//もどる
save1_22:
textEntryH0("Next")			//ページおくり

seek(0x8A5174)
skip(16); dw (save1_1)
skip(16); dw (save1_2)
skip(16); dw (save1_3)
skip(16); dw (save1_7)
skip(16); dw (save1_4)
skip(16); dw (save1_5)
skip(16); dw (save1_6)
skip(16); dw (save1_8)

skip(20)
skip(16); dw (save1_21)

skip(20)
skip(16); dw (save1_9)
skip(16); dw (save1_10)
skip(16); dw (save1_11)
skip(16); dw (save1_12)
skip(16); dw (save1_13)
skip(16); dw (save1_14)
skip(16); dw (save1_15)
skip(16); dw (save1_16)
skip(16); dw (save1_17)
skip(16); dw (save1_18)
skip(16); dw (save1_19)
skip(16); dw (save1_20)


//--Kanji/Symbol Page Number
seek(0x8A5354)
textEntryH0("1/1")			//1/1ページ

seek(0x889F70)
sb t1,0(t2)
seek(0x889F88)
sb t4,2(t5)


//--New Save
seek(0x8A5540)
textEntryH0("New Save")			//あたらしくセーブする


//--Move / Copy
seek(0x8A55A8)
textEntryH0("Move")			//いどう
seek(0x8A55B0)
textEntryH0("Copy")			//コピー


//--Kind Menuing
outputFile("./Temp/8AD9F0.17453.SaveLoad.yay1.bin")
seekFile(0x33AE0)
save2_1:
//RAM 802FBDF0 - テスト
textEntryH0("Test")
save2_2:
//RAM 802FBDF8 - ひだりから えらんでください
textEntryH0("Please choose from the left menu.")

save2_3:
//RAM 802FBE18 - このさくひんをセーブするいれものを えらんでください
textEntryH0("Please select the container to save to.")
save2_4:
//RAM 802FBE50 - このいれものは いっぱいです
textEntryH0("This container is full.")
save2_5:
//RAM 802FBE70 - このさくひんを あたらしく セーブしますか?
textEntryH0("Do you want to save this file as new?")
save2_6:
//RAM 802FBEA0 - (うわがきするときは みぎから えらんでください)
textEntryH0("(Select a file on the right side to overwrite)")
save2_7:
//RAM 802FBED4 - ここにセーブしますか?
textEntryH0("Do you want to overwrite this file?")
save2_8:
//RAM 802FBEEC - まえのさくひんが きえますが いいですか?
textEntryH0("Are you sure?\nThis file will be overwritten.")
save2_9:
//RAM 802FBF18 - あたらしくセーブすることは できません
textEntryH0("You cannot save a new file.")
save2_10:
//RAM 802FBF40 - セーブしています…
textEntryH0("Saving...")
save2_11:
//RAM 802FBF54 - (あっしゅくに じかんが かかります)
textEntryH0("(The compression will take a moment.)")
save2_12:
//RAM 802FBF7C - さくひんに なまえを つけますか?
textEntryH0("Do you want to give this file a name?")
save2_13:
//RAM 802FBFA0 - (つけないときは したのなまえになります)
textEntryH0("(The name below will be used if not.)")
save2_14:
//RAM 802FBFCC - なまえを つけています…
textEntryH0("Saving Name...")

save2_15:
//RAM 802FBFE8 - いれものが ありません
textEntryH0("There is no container.")
save2_16:
//RAM 802FC000 - ロードするさくひんの いれものを えらんでください
textEntryH0("Please select the container to load from.")
save2_17:
//RAM 802FC034 - ロードするさくひんを えらんでください
textEntryH0("Please select the file to load.")
save2_18:
//RAM 802FC05C - このさくひんを ロードしますか?
textEntryH0("Do you want to load this file?")
save2_19:
//RAM 802FC080 - (ちがうときは みぎからえらびなおしてください)
textEntryH0("(If not, select another file on the right side.)")
save2_20:
//RAM 802FC0B4 - このいれものには さくひんが はいっていません
textEntryH0("This container is empty.")
save2_21:
//RAM 802FC0E4 - げんざいのさくひんは セーブされていませんが\nいいですか?
textEntryH0("The current creation will be lost.\nAre you sure?")
save2_22:
//RAM 802FC120 - ロードしています…
textEntryH0("Loading...")

save2_23:
//RAM 802FC134 - どちらを さくじょ しますか?
textEntryH0("What do you want to delete?")
save2_24:
//RAM 802FC154 - なかみを さくじょするいれものを えらんでください
textEntryH0("Please select the container\nyou want to delete the contents from.")
save2_25:
//RAM 802FC188 - このいれものの なかみを さくじょ しますか?
textEntryH0("Do you want to delete the contents\nof this container?")
save2_26:
//RAM 802FC1B8 - さくじょする さくひんのいれものを えらんでください
textEntryH0("Please select the container that contains\nthe file you want to delete.")
save2_27:
//RAM 802FC1F0 - さくじょする さくひんを えらんでください
textEntryH0("Please select the file you want to delete.")
save2_28:
//RAM 802FC21C - このさくひんを さくじょ しますか?
textEntryH0("Are you sure you want to delete this file?")
save2_29:
//RAM 802FC244 - さくじょ しています…
textEntryH0("Deleting...")

save2_30:
//RAM 802FC25C - どちらのなまえを へんこう しますか?
textEntryH0("What do you want to rename?")
save2_31:
//RAM 802FC284 - なまえを へんこうするいれものを えらんでください
textEntryH0("Please select the container\nyou want to rename.")
save2_32:
//RAM 802FC2B8 - このいれものの なまえを へんこうしますか?
textEntryH0("Do you want to rename this container?")
save2_33:
//RAM 802FC2E8 - なまえを へんこうするさくひんの いれものを\nえらんでください
textEntryH0("Please select the container that contains\nthe file you want to rename.")
save2_34:
//RAM 802FC328 - なまえを へんこうするさくひんを えらんでください
textEntryH0("Please select the file you want to rename.")
save2_35:
//RAM 802FC35C - このさくひんの なまえを へんこう しますか?
textEntryH0("Do you want to rename this file?")
save2_36:
//RAM 802FC38C - なまえを へんこう しています…
textEntryH0("Renaming...")

save2_37:
//RAM 802FC3B0 - したから えらんでください
textEntryH0("What do you want to do?")
save2_38:
//RAM 802FC3CC - どちらを いどう しますか?
textEntryH0("What do you want to move?")
save2_39:
//RAM 802FC3EC - なかみを いどうするいれものを えらんでください
textEntryH0("Please select the container\nto move all its contents from.")
save2_40:
//RAM 802FC420 - いどうするさきの いれものを えらんでください
textEntryH0("Please select the destination container\nto move files to.")
save2_41:
//RAM 802FC450 - さくひんを すべて いどうしても いいですか?
textEntryH0("Do you want to move all its contents?")
save2_42:
//RAM 802FC480 - いどうするさくひんの いれものを えらんでください
textEntryH0("Please select the container\nto move a file from.")
save2_43:
//RAM 802FC4B4 - いどうするさくひんを えらんでください
textEntryH0("Please select a file to move.")
save2_44:
//RAM 802FC4DC - このさくひんを いどう しますか?
textEntryH0("Do you want to move this file?")
save2_45:
//RAM 802FC500 - いどう しています…
textEntryH0("Moving...")
save2_46:
//RAM 802FC518 - どちらを コピーしますか?
textEntryH0("What do you want to copy?")
save2_47:
//RAM 802FC534 - コピーするいれものを えらんでください
textEntryH0("Please select the container to copy from.")
save2_48:
//RAM 802FC55C - コピーするさきの いれものを えらんでください
textEntryH0("Please select the destination\ncontainer to copy files to.")
save2_49:
//RAM 802FC58C - さくひんを すべて コピーしますか?
textEntryH0("Do you want to copy all its contents?")
save2_50:
//RAM 802FC5B4 - コピーするさくひんの いれものを えらんでください
textEntryH0("Please select the container\nto copy a file from.")
save2_51:
//RAM 802FC5E8 - コピーするさくひんを えらんでください
textEntryH0("Please select a file to copy.")
save2_52:
//RAM 802FC610 - このさくひんを コピーしますか?
textEntryH0("Do you want to copy this file?")
save2_53:
//RAM 802FC634 - コピーしています…
textEntryH0("Copying...")

save2_54:
//RAM 802FC648 - いれものをさくせいしています…
textEntryH0("Creating new container...")
save2_55:
//RAM 802FC668 - このいれものにあたらしいなまえをつけますか?
textEntryH0("Do you want to name this new container?")
save2_56:
//RAM 802FC698 - どちらのならびかえをしますか?
textEntryH0("What do you want to do?")
save2_57:
//RAM 802FC6B8 - どうならびかえますか?
textEntryH0("What do you want to sort?")
save2_58:
//RAM 802FC6D0 - 2つのいれもののばしょをいれかえます
textEntryH0("Swap the locations of 2 containers.")
save2_59:
//RAM 802FC6F8 - 1つめのいれものをえらんでください
textEntryH0("Please select the first container.")
save2_60:
//RAM 802FC71C - 2つめのいれものをえらんでください
textEntryH0("Please select the second container.")
save2_61:
//RAM 802FC740 - 2つのいれもののばしょをいれかえていいですか?
textEntryH0("Do you want to swap the location\nof these two containers?")
save2_62:
//RAM 802FC770 - ファイルじょうほうをよみなおしています…
textEntryH0("Reading the file information again...")
save2_63:
//RAM 802FC79C - ディスクの データりょういきを しょきか します\nすべてのさくひんが きえてしまいますが いいですか?
textEntryH0("The contents of this disk will be gone.\nAre you sure you want to initialize the disk?")
save2_64:
//RAM 802FC804 - いれものを あたらしく さくせいしますか?
textEntryH0("Do you want to create a new container?")

save2_65:
//RAM 802FC830 - ディスクのこうかんをおこないます
textEntryH0("Please change the disk.")
save2_66:
//RAM 802FC854 - ディスクをぬいてください
textEntryH0("Please eject the disk.")
save2_67:
//RAM 802FC870 - ディスクをいれてください
textEntryH0("Please insert the disk.")
save2_68:
//RAM 802FC88C - ちがうディスクがはいっています
textEntryH0("A different disk is inserted.")

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

seekFile(0x34698)
skip(8); dw (save2_2)
skip(8); dw (save2_69)
skip(8); dw (save2_70)
skip(8); dw (save2_71)
skip(8); dw (save2_72)
skip(8); dw (save2_73)
skip(8); dw (save2_74)
skip(8); dw (save2_75)
skip(8); dw (save2_76)
skip(8); dw (save2_77)
skip(8); dw (save2_3)
skip(8); dw (save2_4)
skip(8); dw (save2_5)
skip(8); dw (save2_5)
skip(8); dw (save2_6)
skip(8); dw (save2_7)
skip(8); dw (save2_8)
skip(8); dw (save2_9)
skip(8); dw (save2_10)
skip(8); dw (save2_10)
skip(8); dw (save2_11)
skip(8); dw (save2_12)
skip(8); dw (save2_13)
skip(8); dw (save2_14)
skip(8); dw (save2_15)
skip(8); dw (save2_16)
skip(8); dw (save2_17)
skip(8); dw (save2_18)
skip(8); dw (save2_19)
skip(8); dw (save2_20)
skip(8); dw (save2_21)
skip(8); dw (save2_22)
skip(8); dw (save2_23)
skip(8); dw (save2_24)
skip(8); dw (save2_25)
skip(8); dw (save2_26)
skip(8); dw (save2_27)
skip(8); dw (save2_28)
skip(8); dw (save2_29)
skip(8); dw (save2_30)
skip(8); dw (save2_31)
skip(8); dw (save2_32)
skip(8); dw (save2_33)
skip(8); dw (save2_34)
skip(8); dw (save2_35)
skip(8); dw (save2_36)
skip(8); dw (save2_37)
skip(8); dw (save2_38)
skip(8); dw (save2_39)
skip(8); dw (save2_40)
skip(8); dw (save2_41)
skip(8); dw (save2_42)
skip(8); dw (save2_43)
skip(8); dw (save2_44)
skip(8); dw (save2_45)
skip(8); dw (save2_46)
skip(8); dw (save2_47)
skip(8); dw (save2_48)
skip(8); dw (save2_49)
skip(8); dw (save2_50)
skip(8); dw (save2_51)
skip(8); dw (save2_52)
skip(8); dw (save2_53)
skip(8); dw (save2_63)


//--Bottom Window Text
//Text ID RAM 802C0E4C
seekFile(0x34B30)
save3_1:
textEntryH0("Please do not eject the disk.")	//ディスクを ぬかないでください
save3_2:
textEntryH0("Preparing to save...")		//セーブのじゅんびをしています
save3_3:
textEntryH0("Some files cannot be used here.")	//ここであつかえないファイルがふくまれますも

seekFile(0x34BA0)
dw (save3_1),(save3_2),(save3_3)


//--UI and Error Text
//UI ID / RAM 802C0E94 (byte)
//Error ID / RAM 802C0EA0
seekFile(0x34BB0)
save4_1:
//RAM 802FCEC0 - しようりょう: 222 Mバイト
textEntryH0("Used Space: 222 MB")
save4_2:
//RAM 802FCEE4 - さくせいがめんに ひょうじ
textEntryH0("Current creation")
save4_3:
//RAM 802FCF00 - されている さくひん
textEntryH0(" ")
save4_4:
//RAM 802FCF18 - ディスクから
textEntryH0("from Disk")
save4_5:
//RAM 802FCF28 - 64GBパックから
textEntryH0("from Transfer Pak")
save4_6:
//RAM 802FCF3C - よみこんださくひん
textEntryH0("Creation loaded")
save4_7:
//RAM 802FCF50 - さくひんは
textEntryH0("File is")
save4_8:
//RAM 802FCF5C - ロードされていません
textEntryH0("not loaded")
save4_9:
//RAM 802FCF74 - さくせいちゅうのさくひん
textEntryH0("Current creation")
save4_10:
//RAM 802FCF90 - さつえいしたしゃしん
textEntryH0("Photo Taken")
save4_11:
//RAM 802FCFA8 - ほじょヨウシに ひょうじ
textEntryH0("Current creation on")
save4_12:
//RAM 802FCFC4 - されている がぞう
textEntryH0("alternate canvas")

save4_13:
//RAM 802FCFD8 - いれもの
textEntryH0("Container")
save4_14:
//RAM 802FCFE4 - さくひん
textEntryH0("File")
save4_15:
//RAM 802FCFF0 - いれものの
textEntryH0("All contents of")
save4_16:
//RAM 802FCFFC - なかみすべて
textEntryH0("a container.")

save4_e1:
//RAM 802FD010 - いれものが いっぱいです。\n
textEntryH0("The container is full.\n")
save4_e2:
//RAM 802FD030 - ディスクが さしこまれていません。\n\nさぎょうを ちゅうだんします。
textEntryH0("The disk has been ejected.\n\nAccess suspended.")
save4_e3:
//RAM 802FD078 - このいれものには かきこめません。
textEntryH0("You cannot write to\nthis container.")
save4_e4:
//RAM 802FD09C - このさくひんには かきこめません。
textEntryH0("You cannot write this file.")
save4_e5:
//RAM 802FD0C0 - このディスクには これいじょう さくひんが\nはいりません。
textEntryH0("There is no more space to fit\nmore files on this disk.")
save4_e6:
//RAM 802FD0FC - このさくひんを けすことは できません。
textEntryH0("You cannot delete this file.")
save4_e7:
//RAM 802FD128 - このいれものを けすことは できません。
textEntryH0("You cannot delete\nthis container.")
save4_e8:
//RAM 802FD154 - このさくひんは いどうできません。
textEntryH0("You cannot move this file.")
save4_e9:
//RAM 802FD178 - おなじなまえが すでにあります。
textEntryH0("This name already exists.")
save4_e10:
//RAM 802FD19C - これいじょう いれものを つくれません。
textEntryH0("You cannot create a container.")
save4_e11:
//RAM 802FD1C8 - ディスクのエラーです。
textEntryH0("Disk Error")
save4_e12:
//RAM 802FD1E0 - ディスクが いれかえられたので\nよみなおします。
textEntryH0("The disk has been read again\nbecause it has been replaced.")
save4_e13:
//RAM 802FD214 - なまえは へんこう されませんでした。
textEntryH0("The name was not changed.")
save4_e14:
//RAM 802FD23C - このさくひんの なまえは へんこう\nできません。
textEntryH0("You cannot rename this file.")
save4_e15:
//RAM 802FD270 - このいれものの なまえは へんこう\nできません。
textEntryH0("You cannot rename\nthis container.")
save4_e16:
//RAM 802FD2A4 - このさくひんは かいたり けしたり\nできません。
textEntryH0("You cannot write\nor delete this file.")
save4_e17:
//RAM 802FD2D8 - このディスクには かいたり けしたり\nできません。
textEntryH0("You cannot write\nor delete on this disk.")
save4_e18:
//RAM 802FD30C - おなじいれものにいどうはできません。
textEntryH0("You cannot move\nin the same container.")
save4_e19:
//RAM 802FD334 - ディスクが はいっていません。\n\nディスクを さしこんで ください。
textEntryH0("The disk has been ejected.\n\nPlease insert disk.")
save4_e20:
//RAM 802FD37C - このディスクは ここでは つかうことが\nできません。\n\nただしいディスクに いれかえて ください。
textEntryH0("This disk cannot be used.\n\nPlease insert the correct disk.")
save4_e21:
//RAM 802FD3E0 -  \n
db $FF
save4_e22:
//RAM 802FD3E4 - ディスクを さしこんで  ください。
textEntryH0("Please insert disk.")
save4_e23:
//RAM 802FD40C - そのなまえは つかえません。
textEntryH0("You cannot use this name.")
save4_e24:
//RAM 802FD42C - このディスクは データが こわれています。\n\nただしいディスクに いれかえて ください。
textEntryH0("The contents of this disk\nhas been wiped.")
save4_e25:
//RAM 802FD488 - まちがったディスクが さしこまれている\nかのうせいが あります。\n
textEntryH0("The wrong disk\nmay have been inserted.\n")
save4_e26:
//RAM 802FD4CC - ただしいディスクに いれかえて ください。
textEntryH0("Please insert the correct disk.")
save4_e27:
//RAM 802FD4F8 - いれものが ありません。
textEntryH0("There are no containers.")
save4_e28:
//RAM 802FD514 - 2ついじょうのいれものが ありません。
textEntryH0("There are no more\nthan 2 containers.")
save4_e29:
//RAM 802FD53C - なかみを すべて いどうすることが\nできません。\n
textEntryH0("You cannot move all the files.\n")
save4_e30:
//RAM 802FD570 - 1 つのいれものには 70こまでしか\nさくひんが はいりません。
textEntryH0("A container can contain\nup to 70 files.")
save4_e31:
//RAM 802FD5B4 - このいれものには さくひんが ありません。
textEntryH0("This container is empty.")
save4_e32:
//RAM 802FD5E0 - なかみを すべて さくじょ することが\nできません。
textEntryH0("You cannot delete all the files.")
save4_e33:
//RAM 802FD618 - このさくひんは サイズが おおきいので\nここでは ロードできません。
textEntryH0("The file could not be loaded\nbecause it is too big.")
save4_e34:
//RAM 802FD660 - このさくひんは しゅるいが ちがうので\nここでは ロードできません。
textEntryH0("The file could not be loaded\nbecause it is of a different type.")
save4_e35:
//RAM 802FD6A8 - このさくひんは しゅるいが ちがうので\nうわがきセーブは できません。
textEntryH0("The file cannot be overwritten\nbecause it is of a different type.")
save4_e36:
//RAM 802FD6F0 - このいれものには かいたり けしたり\nできません。
textEntryH0("You cannot write\nor delete this container.")
save4_e37:
//RAM 802FD724 - このいれものの なかには\nさくじょできない さくひんが あります。
textEntryH0("You cannot delete some of\nthe files in this container.")
save4_e38:
//RAM 802FD768 - エラーばんごう49\nちゅうい:\nアクセスランプ てんめつちゅうに\nディスクを ぬかないでください。
textEntryH0("Error 49\n\nPlease do not eject the disk\nwhile the access lamp is blinking.")
save4_e39:
//RAM 802FD7D4 - エラーばんごう2\n\nディスクを さしこみなおして ください。
textEntryH0("Error 2\n\nPlease reinsert the disk.")
save4_e40:
//RAM 802FD81C - よみこみ せんよう ディスクです。\nここでは つかうことが できません。\n
textEntryH0("This is a read-only disk.\nIt cannot be used.\n")
save4_e41:
//RAM 802FD868 - いどうさきの いれものが いっぱいに\nなりました。\n
save4_e42:
//RAM 802FD8A0 - コピーさきの いれものが いっぱいに\nなりました。\n
textEntryH0("The destination container\nis full.\n")
save4_e43:
//RAM 802FD8D8 - ディスクが ちがいます。\n\nぬいたときのディスクに いれかえて\nください。
textEntryH0("This is a different disk.\n\nPlease insert the original disk.")
save4_e44:
//RAM 802FD924 - このディスクは しょきか できません。
textEntryH0("This disk cannot be initialized.")
save4_e45:
//RAM 802FD94C - すべてのさくひんを いどうすることが\nできませんでした。
textEntryH0("Could not move all of the files.")
save4_e46:
//RAM 802FD988 - このいれものの すべてのさくひんを\nいどうしました。
textEntryH0("All files of the container\nhave been moved.")
save4_e47:
//RAM 802FD9C0 - このさくひんは セーブできません。
textEntryH0("This file could not be saved.")
save4_e48:
//RAM 802FD9E4 - なまえが つけられませんでした。
textEntryH0("This file could not be renamed.")
save4_e49:
//RAM 802FDA08 - べつのディスクではありません。
textEntryH0("This is not a different disk.")
save4_e50:
//RAM 802FDA28 - なかみを すべてコピーすることが\nできません。\n
textEntryH0("Could not copy all of the files.\n")
save4_e51:
//RAM 802FDA5C - このいれものには これいじょう さくひんが\nはいりません。
textEntryH0("There is no more space to fit\nmore files in this container.")
save4_e52:
//RAM 802FDA98 - このいれものの すべてのさくひんを\nさくじょ しました。
textEntryH0("All files of the container\nhave been deleted.")
save4_e53:
//RAM 802FDAD4 - ディスクが ぬかれました。\nセーブしょりちゅうに\nディスクを ぬかないでください。
textEntryH0("The disk has been ejected.\nPlease do not eject\nthe disk while saving.")
save4_e54:
//RAM 802FDB28 - エラーばんごう
textEntryH0("Error ")
save4_e55:
//RAM 802FDB3C - くわしくは とりあつかいせつめいしょを\nおよみください。
textEntryH0("For additional details, please\nread the instruction booklet.")
save4_e56:
//RAM 802FDB78 - ディスクエラーです。
textEntryH0("This is a disk error.")

seekFile(0x3587C)
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

outputGame()
seek(0x88A7B6); dh (save4_1)

seek(0x88B746); dh (save4_2)
seek(0x88B746+0x08); //dh $0091	//X Pos
seek(0x88B746+0x10); dh $004B	//Y Pos
seek(0x88B75E); dh (save4_3)
seek(0x88B75E+0x8); //dh $0091	//X Pos
seek(0x88B75E+0x10); //dh $0050	//Y Pos

seek(0x88B77E); dh (save4_6) //dh (save4_4)
seek(0x88B77E+0x08); //dh $0091	//X Pos
seek(0x88B77E+0x10); //dh $0046	//Y Pos
seek(0x88B796); dh (save4_4) //dh (save4_6)
seek(0x88B796+0x08); //dh $0091	//X Pos
seek(0x88B796+0x10); //dh $0050	//Y Pos

seek(0x88B7B6); dh (save4_6) //dh (save4_5)
seek(0x88B7B6+0x08); //dh $0091	//X Pos
seek(0x88B7B6+0x10); //dh $0046	//Y Pos
seek(0x88B7CE); dh (save4_5) //dh (save4_6)
seek(0x88B7CE+0x08); //dh $0091	//X Pos
seek(0x88B7CE+0x10); //dh $0050	//Y Pos

seek(0x88B7EE); dh (save4_11)
seek(0x88B7EE+0x08); //dh $0091	//X Pos
seek(0x88B7EE+0x10); //dh $0046	//Y Pos
seek(0x88B806); dh (save4_12)
seek(0x88B806+0x08); //dh $0091	//X Pos
seek(0x88B806+0x10); //dh $0050	//Y Pos

seek(0x88B826); dh (save4_9)
seek(0x88B826+0x08); //dh $0091	//X Pos
seek(0x88B826+0x10); //dh $004B	//Y Pos

seek(0x88B846); dh (save4_10)
seek(0x88B846+0x08); //dh $0091	//X Pos
seek(0x88B846+0x10); //dh $004B	//Y Pos

seek(0x88B866); dh (save4_7)
seek(0x88B866+0x08); //dh $0091	//X Pos
seek(0x88B866+0x10); //dh $0046	//Y Pos
seek(0x88B87E); dh (save4_8)
seek(0x88B87E+0x08); //dh $0091	//X Pos
seek(0x88B87E+0x10); //dh $0050	//Y Pos

seek(0x88CBAA); dh (save4_13)
seek(0x88CBAA+0x08); dh $005F	//X Pos
seek(0x88CBAA+0x10); //dh $0064	//Y Pos
seek(0x88CBCA); dh (save4_15)
seek(0x88CBCA+0x08); dh $0054	//X Pos
seek(0x88CBCA+0x10); //dh $0064	//Y Pos
seek(0x88CBE2); dh (save4_16)
seek(0x88CBE2+0x08); //dh $005B	//X Pos
seek(0x88CBE2+0x10); //dh $006D	//Y Pos
seek(0x88CBFA); dh (save4_14)
seek(0x88CBFA+0x08); dh $00C4	//X Pos
seek(0x88CBFA+0x10); //dh $0064	//Y Pos

seek(0x88D55E); dh (save4_e56)
seek(0x88D5C2); dh (save4_e56)
seek(0x88D616); dh (save4_e54)
seek(0x88D652); dh (save4_e55)
seek(0x88D6CE); dh (save4_e55)

//Move Used Space number 1.2 / Function RAM 80285CC8
seek(0x867420)
sb t1,13(t2)	//. (0x12)
seek(0x86743C)
sb t5,12(t7)	//1 (0x10)
seek(0x86746C)
sb t0,14(t1)	//2 (0x14)

seek(0x86749C)
sb t7,12(t6)	//space (0x10)
seek(0x8674B8)
sb t0,13(t1)	//1 (0x12)
seek(0x8674D4)
sb t4,14(t5)	//2 (0x14)


//--Disk Swap Text
//Text ID RAM 802C9900 (0x10-0x12 & 0x20-0x22)
outputFile("./Temp/8AD9F0.17453.SaveLoad.yay1.bin")
seekFile(0x35B20)
save5_1:
textEntryH0("Please eject the disk.")				//RAM 802FDE40 - ディスクを とりだしてください
save5_2:
textEntryH0("Please insert a disk.")				//RAM 802FDE60 - ディスクを いれてください
save5_3:
textEntryH0("Please insert the original disk.")			//RAM 802FDE7C - きどうディスクをいれてください
save5_4:
textEntryH0("The wrong disk has been inserted.")			//RAM 802FDE9C - まちがったディスクがはいっています
save5_5:
textEntryH0("Loading content from a different disk.")		//RAM 802FDEC0 - べつのディスクといれかえます
save5_6:
textEntryH0("Change to the original Talent Studio disk.")		//RAM 802FDEE0 - もとのディスクと いれかえます
save5_7:
textEntryH0("Loading content from a different disk.")		//RAM 802FDF00 - べつのディスクの さくひんをよみこみます
save5_8:
textEntryH0("Change to the original Talent Studio disk.")		//RAM 802FDF2C - もとのディスクをよみこみます
save5_9:
textEntryH0("The original Talent Studio disk\nis required to continue.")	//RAM 802FDF4C - ゲームをつづけるためには\nきどうディスクがひつようです

outputGame()
//0x10 - Eject disk for a different disk
seek(0x89C6E2); dh (save5_5)
seek(0x89C6EE); dh (save5_1)

//0x11 - Eject disk because it is the wrong disk
seek(0x89C712); dh (save5_4)
seek(0x89C71E); dh (save5_1)

//0x12 - Eject disk for the original disk
seek(0x89C742); dh (save5_6)
seek(0x89C74E); dh (save5_1)

//0x20 - Insert different disk
seek(0x89C772); dh (save5_7)
seek(0x89C77E); dh (save5_2)

//0x21 - Insert original disk (after wrong disk)
seek(0x89C7A2); dh (save5_9)
seek(0x89C7AE); dh (save5_3)

//0x22 - Insert original disk
seek(0x89C7D2); dh (save5_8)
seek(0x89C7DE); dh (save5_3) //dh (save5_2)


//--Kanji Menu Text
outputFile("./Temp/8AD9F0.17453.SaveLoad.yay1.bin")
seekFile(0x35C70)
save6_1:
//～ つかいたいかんじの さいしょのもじをえらんでください ～
textEntryH0("* Please select the beginning of the kanji *")

outputGame()
seek(0x89A2D2); dh (save6_1)
seek(0x89A2DA); dh 0x003E	//X Pos


//Function Text + Kanji Font Rendering (802B8FD4)
//Test these: き せ み and last (symbols)
seek(0x89A68C+0x114)
addiu at,0,8

seek(0x89A68C+0x128)
ori t5,t4,0
seek(0x89A68C+0x130)
sb t3,0x58(t6)

seek(0x89A68C+0x170)
ori t5,t3,0
seek(0x89A68C+0x17C)
sb t4,0x58(t6)

seek(0x89A68C+0x1A8)
ori t2,t1,0
seek(0x89A68C+0x1B0)
sb t0,0x58(t3)

seek(0x89A68C+0x1DC)
ori t9,t8,0
seek(0x89A68C+0x1E4)
sb t7,0x58(t1)

seek(0x89A68C+0x204)
ori t5,t4,0
seek(0x89A68C+0x20C)
sb t3,0x58(t6)

seek(0x89A68C+0x240)
ori t3,t4,0
seek(0x89A68C+0x248)
sb 0,0x58(t5)

//Symbols Menu
outputFile("./Temp/8AD9F0.17453.SaveLoad.yay1.bin")
seekFile(0x3561C)	//Repoint because of space
//Page 1
kanji1_1:
textEntryH0("Special")		//とくしゅもじ
db $FE,$81,$58,$01,$FE,$81,$57,$01,$FE,$83,$95,$02,$FE,$81,$59,$01,$FE,$81,$54,$02,$FB
db $FE,$82,$EC,$01,$FE,$82,$EE,$02,$FE,$83,$8E,$01,$FE,$83,$90,$02,$FE,$88,$6A,$04,$FF
kanji1_2:
textEntryH0("Digits")		//ぜんかくすうじ
db $FE,$82,$50,$09,$FE,$82,$4F,$01,$FF
kanji1_3:
textEntryH0("Circled")		//まる\nすうじ
db $FE,$85,$40,$0A,$FB,$0A,$FF
kanji1_4:
textEntryH0("Roman")		//ローマ\nすうじ
db $FE,$85,$9F,$0D,$FF
kanji1_5:
textEntryH0("Arrow")		//やじるし
db $FE,$81,$A8,$04,$FE,$86,$D3,$04,$FF

//Page 2
kanji2_1:
textEntryH0("Symbol")		//きごう
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
textEntryH0("Capital\nLetters")	//ぜんかくABC
db $FE,$82,$60,$1A,$FF
kanji3_2:
textEntryH0("Small\nLetters")	//ぜんかくabc
db $FE,$82,$81,$1A,$FF
kanji3_3:
textEntryH0("Greek\nLetters")	//ギリシヤもじ
db $FE,$83,$9F,$18,$FB,$FE,$83,$BF,$18,$FF

//Pointers
seekFile(0x37FD8)
dw (kanji1_1),(kanji1_2),(kanji1_3),(kanji1_4),(kanji1_5),0
dw (kanji2_1),0
dw (kanji3_1),(kanji3_2),(kanji3_3),0

//Change Symbols Kanji
seekFile(0x382DC)
//dh 0xFFFF
dh 0x8197

outputGame()
//--Disk Usage Percentage Function (Disk 0x8A0B64 / RAM 802C234C)
//seek(0x8A0B64 + 0x5C)
//addiu t3,t2,8
seek(0x8A0B64 + 0x88)
sb t7,0(t8)
seek(0x8A0B64 + 0xE8)
addiu t9,t8,-1
seek(0x8A0B64 + 0x120)
sb t4,0(t5)

seek(0x8A7774)
db $40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$00,$00,$00
db $40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$00,$00,$00


//--Date & Time Text Generation - RAM 801F1390
//Function (Disk 0x893D3C / RAM 802B2684)
//802B2740
seek(0x893D3C+0xBC)
addiu t7,t5,0
addu t8,sp,t7
addiu t3,t6,0xFFE0
sb t3,0x38(t8)

//802B276C
seek(0x893D3C+0xE8)
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
