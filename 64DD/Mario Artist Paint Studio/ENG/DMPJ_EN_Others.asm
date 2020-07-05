//Other Modes

//Gallery
seek(0x1856BC)
//作品がありません
//絵をかいて
//セーブしよう！
textEntryASCII0("There are no pictures.\nDraw a picture\nand save it!")

//Main Menu
seek(0x18A158)
base 0x8015BBB0
//2D Paint description (Shift-JIS) 0x18A178 - RAM 0x8015BBD0
desc_2dpaint1:
textEntryASCII0("Up to four artists")		//素材がいっぱい
desc_2dpaint2:
textEntryASCII0("can draw together")		//４人同時に
desc_2dpaint3:
textEntryASCII0("at the same time!")		//絵がかける　！
//2D Movie description (Shift-JIS) 0x18A1B0 - RAM 0x8015BC08
desc_2dmovie1:
textEntryASCII0("Bring your pictures")		//絵を動かして
desc_2dmovie2:
textEntryASCII0("to life by")			//アニメーションを
desc_2dmovie3:
textEntryASCII0("animating them!")		//つくろう　！
//3D World description (Shift-JIS) 0x18A1F0 - RAM 0x8015BC48
desc_3dworld1:
textEntryASCII0("Explore worlds")		//海底・恐竜・火星
desc_3dworld2:
textEntryASCII0("from sea to space")		//たんけんしながら
desc_3dworld3:
textEntryASCII0("and take pictures!")		//写真をとろう　！
//Gallery  description (Shift-JIS) 0x18A238 - RAM 0x8015BC90
desc_gallery1:
textEntryASCII0("Let's look at")		//作品紹介　！
desc_gallery2:
textEntryASCII0("all the pictures")		//今までかいた絵を
desc_gallery3:
textEntryASCII0("you've made so far!")		//みんなで見よう　！

//Change pointers & positions
seek(0x11DE96)
dh (desc_2dpaint1)
seek(0x11DE7E)
dh $001D
seek(0x11DEDA)
dh (desc_2dpaint2)
seek(0x11DEBE)
dh $001A
seek(0x11DF1E)
dh (desc_2dpaint3)
seek(0x11DF02)
dh $001B

seek(0x11DF72)
dh (desc_2dmovie1)
seek(0x11DF5A)
dh $0053
seek(0x11DF5E)
//dh $00B1
seek(0x11DFB6)
dh (desc_2dmovie2)
seek(0x11DF9A)
dh $006C
seek(0x11DF9E)
//dh $00B1
seek(0x11DFFA)
dh (desc_2dmovie3)
seek(0x11DFDE)
dh $005A
seek(0x11DFE2)
//dh $00BE

seek(0x11E04E)
dh (desc_3dworld1)
seek(0x11E036)
dh $0097
seek(0x11E03A)
//dh $00B1
seek(0x11E092)
dh (desc_3dworld2)
seek(0x11E076)
dh $0090
seek(0x11E07A)
//dh $00B1
seek(0x11E0D6)
dh (desc_3dworld3)
seek(0x11E0BA)
dh $0090
seek(0x11E0BE)
//dh $00BE

seek(0x11E12A)
dh (desc_gallery1)
seek(0x11E112)
dh $00D9
seek(0x11E116)
dh $00AC
seek(0x11E16E)
dh (desc_gallery2)
seek(0x11E152)
dh $00D1
seek(0x11E156)
dh $00B8
seek(0x11E1B2)
dh (desc_gallery3)
seek(0x11E196)
dh $00C8
seek(0x11E19A)
dh $00C4


//Default Container Names
//マリオ◆ギャラリー
textEntryASCIIBox(0x186128, "Mario", 0x86A6, "Gallery")
//ルイージ■ギャラリー
textEntryASCIIBox(0x18613C, "Luigi", 0x81A1, "Gallery")
//ワリオ●ギャラリー
textEntryASCIIBox(0x186154, "Wario", 0x819C, "Gallery")
//ピーチ♥ギャラリー
textEntryASCIIBox(0x186168, "Peach", 0x86A5, "Gallery")
//クッパ♠ギャラリー
textEntryASCIIBox(0x18617C, "Bowser", 0x86A3, "Gallery")

//リンク♣ボックス
textEntryASCIIBox(0x186190, "Link", 0x86A4, "Box")
//サムス▼ボックス
textEntryASCIIBox(0x1861A4, "Samus", 0x81A5, "Box")
//ヨッシー♪ボックス
textEntryASCIIBox(0x1861B8, "Yoshi", 0x81F4, "Box")
//ドンキー▲ボックス
textEntryASCIIBox(0x1861CC, "Donkey", 0x81A3, "Box")
//カービィ★ボックス
textEntryASCIIBox(0x1861E0, "Kirby", 0x819A, "Box")


//Disk Error Messages
//Error Message Function (Disk 0x761A8 / RAM 80002CE8)
//Disk Error ID RAM 80076414
//We really need a better text renderer!
seek(0xAB02C)
base 0x80037B6C
error_msg1:
//RAM 80037B6C - Error 0x22
//取扱説明書をお読みください。
textEntryASCII0("Please read the \ninstruction booklet.")

error_msg2:
//RAM 80037B90 - Error 0x31
//注意：アクセスランプ点滅中に
//ディスクを抜かないでください。
//詳しくは、取扱説明書をお読み
//ください。
//
//ディスクを差し込んでください。
textEntryASCII0("Please do not eject \nthe disk while the\naccess lamp is blinking.")

error_msg3:
//RAM 80037C1C - Error 0x2A
//ＮＩＮＴＥＮＤＯ　６４本体の
//電源スイッチを入れたときの
//「ペイントスタジオ」の
//ディスクを差し込んでください。
textEntryASCII0("Please power off the\nNintendo 64 Control Deck\nand insert the disk.")

error_msg4:
//RAM 80037C90 - Error 0x02
//ディスクを差し込みなおして
//ください。
textEntryASCII0("Please reinsert the disk.")

error_msg5:
//RAM 80037CBC - Error 0x2F
//間違ったディスクが差し込まれ
//ている可能性があります。
//正しいディスクに入れかえて
//ください。
textEntryASCII0("The wrong disk may\nhave been inserted.")

//Repoint
seek(0x761A8+0xA6)
dh (error_msg1)
seek(0x761A8+0xCE)
dh (error_msg4)
seek(0x761A8+0xF6)
dh (error_msg2)
seek(0x761A8+0x14A)
dh (error_msg3)
seek(0x761A8+0x1DE)
dh (error_msg5)
seek(0x761A8+0x256)
dh (error_msg1)
seek(0x761A8+0x2B6)
dh (error_msg5)
seek(0x761A8+0x31A)
dh (error_msg3)
seek(0x761A8+0x36A)
dh (error_msg1)
seek(0x761A8+0x392)
dh (error_msg1)


//Disk Error Number
//Function Set Number (Disk 0x76050 / RAM 80002B90)
seek(0xAB3E8)
error_num:
//RAM 80037F28
//ディスクエラー ーー
textEntryASCII0("Disk Error 00")
db 0,0

//Hack number
seek(0x76050+0x88)
addiu v0,v0,(error_num+15)
nop
addiu t9,0,0x20

seek(0x76050+0xA4)
addiu v0,v0,(error_num+15)
nop
addiu t3,a1,0x30
sb t3,0(v0)
addiu v0,v0,1

multu a1,a3
addiu t1,0,10
addiu t0,0,0x82
nop
nop
addiu v0,v0,1

seek(0x76050+0x114)
addiu t7,a2,0x30

seek(0x76050+0x140)
sb t7,-1(v0)

seek(0x76050+0x14C)
addiu t9,v1,0x30
jr ra
sb t9,0(v0)
