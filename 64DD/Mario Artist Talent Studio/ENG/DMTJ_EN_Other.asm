outputGame()

//--Main Menu
seek(0x12BC110)
textEntryH(40, "Talent Studio")		//タレントをつくる
textEntryH(40, "Movie Studio")		//ムービーをつくる
textEntryH(40, "Gallery")		//さくひんをみる
textEntryH(40, "Options")		//せっていする

//Options
seek(0x12BC9A8)
base 0x803122C8
option_mono:
textEntryH0("Mono")			//モノラル
option_stereo:
textEntryH0("Stereo")			//ステレオ
option_headphones:
textEntryH0("Headphones")		//ヘッドホン
option_slow:
textEntryH0("Slow")			//おそい
option_medium:
textEntryH0("Medium")			//ふつう
option_fast:
textEntryH0("Fast")			//はやい
option_sameA:
textEntryH0("Same as A Button")		//Aボタンとおなじ
option_slowCursor:
textEntryH0("Slower Cursor")		//カーソルがおそく
option_save:
textEntryH0("Save")			//けってい(セーブ)

//Change pointers
seek(0x12B9E8E); dh (option_mono)
seek(0x12B9EB2); dh (option_stereo)
seek(0x12B9ED6); dh (option_headphones)
seek(0x12B9EFA); dh (option_slow)
seek(0x12B9F1E); dh (option_medium)
seek(0x12B9F42); dh (option_fast)
seek(0x12B9F66); dh (option_sameA)
seek(0x12B9F8A); dh (option_slowCursor)
seek(0x12B9FAE); dh (option_save)

//--Credits
seek(0x12BA780)
base 0x803100A0
//Names
credits_name1:
textEntryASCII0("T. Sawano")
credits_name2:
textEntryASCII0("H. Kimura")
credits_name3:
textEntryASCII0("H. Matsuoka")
credits_name4:
textEntryASCII0("H. Fujii")
credits_name5:
textEntryASCII0("H. Kuwahara")
credits_name6:
textEntryASCII0("H. Matsunaga")
credits_name7:
textEntryASCII0("Y. Ohnishi")
credits_name8:
textEntryASCII0("M. Kamada")
credits_name9:
textEntryASCII0("E. Tomita")
credits_name10:
textEntryASCII0("D. Ohtsubo")
credits_name11:
textEntryASCII0("M. Wada")
credits_name12:
textEntryASCII0("N. Ikegawa")
credits_name13:
textEntryASCII0("R. Kobayashi")
credits_name14:
textEntryASCII0("J. Morii")
credits_name15:
textEntryASCII0("T. Toyoda")
credits_name16:
textEntryASCII0("M. Oshio")
credits_name17:
textEntryASCII0("T. Endo")
credits_name18:
textEntryASCII0("Y. Tawaraishi")
credits_name19:
textEntryASCII0("Y. Yamashita")
credits_name20:
textEntryASCII0("K. Kawamoto")
credits_name21:
textEntryASCII0("H. Yada")
credits_name22:
textEntryASCII0("Y. Ogawa")
credits_name23:
textEntryASCII0("K. Nishimura")
credits_name24:
textEntryASCII0("K. Totaka")
credits_name25:
textEntryASCII0("K. Nagata")
credits_name26:
textEntryASCII0("T. Minegishi")
credits_name27:
textEntryASCII0("Y. Ida")
credits_name28:
textEntryASCII0("K. Eguchi")
credits_name29:
textEntryASCII0("H. Nogami")
credits_name30:
textEntryASCII0("S. Takahashi")
credits_name31:
textEntryASCII0("T. Watanabe")
credits_name32:
textEntryASCII0("H. Kitagawa")
credits_name33:
textEntryASCII0("T. Senda")
credits_name34:
textEntryASCII0("N. Shimada")
credits_name35:
textEntryASCII0("Y. Ueda")
credits_name36:
textEntryASCII0("Y. Sasamoto")
credits_name37:
textEntryASCII0("H. Shimizu")
credits_name38:
textEntryASCII0("C. Reed")
credits_name39:
textEntryASCII0("T. Sugawara")
credits_name40:
textEntryASCII0("H. Kakui")
credits_name41:
textEntryASCII0("H. Yoshimoto")
credits_name42:
textEntryASCII0("S. Hasegawa")
credits_name43:
textEntryASCII0("D. Iwamoto")
credits_name44:
textEntryASCII0("H. Momose")
credits_name45:
textEntryASCII0("R. Shimamura")
credits_name46:
textEntryASCII0("A. Yamashita")
credits_name47:
textEntryASCII0("S. Ohata")
credits_name48:
textEntryASCII0("K. Hoshiba")
credits_name49:
textEntryASCII0("A. Shibuya")
credits_name50:
textEntryASCII0("K. Matsuura")
credits_name51:
textEntryASCII0("A. Shibata")
credits_name52:
textEntryASCII0("Super Mario Club")
credits_name53:
textEntryASCII0("S. Miyamoto")
credits_name54:
textEntryASCII0("H. Yamauchi")
credits_name56:
db $89
credits_name55:
textEntryASCII0("Nintendo")

//Titles
seek(0x12BAF60)
credits_title1:
textEntryASCII0("Mario Artist Talent Studio")
credits_title2:
textEntryASCII0(" ")
credits_title3:
textEntryASCII0("Producer")
credits_title4:
textEntryASCII0("Director")
credits_title5:
textEntryASCII0("Direction Adviser")
credits_title6:
textEntryASCII0("Designers")
credits_title7:
textEntryASCII0("Programmers")
credits_title8:
textEntryASCII0("Sound Composers")
credits_title9:
textEntryASCII0("Sound Programmer")
credits_title10:
textEntryASCII0("Advisers")
credits_title11:
textEntryASCII0("MOCAP Directors")
credits_title12:
textEntryASCII0("MOCAP Actors")
credits_title13:
textEntryASCII0("Talent Voices")
credits_title14:
textEntryASCII0("Part Voices")
credits_title15:
textEntryASCII0("Technical Support")
credits_title16:
textEntryASCII0("Special Thanks")
credits_title17:
textEntryASCII0(" ")
credits_title18:
textEntryASCII0("Supervisor")
credits_title19:
textEntryASCII0("Executive Producer")

//Credits Setup
seek(0x12BAA3C)
dw 5, (credits_title1), 0
dw 0, (credits_title2), 0
dw 6, 0, 0
dw 4, (credits_title3), 0
dw 2, (credits_name1), 0
dw 6, 0, 0
dw 4, (credits_title4), 0
dw 2, (credits_name2), 0
dw 6, 0, 0
dw 4, (credits_title5), 0
dw 2, (credits_name3), 0
dw 6, 0, 0
dw 4, (credits_title6), 0
dw 2, (credits_name2), 0
dw 2, (credits_name4), 0
dw 2, (credits_name5), 0
dw 2, (credits_name6), 0
dw 2, (credits_name7), 0
dw 2, (credits_name8), 0
dw 2, (credits_name9), 0
dw 2, (credits_name10), 0
dw 2, (credits_name11), 0
dw 2, (credits_name12), 0
dw 2, (credits_name13), 0
dw 2, (credits_name14), 0
dw 2, (credits_name15), 0
dw 2, (credits_name16), 0
dw 6, 0, 0
dw 4, (credits_title7), 0
dw 2, (credits_name17), 0
dw 2, (credits_name18), 0
dw 2, (credits_name19), 0
dw 2, (credits_name20), 0
dw 2, (credits_name21), 0
dw 2, (credits_name22), 0
dw 2, (credits_name23), 0
dw 6, 0, 0
dw 4, (credits_title8), 0
dw 2, (credits_name24), 0
dw 2, (credits_name25), 0
dw 2, (credits_name26), 0
dw 6, 0, 0
dw 4, (credits_title9), 0
dw 2, (credits_name27), 0
dw 6, 0, 0
dw 4, (credits_title10), 0
dw 2, (credits_name28), 0
dw 2, (credits_name29), 0
dw 6, 0, 0
dw 4, (credits_title11), 0
dw 2, (credits_name30), 0
dw 2, (credits_name31), 0
dw 6, 0, 0
dw 4, (credits_title12), 0
dw 2, (credits_name32), 0
dw 2, (credits_name33), 0
dw 2, (credits_name34), 0
dw 6, 0, 0
dw 4, (credits_title13), 0
dw 2, (credits_name35), 0
dw 2, (credits_name36), 0
dw 6, 0, 0
dw 4, (credits_title14), 0
dw 2, (credits_name37), 0
dw 2, (credits_name38), 0
dw 2, (credits_name16), 0
dw 2, (credits_name39), 0
dw 6, 0, 0
dw 4, (credits_title15), 0
dw 2, (credits_name40), 0
dw 2, (credits_name41), 0
dw 2, (credits_name42), 0
dw 6, 0, 0
dw 4, (credits_title16), 0
dw 2, (credits_name43), 0
dw 2, (credits_name44), 0
dw 2, (credits_name45), 0
dw 2, (credits_name46), 0
dw 2, (credits_name47), 0
dw 2, (credits_name48), 0
dw 2, (credits_name49), 0
dw 2, (credits_name50), 0
dw 2, (credits_name51), 0
dw 0, (credits_title17), 0
dw 2, (credits_name52), 0
dw 6, 0, 0
dw 4, (credits_title18), 0
dw 2, (credits_name53), 0
dw 6, 0, 0
dw 4, (credits_title19), 0
dw 3, (credits_name54), 0
dw 6, 0, 0
dw 6, 0, 0
dw 6, 0, 0
dw 1, (credits_name56), 0
dw 7, 0, 0

//TODO: Hiroshi Yamauchi's name has another Kanji added for some reason, should remove it

//--Disk Reinitialization
//Hold L + Down D-Pad + A from startup
seek(0x12BB080)
base 0x803109A0
disk_reinit1:
//RAM 803109A0
//ディスクのデータ領域を|初期化します。|すべてのさくひんが|消えてしまいますが|よろしいですか？
textEntryASCII0("This will initialize|the data of the disk.|All saved creations|will be lost.||Are you sure?")

//Hold L + Down D-Pad + B from startup
disk_reinit2:
//RAM 80310A00
//ディスクの自動セーブ領域を|初期化します。|自動セーブされた|さくひんやアルバムが|消えてしまいますが|よろしいですか？
textEntryASCII0("This will initialize the|auto-save area of the disk.|Automatically saved creations|and albums will be lost.||Are you sure?")

disk_reinit3:
//RAM 80310A74
//初期化しています。|ディスクを抜かないでください。
textEntryASCII0("Initialization...|Please do not eject the disk.")

//Repoint
//Function Disk 0x12B0D20 / RAM 80306640
seek(0x12B0D36); dh (disk_reinit2)
seek(0x12B0D42); dh (disk_reinit1)
//Function Disk 0x12B120C / RAM 80306B2C
seek(0x12B1226); dh (disk_reinit3)
//Function Disk 0x12B130C / RAM 80306C2C
seek(0x12B1346); dh (disk_reinit3)

//Window Size
//Function Disk 0x12B0D84 / RAM 803066A4
seek(0x12B0D9E); dh $00B0
seek(0x12B0DA6); dh $0094


//--Capture Pak
//Movie Studio Capture
seek(0x10CDB8)
base 0x801994F8
movie_capture_exit:
textEntryH0("Exit")	//RAM 801994F8 - でる
movie_capture_back:
textEntryH0("Return")	//RAM 80199500 - もどる

seek(0x10CDEC); dw (movie_capture_exit)
seek(0x10CE14); dw (movie_capture_back)

//Common Error Messages
seek(0x10CE58)
base 0x80199598
capture_error1:
//RAM 80199598
//電源を切ってから|キャプチャーカセットを|さしてください。
textEntryASCII0("Please power off the|N64 Control Deck and|insert the Capture Pak.")

capture_error2:
//RAM 801995D4
//映像を入力してください。
textEntryASCII0("Please plug the video cable.")

seek(0x9ADA2); dh (capture_error2)
//Window Size
seek(0x9ADAA); dh $00E0

seek(0x128474)
textEntryH0("Reset")	//カラーリセット


//--Transfer Pak
seek(0x126B60)
base 0x801B32A0
transferpak_error1:
transferpak_error2:
//Disk 0x126B60 / RAM 801B32A0 - コントローラ１に|64GBパックと|ポケットカメラを|さしてください。
textEntryASCII0("On Controller 1,|please insert the|N64 Transfer Pak and|the Game Boy Camera.")

//transferpak_error2:
//Disk 0x126BA0 / RAM 801B32E0 - コントローラ１の|64GBパックに|ポケットカメラを|さしてください。
//textEntryASCII0("On Controller 1,|please insert the|N64 Transfer Pak and|the Game Boy Camera.")

transferpak_error3:
//Disk 0x126BE0 / RAM 801B3320 - コントローラ１の|64GBパックには|ポケットカメラ以外の|カートリッジが|ささっています。|ポケットカメラを|さしてください。
textEntryASCII0("On Controller 1,|a different GB Game Pak|has been inserted.||Please insert the|Game Boy Camera into|the N64 Transfer Pak.")

transferpak_error4:
//Disk 0x126C58 / RAM 801B3398 - コントローラ１には|64GBパック以外の|周辺機器が|ささっています。|64GBパックと|ポケットカメラを|さしてください。
//textEntryASCII0("On Controller 1,|a different peripheral|has been inserted.|Please insert the|N64 Transfer Pak and|the Game Boy Camera.")

transferpak_error5:
//Disk 0x126CC8 / RAM 801B3408 - ゲームボーイ|カートリッジの|コネクタ部が異常です。|本体の電源を切り|64GBパックの|取扱説明書を|お読みください。
textEntryASCII0("Connection error.||Power off the|Nintendo 64 Control Deck|and refer to the|N64 Transfer Pak|Instruction Booklet.")

transferpak_error6:
//Disk 0x126D38 / RAM 801B3478 - 電源を切ってから|コントローラと|64GBパックと|ポケットカメラを|さしてください。
textEntryASCII0("Power off the|Nintendo 64 Control Deck|and plug a Controller,|the N64 Transfer Pak and|the Game Boy Camera.")

//Change Controller number offset
seek(0xAB102); dh $0031
seek(0xAB106); dh $000E

//Change pointer
seek(0xAB0BA); dh (transferpak_error5)
seek(0xAB0C6); dh (transferpak_error1)
seek(0xAB0CE); dh (transferpak_error2)
seek(0xAB0D6); dh (transferpak_error3)
seek(0xAB0DE); dh (transferpak_error1)
seek(0xAB0E2); dh (transferpak_error6)

//Function Set Window Size (Disk 0xAB11C / RAM 8013785C)
seek(0xAB11C+0x0A); dh $00B8
seek(0xAB11C+0x16); dh $00B8
seek(0xAB11C+0x22); dh $00B8
seek(0xAB11C+0x2E); dh $00CC
seek(0xAB11C+0x3A); dh $00D0
seek(0xAB11C+0x3E); dh $00CC
