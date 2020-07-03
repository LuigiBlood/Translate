//3D World Mode
seek(0x1567B0)
textEntry(168, "Save")			//Save Load / さくひんセーブ
textEntry(168, "Return")		//Take Photo / もどる

seek(0x157038)
textEntry(168, "Go to Main Menu")	//Return to select screen / セレクトがめんにもどる

seek(0x157AB8)
textEntry(168, "Jurassic World")	//DinoWorld / きょうりゅうワールド
textEntry(168, "Planet Mars")		//Mars / かせいワールド
textEntry(168, "Sea World")		//SeaWorld / かいていワールド
textEntry(168, "Explore")		//Explore / たんけんする
textEntry(168, "Paint")			//2DPaint / もようペイント
textEntry(168, "Music")			//Select Music / BGM
textEntry(168, "Watch")			//Preview Mode / ぜんたいをみる
textEntry(168, "Save/Load")		//SaveLoad / セーブ・ロード
textEntry(168, "Next Page")		//Next / ページおくり
textEntry(168, "Next Page")		//Next / ページおくり
textEntry(168, "Next Page")		//Next / ページおくり
textEntrySkip(168)
textEntry(168, "Change Texture")	//Change Texture / もようをかえる
textEntry(168, "Exit")			//Exit / でる
textEntry(168, "Reset")			//Return to default state / もとにもどす
textEntry(168, "Exit")			//Exit / でる
textEntry(168, "Music 1")		//BGM Type 1 / BGMタイプ1
textEntry(168, "Music 2")		//BGM Type 2 / BGMタイプ2
textEntry(168, "Shuffle")		//BGM shuffle / シャッフル
textEntry(168, "Stereo")		//Stereo / ステレオ
textEntry(168, "Mono")			//Mono / モノラル
textEntry(168, "Headphones")		//Headphones / ヘッドホン

//Hack
seek(0x11745E)
	dh $0015 //Save
seek(0x11746E)
	dh $0021 //Return

seek(0x15AD64)
textEntry(52, "If you take a picture...")	//When you take a picture / しゃしんをとると…

//Photo Creature Names unlock (Shift-JIS)
seek(0x15ADE8)
textEntryASCII(24, "Turtle")		//T / カメ
textEntryASCII(24, "Shark")		//S / サメ
textEntryASCII(24, "Manta Ray")		//Ma / マンタ
textEntryASCII(24, "Mermaid")		//Me / にんぎょ
textEntryASCII(24, "Octopus")		//O / タコ
textEntrySkip(24*3)

textEntryASCII(24, "Raptor")		//R / ラプトル
textEntryASCII(24, "Stegosaurus")	//S / ステゴサウルス
textEntryASCII(24, "T-Rex")		//T / Ｔレックス
textEntryASCII(24, "Triceratops")	//T / トリケラトプス
textEntryASCII(24, "Gallimimus")	//G / ガリミマス
textEntrySkip(24*3)

textEntryASCII(24, "Gaburr")		//G / ガブール
textEntryASCII(24, "Filbert")		//F / フィルバート
textEntryASCII(24, "Jack")		//Gl / ジャック
textEntryASCII(24, "Colon")		//Sp / コロン
textEntryASCII(24, "Linda")		//L / リンダ


//Creature Names
seek(0x17990C)
textEntrySkip(60)			//Swell / マフグ (Unused)
textEntry(60, "Shark")			//Blue Shark / サメ
textEntry(60, "Dolphin")		//Dolphin / イルカ
textEntrySkip(60)			//Palm Tree (Unused)
textEntrySkip(60)			//Grouper / カサゴ (Unused)
textEntry(60, "Manta Ray")		//Manta Ray / マンタ
textEntrySkip(60)			//Cls1 (Unused)
textEntrySkip(60)			//Cls2 (Unused)
textEntry(60, "Octopus")		//Octopus / タコ
textEntry(60, "Turtle")			//Sea Turtle / カメ
textEntry(60, "Mermaid")		//Mermaid / にんぎょ

textEntry(60, "Brachiosaurus")		//Brachiosaurus  / ブラキオサウルス
textEntry(60, "Gallimimus")		//Gallimimus / ガリミマス
textEntrySkip(60)			//Hypsilophodon (Unused)
textEntry(60, "Pteranodon")		//Pter / プテラノドン
textEntry(60, "Raptor")			//Raptor / ラプトル
textEntry(60, "Stegosaurus")		//Stegosaurus / ステゴサウルス
textEntry(60, "Triceratops")		//Triceratops / トリケラトプス
textEntry(60, "T-Rex")			//T Rex / Tレックス

textEntrySkip(60)			//Bog (Unused)
textEntrySkip(60)			//Swatter (Unused)
textEntrySkip(60)			//Fly norm (Unused)
textEntrySkip(60)			//Flybluebot (Unused)
textEntrySkip(60)			//Flyhornet (Unused)
textEntrySkip(60)			//SkinTest (Unused)
textEntrySkip(60)			//littlehand (Unused)
textEntrySkip(60)			//bighand (Unused)
textEntrySkip(60)			//OTbedroom (Unused)
textEntrySkip(60)			//locust (Unused)
textEntrySkip(60)			//kitchen (Unused)
textEntrySkip(60)			//Drone (Unused)
textEntrySkip(60)			//Seaweed (Unused)
textEntrySkip(60)			//Smoke (Unused)
textEntrySkip(60)			//Hotrock (Unused)
textEntrySkip(60)			//Star (Unused)
textEntrySkip(60)			//FlyLounge (Unused)
textEntrySkip(60)			//Explorer (Unused)
textEntrySkip(60)			//Space (Unused)
textEntrySkip(60)			//Snorkyship (Unused)

textEntry(60, "Linda")			//Linda / リンダ
textEntry(60, "Laura")			//Laura / ララ
textEntry(60, "Colon")			//Colon / コロン
textEntry(60, "Jack")			//Jack / ジャック
textEntry(60, "Snorky")			//Snorky / スノーキー
textEntry(60, "Filbert")		//Flibbet / フィルバート
textEntry(60, "Gaburr")			//Gaburr / ガブール

textEntrySkip(60)			//Earth (Unused)
textEntrySkip(60)			//Asteroid (Unused)
textEntrySkip(60)			//Artist (Unused)
textEntrySkip(60)			//Gloobhouse (Unused)
textEntrySkip(60)			//Moon (Unused)
textEntrySkip(60)			//Tap (Unused)
textEntrySkip(60)			//Ufo (Unused)
textEntrySkip(60)			//Washline (Unused)
textEntrySkip(60)			//Wizzlehouse (Unused)

seek(0x17A5F0)
db "PPPPPPPPPPPP"	//Space it out for the number update
textEntry(60, "Fish 1")			//Fish Control / こざかな1

textEntrySkip(60)			//Chicken (Unused)
textEntrySkip(60)			//Steam (Unused)
textEntrySkip(60)			//Screen2 (Unused)
textEntrySkip(60)			//Splash (Unused)
textEntrySkip(60)			//Wake (Unused)
textEntrySkip(60)			//Bubble (Unused)
textEntrySkip(60)			//Shaft (Unused)
textEntrySkip(60)			//Colouring Book / ぬりえ (Unused)

seek(0x17A80C)
textEntry(60, "Terrain 1")		//Sea Terrain / ちけい1
textEntry(60, "Terrain 1")		//Dino Terrain / ちけい1
textEntry(60, "Terrain 1")		//Mars Terrain / ちけい1

//Move the number for "Fish ", fixes "Pteranodon" (80129120)
seek(0x117B86)	//800E95DC
	dh 0x0019
seek(0x117DB6)	//800E980C
	dh 0x9139
seek(0x11823E)	//800E9C94
	dh 0x9139

//Move the number for "Terrain 1" (80128FD0)
seek(0x117B9E)	//800E95F4
	dh 0x8FE3
seek(0x11804A)	//800E9AA0
	dh 0x8FE3
seek(0x1184CA)	//800E9F20
	dh 0x8FE3


//When you unlock a creature in 3D World
seek(0x1898F4)
textEntryASCII0(" ")				//が
seek(0x1898FC)
textEntryASCII0("is now available!")		//つかえるようになりました！

//Change position
seek(0x118D82)	//800EA7D8 - Creature Name
dh $00A8
seek(0x118E62)	//800EA8B8 - is now available!
dh $0074


seek(0x18A2E4)
//セーブをしないと
//作品が消えますが
//よろしいですか？
textEntryASCII0("If you don't save,\nyour work will be lost. \nAre you sure?")

//3D World Explore (Text)
seek(0x18AC48)
base 0x8015C6A0
explore_controller:
textEntry0("This mode uses the controller.")	//このモードは
explore_empty:
dh 0x5000, 0x0000				//コントローラでそうさします
explore_start:
textEntryASCII0("Press A Button to start!")	//Ａ・Ｚボタンでスタート！
explore_zoomin:
textEntry0("Zoom In")				//ちかづく
explore_zoomout:
textEntry0("Zoom Out")				//とおざかる
explore_left:
textEntry0("Turn Left")				//ひだりかいてん
explore_right:
textEntry0("Turn Right")			//みぎかいてん
explore_move:
textEntry0("Move")				//ほうこうをきめる
explore_exit:
textEntry0("Exit")				//でる
explore_run:
textEntry0("Run/Swim")				//はしる
						//およぐ
explore_take:
textEntry0("Take Photo")			//しゃしんをとる
explore_photo:
textEntry0("Photo Mode")			//さつえいモード
explore_circle:
dh 0x5000,0x00B7, 0x0000			//●
explore_camera:
textEntry0("Camera")				//カメラそうさ

//3D World Explore - Repoint
seek(0x12713A); dh (explore_controller)
seek(0x127186); dh (explore_empty)
seek(0x1271CA); dh (explore_start)
seek(0x12720E); dh (explore_zoomin)
seek(0x127252); dh (explore_zoomout)
seek(0x127296); dh (explore_left)
seek(0x1272DA); dh (explore_right)
seek(0x12731E); dh (explore_move)
seek(0x127362); dh (explore_exit)
seek(0x1273A6); dh (explore_run)
seek(0x1273EA); dh (explore_empty)
seek(0x12742E); dh (explore_take)
seek(0x127472); dh (explore_photo)
seek(0x1274B6); dh (explore_circle)
seek(0x1274FA); dh (explore_camera)

//3D World Explore - Move Text
seek(0x127346); dh $0051	//Exit
seek(0x127412); dh $00C8	//Take Photo


//3D World Explore Controls Display Hack
//Exit (Black Box)
seek(0x164644) //RAM 8013609C
dh 0x3D, 0x1E, 0x2C
seek(0x16466C) //RAM 801360C4
dh 0x3E, 0x1F, 0x2A

//Move (Black Box)
seek(0x16470C)
dh 0x3E, 0x99, 0x30
seek(0x164B1C)
dh 0x3D, 0x98, 0x32

//Exit (Line)
seek(0x16475C)
dh 0x68, 0x27, 0x24
seek(0x164784)
dh 0x67, 0x26, 0x26
