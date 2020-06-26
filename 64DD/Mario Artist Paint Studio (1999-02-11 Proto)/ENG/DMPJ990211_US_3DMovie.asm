//3D Movie Mode
seek(0x1CAA48)
textEntry(168, "Save")			//Save Load / セーブ
textEntry(168, "Take Photo")		//Take Photo / しゃしんとる
textEntry(168, "Return")		//Exit / でる

textEntrySkip(168*11)

textEntry(168, "Go to Main Menu")	//Return to select screen / セレクトがめんにもどる

textEntrySkip(168*15)

textEntry(168, "Jurassic World")	//DinoWorld / きょうりゅうワールド
textEntry(168, "Planet Mars")		//Mars / かせいワールド
textEntry(168, "Sea World")		//SeaWorld / かいていワールド
textEntry(168, "Explore")		//Explore / たんけんする
textEntry(168, "Take Photo")		//Take Photo / しゃしんとる
textEntry(168, "Paint")			//2DPaint / 2Dペイント
textEntry(168, "Music")			//Select Music / BGMをえらぶ
textEntry(168, "Watch")			//Preview Mode / ぜんたいをみる
textEntry(168, "Save/Load")		//SaveLoad / セーブ・ロード
textEntry(168, "Next Page")		//Next / ページおくり
textEntry(168, "Next Page")		//Next / ページおくり
textEntry(168, "Next Page")		//Next / ページおくり
textEntry(168, "Change Texture")	//Change Texture / もようをかえる
textEntry(168, "Exit")			//Exit / でる
textEntry(168, "Reset")			//Return to default state / もとにもどす
textEntry(168, "Exit")			//Exit / でる
textEntry(168, "Music 1")		//BGM Type 1 / BGMタイプ1
textEntry(168, "Music 2")		//BGM Type 2 / BGMタイプ2
textEntry(168, "Music 3")		//BGM Type 3 / BGMタイプ3 (Unused)
textEntry(168, "Music 4")		//BGM Type 4 / BGMタイプ4 (Unused)
textEntry(168, "Stereo")		//Stereo / ステレオ
textEntry(168, "Mono")			//Mono / モノラル
textEntry(168, "Headphones")		//Headphones / ヘッドホン

//Hack
seek(0x183F06)
	dh $003A	//Take Photo
seek(0x183F16)
	dh $0029	//Return & Save (Buggy)

//Creature Names
seek(0x1EBFC4)
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
textEntry(60, "Pteranodon")		//Pteranadon / プテラノドン
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

textEntry(60, "Fish")		//Fish Control / こざかな

textEntrySkip(60)			//Chicken (Unused)
textEntrySkip(60)			//Steam (Unused)
textEntrySkip(60)			//Screen2 (Unused)
textEntrySkip(60)			//Splash (Unused)
textEntrySkip(60)			//Wake (Unused)
textEntrySkip(60)			//Bubble (Unused)
textEntrySkip(60)			//Shaft (Unused)
textEntrySkip(60)			//Colouring Book / ぬりえ (Unused)

textEntry(60, "Terrain")		//Sea Terrain / ちけい
textEntry(60, "Terrain")		//Dino Terrain / ちけい
textEntry(60, "Terrain")		//Mars Terrain / ちけい

//0x1FAFD0 - Explore Mode Text