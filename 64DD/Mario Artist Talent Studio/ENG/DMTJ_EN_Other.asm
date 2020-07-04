outputGame()

//Main Menu
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
