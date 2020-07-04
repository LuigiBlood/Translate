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


//--Disk Reinitialization
//Hold L + Down D-Pad + B from startup
seek(0x12BB080)
base 0x803109A0
disk_reinit1:
//RAM 803109A0
//ディスクのデータ領域を|初期化します。|すべてのさくひんが|消えてしまいますが|よろしいですか？
textEntryASCII0("This will initialize|the data of the disk.|All saved creations|will be lost.||Are you sure?")

//Hold L + Down D-Pad + A from startup
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
