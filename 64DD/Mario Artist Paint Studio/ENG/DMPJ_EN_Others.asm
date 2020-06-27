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
