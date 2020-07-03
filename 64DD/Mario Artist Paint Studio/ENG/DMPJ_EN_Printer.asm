//GameBoy Printer (Overlay Disk 0x211970 / RAM 80284130 / Size 0x54F50)
//Disk 0x236FB0 / RAM 802A9770 - Text Rendering
//Disk 0x2368D0 / RAM 802A9090 - Text Size Calc?

seek(0x211970)
base 0x80284130

//1 byte hack
seek(0x236FB0+0x94)
lbu t0,0(t8)
seek(0x236FB0+0xA8)
lbu t9,0(t1)
seek(0x236FB0+0xD0)
lbu t3,0(t4)
seek(0x236FB0+0xEC)
lbu t7,0(t6)
seek(0x236FB0+0x10C)
lbu t0,0(t8)
seek(0x236FB0+0x12C)
lbu t2,0(t9)
seek(0x236FB0+0x14C)
lbu t6,0(t3)
seek(0x236FB0+0x16C)
lbu t8,0(t5)
seek(0x236FB0+0x190)
lbu a1,0(t1)
seek(0x236FB0+0x234)
addiu t5,t8,1
seek(0x236FB0+0x240)
lbu t1,0(t0)

seek(0x2368D0+0x18)
lbu t6,0(a0)
seek(0x2368D0+0x24)
lbu t7,0(a0)
seek(0x2368D0+0x68)
lbu t2,0(a0)
seek(0x2368D0+0x80)
lbu t3,0(a0)
seek(0x2368D0+0x9C)
lbu t5,0(a0)
seek(0x2368D0+0xB8)
lbu t7,0(a0)
seek(0x2368D0+0xD4)
lbu t9,0(a0)
seek(0x2368D0+0xF0)
lbu t1,0(a0)
seek(0x2368D0+0x10C)
lbu t3,0(a0)
seek(0x2368D0+0x124)
lbu t6,0(a0)
seek(0x2368D0+0x164)
lbu t6,1(a0)
seek(0x2368D0+0x218)
addiu a0,a0,1
lbu t4,0(a0)

//--Left Side Text (Disk 0x239B50 / RAM 802AC310)
seek(0x239B50)
print1_1:
textEntryH("Exit")			//RAM 802AC310 - でる
print1_2:
textEntryH("Normal")			//RAM 802AC318 - ふつう
print1_3:
textEntryH("Small")			//RAM 802AC320 - ちいさい
print1_4:
textEntryH("Split in 2")		//RAM 802AC32C - 2まいつなぎ
print1_5:
textEntryH("Split in 4")		//RAM 802AC33C - 4まいつなぎ
print1_6:
textEntryH("Make a Message")		//RAM 802AC34C - メッセージつくる (UNUSED)
print1_7:
textEntryH("Normal: High Quality")	//RAM 802AC360 - ふつう:がしつゆうせん
print1_8:
textEntryH("Small: High Quality")	//RAM 802AC378 - ちいさい:がしつゆうせん
print1_9:
textEntryH("Normal: Fast Speed")	//RAM 802AC394 - ふつう:はやさゆうせん
print1_10:
textEntryH("Small: Fast Speed")		//RAM 802AC3AC - ちいさい:はやさゆうせんト

seek(0x239C08)
textEntrySkip(16); dw (print1_1)
textEntrySkip(16); dw (print1_2)
textEntrySkip(16); dw (print1_3)
textEntrySkip(16); dw (print1_4)
textEntrySkip(16); dw (print1_5)
textEntrySkip(20)
textEntrySkip(16); dw (print1_1)
textEntrySkip(16); dw (print1_7)
textEntrySkip(16); dw (print1_8)
textEntrySkip(16); dw (print1_9)
textEntrySkip(16); dw (print1_10)
textEntrySkip(16); dw (print1_4)
textEntrySkip(20)
textEntrySkip(16); dw (print1_1)


//--Right Side Text (Disk 0x239D34 / RAM 802AC4F0)
seek(0x239D34)
print2_1:
textEntryH("Print All")			//RAM 802AC4F4 - すべてプリント
print2_2:
textEntryH("Print A Only")		//RAM 802AC504 - Aだけプリント
print2_3:
textEntryH("Print B Only")		//RAM 802AC514 - Bだけプリント
print2_4:
textEntryH("Print C Only")		//RAM 802AC524 - Cだけプリント
print2_5:
textEntryH("Print D Only")		//RAM 802AC534 - Dだけプリント

seek(0x239D84)
textEntrySkip(16); dw (print2_1)
textEntrySkip(16); dw (print2_2)
textEntrySkip(16); dw (print2_3)
textEntrySkip(20)
textEntrySkip(16); dw (print2_1)
textEntrySkip(16); dw (print2_2)
textEntrySkip(16); dw (print2_3)
textEntrySkip(16); dw (print2_4)
textEntrySkip(16); dw (print2_5)


//--Bottom Side Text (Disk 0x239E4C / RAM 802AC60C)
seek(0x239E4C)
print3_1:
textEntryH("Yellow Paper")		//RAM 802AC60C - はいけいのいろ:きいろ
print3_2:
textEntryH("Blue Paper")		//RAM 802AC624 - はいけいのいろ:あお
print3_3:
textEntryH("White Paper")		//RAM 802AC63C - はいけいのいろ:しろ
print3_4:
textEntryH("Reset")			//RAM 802AC654 - ひょうじゅんにもどすう

seek(0x239EAC)
textEntrySkip(16); dw (print3_1)
textEntrySkip(16); dw (print3_2)
textEntrySkip(16); dw (print3_3)
textEntrySkip(16); dw (print3_4)
textEntrySkip(20)
textEntrySkip(16); dw (print3_4)

seek(0x239EEC)
dw $100
seek(0x239F14)
dw $100


//--Zoom (Disk 0x239F78 / RAM 802AC738)
seek(0x239F78)
textEntryH("Zoom")			//いちぶかくだい

seek(0x230946)
dh $00F6	//X Pos


//--Print Another (Disk 0x239FB4 / RAM 802AC774)
seek(0x239FB4)
print5_1:
textEntryH("Do you want to print another copy?")	//RAM 802AC774 - もう1 まい おなじものを プリントしますか?
print5_2:
textEntryH("Print another")				//RAM 802AC7A4 - プリントする
print5_3:
textEntryH("Stop")					//RAM 802AC7B4 - プリントしない
print5_4:
textEntryH("U:2L:3R:4D:5")				//RAM 802AC7C4 - U…2L…3R…4D…5 (???)

seek(0x232C2E)
dh (print5_1)
seek(0x232C36)
dh $0053
seek(0x232C46)
dh (print5_2)
seek(0x232C5E)
dh (print5_3)
seek(0x23330E)
dh (print5_4)


//--Error Messages (Disk 0x261240 / RAM 802D3A00)
//RAM 802D94E0 - Error ID
seek(0x261240)
printe_1:
//RAM 802D3A00 - 64GBケーブルが\nせつぞくされていないか、\nゲームボーイのでんげんが\nはいっていません。
textEntryH("The N64 Transfer Cable is\nnot connected, or the Game Boy is\nnot powered on.")
printe_2:
//RAM 802D3A5A - 64GBケーブルいがいのものが\nせつぞくされています。
textEntryH("Please connect the\nN64 Transfer Cable.")
printe_3:
//RAM 802D3A94 - 64GBケーブルのつうしんに\nしっぱいしました。
textEntryH("Connection with the\nN64 Transfer Cable has failed.")
printe_4:
//RAM 802D3AC8 - つうしんエラーが はっせいしました。
textEntryH("A communication error\nhas occurred.")
printe_5:
//RAM 802D3AF0 - ポケットプリンタの でんげん\nスイッチが はいっていないか、\nつうしんケーブルが ぬけている\nかのうせいがあります。
textEntryH("The Game Boy Printer is\nnot powered on, or the\nGame Boy Game Link is\nnot connected.")
printe_6:
//RAM 802D3B68 - ポケットプリンタの でんちが\n しょうもうしている\nかのうせいがあります。
textEntryH("The batteries of the\nGame Boy Printer\nmay be empty.")
printe_7:
//RAM 802D3BB4 - ポケットプリンタが\nかみづまりしている\nかのうせいがあります。
textEntryH("The Game Boy Printer\nmay be jammed.")
printe_8:
//RAM 802D3BF4 - ポケットプリンタの\nしようおんど はんいがいの\nかんきょうで しようされている\nかのうせいがあります。
textEntryH("The Game Boy Printer may be\ntoo hot or too cold.")
printe_9:
//RAM 802D3C5C - ポケットプリンタいがいのものが\nせつぞくされています。
textEntryH("Something other than a\nGame Boy Printer is connected.")
printe_10:
//RAM 802D3C94 - ポケットプリンタが\nほかのデータを いんさつしているか、\nフィードボタンが おされている\nかのうせいがあります。
textEntryH("The Game Boy Printer is busy\nprinting another image, or the\nFeed button has been pressed.")
printe_11:
//RAM 802D3D08 - ポケットプリンタの つうしんエラーが\nはっせいしました。
textEntryH("A communication error with the\nGame Boy Printer has occurred.")
printe_12:
//RAM 802D3D44 - ただしいGBプリンタカートリッジが\nささっていません
textEntryH("The Game Boy Printer Pak\nis not inserted.")
printe_13:
//RAM 802D3D7C - プリンタと NINTENDO64 が\nせつぞくされていません。
textEntryH("The Game Boy Printer and\nNintendo 64 are not connected.")
printe_14:
//RAM 802D3DBC - プリンタと NINTENDO64 との\nせつぞくが きれた\nかのうせいがあります。
textEntryH("The connection between the\nGame Boy Printer and\nNintendo 64 has been cut off.")
printe_15:
//RAM 802D3E10 - プリントを やめました。
textEntryH("The print has been stopped.")
printe_16:
//RAM 802D3E2C - まえのプリントしょりを ちゅうし します。
textEntryH("The print will be cancelled.")
printe_17:
//RAM 802D3E58 - ポケットプリンタではなく\nカラープリンタが\nせつぞくされています。
textEntryH("The Game Boy Printer Color\nis connected instead of\nthe Game Boy Printer.")
printe_18:
//RAM 802D3E9C - カラープリンタではなく\nポケットプリンタが\nせつぞくされています。
textEntryH("The Game Boy Printer\nis connected instead of\nthe Game Boy Printer Color.")
printe_19:
//RAM 802D3EE0 - プリンタのせつぞくを かくにんできません。\n
textEntryH("Unable to verify connection\nwith the Game Boy Printer.\n")
printe_20:
//RAM 802D3F10 - プリンタを せつぞくしてください。
textEntryH("Please connect the\nGame Boy Printer.")
printe_21:
//RAM 802D3F34 - カラープリンタの でんちが\n しょうもうしている\nかのうせいがあります。
textEntryH("The batteries of the\nGame Boy Printer Color\nmay be empty.")
printe_22:
//RAM 802D3F80 - カラープリンタの でんげん\nスイッチが はいっていないか、\nつうしんケーブルが ぬけている\nかのうせいがあります。
textEntryH("The Game Boy Printer Color\nis not powered on, or the\nGame Boy Game Link\nis not connected.")
printe_23:
//RAM 802D3FF4 - カラープリンタが\nかみづまりしている\nかのうせいがあります。
textEntryH("The Game Boy Printer Color\nmay be jammed.")
printe_24:
//RAM 802D4034 - カラープリンタの カバーが\nひらいています。
textEntryH("The cover of the\nGame Boy Printer Color\nmay be opened.")
printe_25:
//RAM 802D4064 - カラープリンタの ようしが\nありません。
textEntryH("The Game Boy Printer Color\nis out of paper.")
printe_26:
//RAM 802D4090 - カラープリンタの\nしようおんど はんいがいの\nかんきょうで しようされている\nかのうせいがあります。
textEntryH("The Game Boy Printer Color\nmay be too hot or too cold.")
printe_27:
//RAM 802D40F8 - カラープリンタの つうしんエラーが\nはっせいしました。
textEntryH("A communication error with the\nGame Boy Printer Color\nhas occurred.")

seek(0x261970)
dw (printe_1),0,(printe_2),0
dw (printe_3),0,(printe_4),0
dw (printe_5),0,(printe_6),0
dw (printe_7),0,(printe_8),0
dw (printe_9),0,(printe_10),0
dw (printe_11),0,(printe_12),0
dw (printe_13),0,(printe_14),0
dw (printe_17),0,(printe_18),0
dw (printe_19),(printe_20),0,(printe_15)
dw 0,(printe_21),0,(printe_22)
dw 0,(printe_23),0,(printe_24)
dw 0,(printe_25),0,(printe_26)
dw 0,(printe_27),0,(printe_16)
dw 0
