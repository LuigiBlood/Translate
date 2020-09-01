//Movie Studio
outputGame()

//Movie Studio Mode - Main & Background
//Code Overlay (Disk 0x1045000 / RAM 803868D0)
seek(0x1045000)
base 0x803868D0

//Page
seek(0x10BF130); textEntryH0("")	//ページ

//--Movie Studio Main Messages
seek(0x10BF628)
movie1_1:
//おてほんムービーを|よびだしますが|よろしいですか？
textEntryASCII0("Are you sure you want|to load a sample movie?")
movie1_2:
//このムービーは|セーブされていません。|★|「ムービーをつくる」に|のこしておきますか？
textEntryASCII0("This movie hasn't been saved.||")
skip(-1)
movie1_3:
//このムービーを|「ムービーをつくる」に|のこしておきますか？
textEntryASCII0("Would you like to keep|this movie in the Movie Studio?")
movie1_4:
//セーブデータが壊れています。|データをクリアしました。
movie1_5:
//セーブデータが壊れています。|データをクリアしました。
textEntryASCII0("The save data is corrupted.|The data has been cleared.")
movie1_6:
//ムービーが|消えますが|本当によろしいですか？
textEntryASCII0("The movie will be lost.|Are you sure?")

seek(0x104F562); dh (movie1_1)
seek(0x104F58A); dh $0003
seek(0x104F596); dh (movie1_2)
seek(0x104F5DA); dh (movie1_3)
seek(0x104F61E); dh (movie1_4)
seek(0x104F666); dh (movie1_5)
seek(0x104F692); dh (movie1_6)

//--Movie Studio Buttons
seek(0x10BF9F4)
movie2_1:
textEntryH0("Back to Main Menu")	//セレクトがめんにもどる
movie2_2:
textEntryH0("Select Actors")		//しゅつえんタレントをきめる
movie2_3:
textEntryH0("Select Backgrounds")	//はいけいをきめる
movie2_4:
textEntryH0("Movie Production")		//さつえい・えんしゅつ
movie2_5:
textEntryH0("Watch Movie")		//ためしにみる
movie2_6:
textEntryH0("Save/Load Movie")		//[ムービー]のセーブ・ロード
movie2_7:
textEntryH0("Sample Movie 1")		//おてほんムービー1
movie2_8:
textEntryH0("Sample Movie 2")		//おてほんムービー2
movie2_9:
textEntryH0("Sample Movie 3")		//おてほんムービー3
movie2_10:
textEntryH0("Clear Movie")		//ムービーをけす

seek(0x1052EFE); dh (movie2_1)
seek(0x1053046); dh (movie2_2)
seek(0x105313E); dh (movie2_3)
seek(0x105322A); dh (movie2_4)
seek(0x10532F2); dh (movie2_5)
seek(0x1052F92); dh (movie2_6)
seek(0x10534AE); dh (movie2_10)
seek(0x10BFAD0); dw (movie2_7), (movie2_8), (movie2_9)


//--Select Background
seek(0x10BFDE4)
movie3_1:
textEntryH0("Exit")			//でる
movie3_2:
textEntryH0("Samples")			//はいけいのサンプル
movie3_3:
textEntryH0("Load Picture")		//[2Dさくひん]のロード
movie3_4:
textEntryH0("Save Picture")		//[2Dさくひん]のセーブ
movie3_5:
textEntryH0("Select Music")		//BGMをえらぶ
movie3_6:
textEntryH0("Capture Pak")		//キャプチャーカセット
movie3_7:
textEntryH0("Game Boy Camera")		//ポケットカメラ
movie3_8:
textEntryH0("Shuffle")			//らくちんスイッチ
movie3_9:
textEntryH0("Undo")			//やりなおし
movie3_10:
textEntryH0("Erase")			//とりけし
movie3_11:
textEntryH0("Background 1")		//はいけい1
//Page 1
movie3_12:
textEntryH0("Sky 1")			//そら1
movie3_13:
textEntryH0("Sky 2")			//そら2
movie3_14:
textEntryH0("Sea 1")			//うみ1
movie3_15:
textEntryH0("Sea 2")			//うみ2
movie3_16:
textEntryH0("Underwater 1")		//すいちゅう1
movie3_17:
textEntryH0("Underwater 2")		//すいちゅう2
movie3_18:
textEntryH0("Desert")			//さばく
//Page 2
movie3_19:
textEntryH0("Plains")			//こうや
movie3_20:
textEntryH0("Moonlight")		//つきよ
movie3_21:
textEntryH0("Bamboo Grove")		//ちくりん
movie3_22:
textEntryH0("Snowy 1")			//ゆきげしき1
movie3_23:
textEntryH0("Snowy 2")			//ゆきげしき2
movie3_24:
textEntryH0("Forest 1")			//もり1
movie3_25:
textEntryH0("Forest 2")			//もり2
//Page 3
movie3_26:
textEntryH0("Fallen Leaves")		//おちばなみき
movie3_27:
textEntryH0("Cherry Blossoms")		//さくら
movie3_28:
textEntryH0("Town 1")			//むら1
movie3_29:
textEntryH0("Town 2")			//むら2
movie3_30:
textEntryH0("Town 3")			//むら3
movie3_31:
textEntryH0("Town 4")			//むら4
movie3_32:
textEntryH0("Road")			//どうろ
//Page 4
movie3_33:
textEntryH0("Watermill")		//すいしゃごや
movie3_34:
textEntryH0("Castle")			//おしろ
movie3_35:
textEntryH0("City 1")			//ビル1
movie3_36:
textEntryH0("City 2")			//ビル2
movie3_37:
textEntryH0("City 3")			//ビル3
movie3_38:
textEntryH0("City 4")			//ビル4
movie3_39:
textEntryH0("Wall 1")			//かべ1
//Page 5
movie3_40:
textEntryH0("Wall 2")			//かべ2
movie3_41:
textEntryH0("School")			//がっこう
movie3_42:
textEntryH0("Blackboard")		//こくばん
movie3_43:
textEntryH0("Computer")			//パソコン
movie3_44:
textEntryH0("Locker Room")		//ロッカールーム
movie3_45:
textEntryH0("Stairway")			//かいだん
movie3_46:
textEntryH0("Shopping District")	//しょうてんがい
//Page 6
movie3_47:
textEntryH0("Apartment 1")		//アパート1
movie3_48:
textEntryH0("Apartment 2")		//アパート2
movie3_49:
textEntryH0("Tatami Room")		//ざしき
movie3_50:
textEntryH0("Stage")			//ぶたい
movie3_51:
textEntryH0("Car Seats")		//くるまのなか
movie3_52:
textEntryH0("Tunnel")			//トンネル
movie3_53:
textEntryH0("Ring")			//リング
//Page 7
movie3_54:
textEntryH0("Earth")			//ちきゅう
movie3_55:
textEntryH0("Moon")			//げつめん
movie3_56:
textEntryH0("Space")			//うちゅう
movie3_57:
textEntryH0("Pipes")			//パイプ
movie3_58:
textEntryH0("Mist")			//もや
movie3_59:
textEntryH0("Lovey-Dovey")		//ラブラブ
movie3_60:
textEntryH0("???")			//???
//Page 8
movie3_61:
textEntryH0("Lights")			//ライト
movie3_62:
textEntryH0("Spot")			//スポット
movie3_63:
textEntryH0("Flames")			//メラメラ
movie3_64:
textEntryH0("Time Tunnel")		//タイムトンネル
movie3_65:
textEntryH0("Explosion")		//ドッカーン
movie3_66:
textEntryH0("Ta-dah!")			//ジャン!
movie3_67:
textEntryH0("Miracle")			//ミラクル

seek(0x1058DF2); dh (movie3_3)
seek(0x1058F3A); dh (movie3_4)
seek(0x1059082); dh (movie3_2)
seek(0x10591EE); dh (movie3_1)
seek(0x10592B6); dh (movie3_6)
seek(0x10596A2); dh (movie3_7)
seek(0x10598EE); dh (movie3_9)
seek(0x1059C5E); dh (movie3_8)
seek(0x105999E); dh (movie3_10)

seek(0x1058CDA); dh (movie3_11)
seek(0x1058CE8); sb t8,11(a1)

seek(0x10C00FC)
dw (movie3_12),(movie3_13),(movie3_14),(movie3_15),(movie3_16),(movie3_17),(movie3_18)
dw (movie3_19),(movie3_20),(movie3_21),(movie3_22),(movie3_23),(movie3_24),(movie3_25)
dw (movie3_26),(movie3_27),(movie3_28),(movie3_29),(movie3_30),(movie3_31),(movie3_32)
dw (movie3_33),(movie3_34),(movie3_35),(movie3_36),(movie3_37),(movie3_38),(movie3_39)
dw (movie3_40),(movie3_41),(movie3_42),(movie3_43),(movie3_44),(movie3_45),(movie3_46)
dw (movie3_47),(movie3_48),(movie3_49),(movie3_50),(movie3_51),(movie3_52),(movie3_53)
dw (movie3_54),(movie3_55),(movie3_56),(movie3_57),(movie3_58),(movie3_59),(movie3_60)
dw (movie3_61),(movie3_62),(movie3_63),(movie3_64),(movie3_65),(movie3_66),(movie3_67)

//Page Number Text (Background)
seek(0x10455DC + 0xC)
lbu a0,0(v0)
sb v1,0(v0)
addiu v0,v0,1
seek(0x10455DC + 0x24)
sb 0,0(v0)

seek(0x104573C + 0x14)
sb 0,0(a0)
seek(0x104573C + 0x3C)
nop
nop
nop
nop

//Background Filenames
seek(0x10C0530)
movie4_1:
textEntryASCII0("Computer")		//パャRン
movie4_2:
textEntryASCII0("Computer")		//パソコン
movie4_3:
textEntryASCII0("Sky 1")		//そら1
movie4_4:
textEntryASCII0("Sky 2")		//そら2
movie4_5:
textEntryASCII0("Sea 1")		//うみ1
movie4_6:
textEntryASCII0("Sea 2")		//うみ2
movie4_7:
textEntryASCII0("Underwater 1")		//すいちゅう1
movie4_8:
textEntryASCII0("Underwater 2")		//すいちゅう2
movie4_9:
textEntryASCII0("Desert")		//さばく
movie4_10:
textEntryASCII0("Plains")		//こうや
movie4_11:
textEntryASCII0("Moonlight")		//つきよ
movie4_12:
textEntryASCII0("Bamboo Grove")		//ちくりん
movie4_13:
textEntryASCII0("Snowy 1")		//ゆきげしき1
movie4_14:
textEntryASCII0("Snowy 2")		//ゆきげしき2
movie4_15:
textEntryASCII0("Forest 1")		//もり1
movie4_16:
textEntryASCII0("Forest 2")		//もり2
movie4_17:
textEntryASCII0("Fallen Leaves")	//おちばなみき
movie4_18:
textEntryASCII0("Cherry Blossoms")	//さくら
movie4_19:
textEntryASCII0("Town 1")		//むら1
movie4_20:
textEntryASCII0("Town 2")		//むら2
movie4_21:
textEntryASCII0("Town 3")		//むら3
movie4_22:
textEntryASCII0("Town 4")		//むら4
movie4_23:
textEntryASCII0("Road")			//どうろ
movie4_24:
textEntryASCII0("Watermill")		//すいしゃごや
movie4_25:
textEntryASCII0("Castle")		//おしろ
movie4_26:
textEntryASCII0("City 1")		//ビル1
movie4_27:
textEntryASCII0("City 2")		//ビル2
movie4_28:
textEntryASCII0("City 3")		//ビル3
movie4_29:
textEntryASCII0("City 4")		//ビル4
movie4_30:
textEntryASCII0("Wall 1")		//かべ1
movie4_31:
textEntryASCII0("Wall 2")		//かべ2
movie4_32:
textEntryASCII0("School")		//がっこう
movie4_33:
textEntryASCII0("Blackboard")		//こくばん
movie4_34:
textEntryASCII0("Computer")		//パソコン
movie4_35:
textEntryASCII0("Locker Room")		//ロッカールーム
movie4_36:
textEntryASCII0("Stairway")		//かいだん
movie4_37:
textEntryASCII0("Shopping District")	//しょうてんがい
movie4_38:
textEntryASCII0("Apartment 1")		//アパート1
movie4_39:
textEntryASCII0("Apartment 2")		//アパート2
movie4_40:
textEntryASCII0("Tatami Room")		//ざしき
movie4_41:
textEntryASCII0("Stage")		//ぶたい
movie4_42:
textEntryASCII0("Car Seats")		//くるまのなか
movie4_43:
textEntryASCII0("Tunnel")		//トンネル
movie4_44:
textEntryASCII0("Ring")			//リング
movie4_45:
textEntryASCII0("Earth")		//ちきゅう
movie4_46:
textEntryASCII0("Moon")			//げつめん
movie4_47:
textEntryASCII0("Space")		//うちゅう
movie4_48:
textEntryASCII0("Pipes")		//パイプ
movie4_49:
textEntryASCII0("Mist")			//もや
movie4_50:
textEntryASCII0("Lovey-Dovey")		//ラブラブ
movie4_51:
textEntryASCII0("???")			//???
movie4_52:
textEntryASCII0("Lights")		//ライト
movie4_53:
textEntryASCII0("Spot")			//スポット
movie4_54:
textEntryASCII0("Flames")		//メラメラ
movie4_55:
textEntryASCII0("Time Tunnel")		//タイムトンネル
movie4_56:
textEntryASCII0("Explosion")		//ドッカーン
movie4_57:
textEntryASCII0("Ta-dah!")		//ジャン!
movie4_58:
textEntryASCII0("Miracle")		//ミラクル

seek(0x10C01DC)
dw (movie4_1),(movie4_2),(movie4_3),(movie4_4),(movie4_5),(movie4_6),(movie4_7),(movie4_8)
dw (movie4_9),(movie4_10),(movie4_11),(movie4_12),(movie4_13),(movie4_14),(movie4_15),(movie4_16)
dw (movie4_17),(movie4_18),(movie4_19),(movie4_20),(movie4_21),(movie4_22),(movie4_23),(movie4_24)
dw (movie4_25),(movie4_26),(movie4_27),(movie4_28),(movie4_29),(movie4_30),(movie4_31),(movie4_32)
dw (movie4_33),(movie4_34),(movie4_35),(movie4_36),(movie4_37),(movie4_38),(movie4_39),(movie4_40)
dw (movie4_41),(movie4_42),(movie4_43),(movie4_44),(movie4_45),(movie4_46),(movie4_47),(movie4_48)
dw (movie4_49),(movie4_50),(movie4_51),(movie4_52),(movie4_53),(movie4_54),(movie4_55),(movie4_56)
dw (movie4_57),(movie4_58)

seek(0x10C07A0)
textEntryASCII0("Background")		//背景登録
seek(0x10C07B4)
//textEntryASCII0("Background Capture")	//取り込み背景
seek(0x10C07C4)
//textEntryASCII0("Background Capture")	//取り込み背景
seek(0x10C07D4)
//textEntryASCII0("Background Capture")	//取り込み背景
seek(0x10C07E4)
//textEntryASCII0("Background Capture")	//取り込み背景
seek(0x10C07FC)
textEntryASCII0("Background")		//背景登録
seek(0x10C0808)
textEntryASCII0("BG")			//背景

seek(0x10C08D8)
textEntryASCII0("Movie Picture")	//ムービーの写真
seek(0x10C0A10)
textEntryASCII0("Movie")		//ムービー

seek(0x10C0A94)
textEntryH0("Rotate / Zoom (B Button)")		//かいてん・ズーム(Bボタン)

//--Movie Production
seek(0x10C0C84)
movie5_1:
textEntryH0("Shuffle")			//らくちんスイッチ
movie5_2:
textEntryH0("Exit")			//でる
movie5_3:
textEntryH0("Undo")			//やりなおし
movie5_4:
textEntryH0("Erase Scene")		//シーンをけす
movie5_5:
textEntryH0("Copy Scene")		//シーンのコピー
movie5_6:
textEntryH0("Paste Scene")		//シーンのよびだし
movie5_7:
textEntryH0("Create Scene")		//あたらしいシーンをつくる
movie5_8:
textEntryH0("Clear All Scenes")		//シーンをすべてけす
movie5_9:
textEntryH0("Movie Editing")		//ムービーのへんしゅう
movie5_10:
textEntryH0("Options")			//はじめのせってい
movie5_11:
textEntryH0("Casting")			//さつえいをする
movie5_12:
textEntryH0("Directing")		//えんしゅつをつける
movie5_13:
textEntryH0("Scene 00")			//シーン0
movie5_14:
textEntryH0("Play/Stop")		//さいせい/ていし
movie5_15:
textEntryH0("One/All Scenes")		//1シーン/すべてのシーン
movie5_16:
textEntryH0("Loop Scene")		//ループする/しない
movie5_17:
textEntryH0("Watch the entire movie")	//ムービーのぜんたいをみる

seek(0x10C0DCC)
dw (movie5_7),(movie5_4),(movie5_5),(movie5_6),(movie5_8)

seek(0x106D1FE); dh (movie5_1)
seek(0x1062FFA); dh (movie5_2)
seek(0x10630FE); dh (movie5_3)

seek(0x106A456); dh (movie5_9)
seek(0x106CB0E); dh (movie5_10)
seek(0x106A6CE); dh (movie5_11)
seek(0x106AB2A); dh (movie5_12)

seek(0x1065AE6); dh (movie5_13)
seek(0x1065B10); sb t3,6(v0)
seek(0x1065B18); sb 0,7(v0)
seek(0x1065B88); sb t6,6(v0)
seek(0x1065BB0); sb t8,7(v0)

seek(0x1065B26); dh (movie5_13)
seek(0x1067032); dh (movie5_13)
seek(0x1066F84); sb t5,movie5_13 + 6(at)
seek(0x1066F8C); sb 0,movie5_13 + 7(at)
seek(0x1066FF8); sb t8,movie5_13 + 6(at)
seek(0x106702C); sb t1,movie5_13 + 7(at)

seek(0x1069F72); dh (movie5_14)
seek(0x106A122); dh (movie5_15)
seek(0x106A22E); dh (movie5_16)
seek(0x106A33E); dh (movie5_17)

//--Error Messages
seek(0x10C0F10)
movie6_1:
movie6_4:
movie6_10:
//致命的エラーです。|山下を呼んでください。
textEntryASCII0("This is a fatal error.|Please call Yamashita.")
movie6_2:
movie6_5:
//５０シーン以上|シーンをつくることはできません。
textEntryASCII0("You cannot create more than 50 scenes.")
movie6_3:
//あたらしいシーンをつくるには|のこりの時間が|3.0秒以上必要です。
textEntryASCII0("You need at least 3.0 seconds left|to create a new scene.")
//movie6_4:
//致命的エラーです。|山下を呼んでください。
//textEntryASCII0("This is a fatal error.|Please call Yamashita.")
//movie6_5:
//５０シーン以上|シーンをつくることはできません。
//textEntryASCII0("You cannot create more than 50 scenes.")
movie6_6:
//ムービーの時間が|10.0秒オーバーするので|シーンのよびだしができません。
textEntryASCII0("You cannot paste this scene|as the movie length will exceed|by 10.0 seconds.")
movie6_7:
//すべてのシーンが|消えますが|本当によろしいですか？
textEntryASCII0("Are you sure you want|to delete all scenes?")
movie6_8:
//らくちんシーンをよびだすには|のこりの時間が|10.0秒以上必要です。
textEntryASCII0("You need at least 10.0 seconds left|to shuffle a new scene.")

movie6_9:
//お疲れ様です。|一時セーブします。
textEntryASCII0("Thanks for your work.|Saved temporarily.")
//movie6_10:
//致命的エラーです。|山下を呼んでください。
//textEntryASCII0("This is a fatal error.|Please call Yamashita.")

seek(0x106AD0A); dh (movie6_1)
seek(0x106ADE6); dh (movie6_2)
seek(0x106AE3A); dh (movie6_3)
seek(0x106AEBE); dh (movie6_4)
seek(0x106B352); dh (movie6_5)

seek(0x106B482); dh (movie6_6 + 63)
seek(0x106B48A); dh (movie6_6 + 63)
seek(0x106B4F6); dh (movie6_6 + 64)
seek(0x106B52E); dh (movie6_6 + 66)
seek(0x106B54E); dh (movie6_6)

seek(0x106BFBE); dh (movie6_7)
seek(0x106D2C6); dh (movie6_8)

seek(0x106FC42); dh (movie6_9)
seek(0x1070252); dh (movie6_10)


seek(0x10C1414)
movie7_1:
textEntryH0("Select Actor")		//タレントをえらぶ
movie7_2:
textEntryH0("Select Background")	//はいけいをえらぶ
movie7_3:
textEntryH0("Repeat Action")		//アクションのくりかえし
movie7_4:
textEntryH0("Item")			//アイテムをもたせる
movie7_5:
textEntryH0("Item Size")		//アイテムのスケール
movie7_6:
textEntryH0("Select Action")		//アクションをえらぶ
movie7_7:
textEntryH0("Select Camera Work")	//カメラワークをえらぶ
movie7_8:
textEntryH0("Make Action")		//アクションをつくる
movie7_9:
//textEntryH0("Make Camera Work")	//カメラワークをつくる
movie7_10:
textEntryH0("Make Camera Work")		//カメラワークをつくる
movie7_11:
textEntryH0("Background Color")		//はいけいのうしろのカラー
movie7_12:
textEntryH0("Go Back")			//ひとつまえにもどる
movie7_13:
textEntryH0("Movement")			//いどうアクション
movie7_14:
textEntryH0("Item")			//アイテムアクション
movie7_15:
textEntryH0("Feelings")			//きもちアクション
movie7_16:
textEntryH0("Weight")			//ウェイトアクション
movie7_17:
textEntryH0("Rhythm")			//リズムアクション
movie7_18:
textEntryH0("Battle")			//バトルアクション
movie7_19:
textEntryH0("Action Album")		//アルバムのアクション
movie7_20:
textEntryH0("Actor 1")			//タレント1
movie7_21:
textEntryH0("None")			//タレントなし
movie7_22:
textEntryH0("Background 1")		//はいけい1
movie7_23:
textEntryH0("None")			//はいけいなし
movie7_24:
textEntryH0("Repeat 1 time(s)")		//1かい

seek(0x10C15EC)
dw (movie7_13),(movie7_14),(movie7_15),(movie7_16),(movie7_17),(movie7_18),(movie7_19)

seek(0x107535E); dh (movie7_3)
seek(0x1078716); dh (movie7_4)
seek(0x107A5F6); dh (movie7_5)

seek(0x1078C0A); dh (movie7_6)
seek(0x1078F0A); dh (movie7_7)
seek(0x1079286); dh (movie7_8)
seek(0x1079292); dh (movie7_9)
seek(0x107929E); dh (movie7_10)
seek(0x1079106); dh (movie7_11)
seek(0x107C1C6); dh (movie7_12)

seek(0x1075CE6); dh (movie7_20)
seek(0x1075CEC); sb t3,6(a1)

seek(0x1075CE2); dh (movie7_21)

seek(0x10769C6); dh (movie7_22)
seek(0x10769E0); sb t4,11(a1)

seek(0x10769DE); dh (movie7_23)

seek(0x1078332); dh (movie7_24)
seek(0x1078344); sb t4,7(a1)

//Page Number Text (Camera)
seek(0x10A4608); sb t0,0(a2)
seek(0x10A4610); sb t1,2(a2)


seek(0x10C18B0)
movie8_1:
//タレントの|シーンのアクションが|消えますがよろしいですか？
textEntryASCII0("The action of the talent will be lost, are you sure?")
movie8_2:
//３Ｄさくひんの|シーンのアクションが|消えますがよろしいですか？
textEntryASCII0("The action of the 3D model will be lost, are you sure?")
movie8_3:
//写
textEntryASCII0("Photo")

seek(0x1075D8E); dh (movie8_1)
seek(0x1075D96); dh (movie8_2)
seek(0x10815E2); dh (movie8_3)


seek(0x10C1A34)
movie9_1:
textEntryH0("Actor")			//タレント
movie9_2:
textEntryH0("Effects")			//エフェクト
movie9_3:
textEntryH0("Sounds")			//サウンド
movie9_4:
textEntryH0("Auto Sounds")		//オートサウンド
movie9_5:
textEntryH0("Make Lighting")		//ひかりをつくる
movie9_6:
textEntryH0("Make Graffiti")		//らくがきをする
movie9_7:
textEntryH0("Make Caption")		//テロップをつくる
movie9_8:
textEntryH0("Record Sound")		//ろくおんをする
movie9_9:
textEntryH0("Normal Expression")	//ふつうのひょうじょう
movie9_10:
textEntryH0("Laugh Expression")		//わらったひょうじょう
movie9_11:
textEntryH0("Angry Expression")		//おこったひょうじょう
movie9_12:
textEntryH0("Sad Expression")		//こまったひょうじょう
movie9_13:
textEntryH0("Free Expression")		//フリーのひょうじょう
movie9_14:
textEntryH0("Sleep Expression")		//ねむったひょうじょう
movie9_15:
textEntryH0("Go Back")			//ひとつまえにもどる
movie9_16:
textEntryH0("Motion & Sounds")		//うごき・ものおと
movie9_17:
textEntryH0("Animals & Voices")		//どうぶつ・こえ
movie9_18:
textEntryH0("Instruments")		//がっき・メロディ
movie9_19:
textEntryH0("Sound Loops")		//なりつづくおと
movie9_20:
textEntryH0("Environments")		//かんきょうのおと
movie9_21:
textEntryH0("Talent Voice")		//タレントのこえ
movie9_22:
textEntryH0("Recorded")			//ろくおんしたおと

seek(0x10C1BD0)
dw (movie9_1),(movie9_2),(movie9_4),(movie9_3)
dw (movie9_16),(movie9_17),(movie9_18),(movie9_19),(movie9_20), (movie9_21), (movie9_22)

seek(0x1087C56); dh (movie9_15)
seek(0x1088FF2); dh (movie9_15)
seek(0x10894A2); dh (movie9_15)

seek(0x10883F2); dh (movie9_5)
seek(0x10883DA); dh (movie9_6)
seek(0x10883E6); dh (movie9_7)
seek(0x10883FE); dh (movie9_8)


//Movie Picture
seek(0x10C2210)
textEntryH(0x20, "Exit")		//でる
textEntryH(0x20, "Save Picture")	//[2Dさくひん]としてセーブ

//--Record Sound
seek(0x10C2E20)
textEntryASCII(0x20, "Please plug the audio cable.")	//音声を入力してください。
textEntryASCII(0x20, "...Recording...")			//……ロクオンチュウ……
textEntryASCII(0x20, "...Playback...")			//……サイセイチュウ……

seek(0x10C2F1C)
movie10_1:
//RAM 804047F0 - 電源を切ってから|キャプチャーカセットを|さしてください。
textEntryASCII0("Please power off the|N64 Control Deck and|insert the Capture Pak.")
movie10_2:
//RAM 8040482C - アルバムのおとを|消します。|よろしいですか？
textEntryASCII0("This recording will be deleted.|Are you sure?")

seek(0x10B956E); dh (movie10_1)
seek(0x10BA80E); dh (movie10_2)

//Movie Item List
seek(0x10BF208)
//Page 1
movie11_1:
textEntryH0("None")			//なし
movie11_2:
textEntryH0("Guitar")			//ギター
movie11_3:
textEntryH0("Electric Guitar")		//エレキギター
movie11_4:
textEntryH0("Clarinet")			//クラリネット
movie11_5:
textEntryH0("Saxophone")		//サックス
movie11_6:
textEntryH0("Microphone")		//ハンドマイク
movie11_7:
textEntryH0("Fan")			//ハリセン
//Page 2
movie11_8:
textEntryH0("Sword")			//けん
movie11_9:
textEntryH0("Axe")			//オノ
movie11_10:
textEntryH0("Spear")			//やり
movie11_11:
textEntryH0("Club")			//コンボウ
movie11_12:
textEntryH0("Claws")			//てつのツメ
movie11_13:
textEntryH0("Katana")			//カタナ
movie11_14:
textEntryH0("100t Hammer")		//100tハンマー
//Page 3
movie11_15:
textEntryH0("Staff")			//せんにんのつえ
movie11_16:
textEntryH0("Magic Wand")		//まほうのつえ
movie11_17:
textEntryH0("Pistol")			//ケンジュウ
movie11_18:
textEntryH0("Machine Gun")		//マシンガン
movie11_19:
textEntryH0("Rifle")			//ライフル
movie11_20:
textEntryH0("Sci-Fi Gun")		//SFガン
movie11_21:
textEntryH0("Sci-Fi Rifle")		//SFライフル
//Page 4
movie11_22:
textEntryH0("Juice")			//ジュース
movie11_23:
textEntryH0("French Fries")		//フライドポテト
movie11_24:
textEntryH0("Mushroom")			//キノコ
movie11_25:
textEntryH0("Meat")			//ほねつきにく
movie11_26:
textEntryH0("Plush Doll")		//ぬいぐるみ
movie11_27:
textEntryH0("Bag")			//バッグ
movie11_28:
textEntryH0("Briefcase")		//かわカバン
//Page 5
movie11_29:
textEntryH0("Broom")			//ホウキ
movie11_30:
textEntryH0("Pickaxe")			//つるはし
movie11_31:
textEntryH0("Umbrella")			//かさ
movie11_32:
textEntryH0("Car Wheel")		//くるまのハンドル
movie11_33:
textEntryH0("Fork")			//フォーク
movie11_34:
textEntryH0("Camera")			//カメラ
movie11_35:
textEntryH0("Game Boy")			//ゲームボーイ

check(0x10BF3B4)
seek(0x10BF3B4)
dw (movie11_1),(movie11_2),(movie11_3),(movie11_4),(movie11_5),(movie11_6),(movie11_7)
dw (movie11_8),(movie11_9),(movie11_10),(movie11_11),(movie11_12),(movie11_13),(movie11_14)
dw (movie11_15),(movie11_16),(movie11_17),(movie11_18),(movie11_19),(movie11_20),(movie11_21)
dw (movie11_22),(movie11_23),(movie11_24),(movie11_25),(movie11_26),(movie11_27),(movie11_28)
dw (movie11_29),(movie11_30),(movie11_31),(movie11_32),(movie11_33),(movie11_34),(movie11_35)


//Movie Studio Mode - Actors & Production
//Code Overlay (Disk 0xEF0010 / RAM 802FF800)
seek(0xEF0010)
base 0x802FF800

//--Animation List
seek(0xF46510)
//Talent Animations
movie12_1:
db $CB; textEntryH0(" Walk")	//おとこのコあるき
movie12_2:
db $CC; textEntryH0(" Walk")	//おんなのコあるき
movie12_3:
textEntryH0("Quiet Walk")		//そろそろあるき
movie12_4:
textEntryH0("Angry Walk")		//いばったあるき
movie12_5:
textEntryH0("Dizzy Walk")		//よろよろあるき
movie12_6:
textEntryH0("Crawl")			//ハイハイ
movie12_7:
textEntryH0("Sneak")			//ホフクぜんしん
movie12_8:
db $CB; textEntryH0(" Run")		//おとこのコばしり
movie12_9:
db $CC; textEntryH0(" Run")		//おんなのコばしり
movie12_10:
textEntryH0("Bend Running")		//のけぞりばしり
movie12_11:
textEntryH0("Panic")			//あわてばしり
movie12_12:
textEntryH0("Jogging")			//こばしり
movie12_13:
textEntryH0("Tired")			//ヘロヘロばしり
movie12_14:
textEntryH0("Skip")			    //スキップ
movie12_15:
db $CB; textEntryH0(" Stand")	//おとこのコウェイト
movie12_16:
db $CC; textEntryH0(" Stand")	//おんなのコウェイト
movie12_17:
textEntryH0("Look Around")		//きょろきょろ
movie12_18:
textEntryH0("Battle Stance")	//かまえる
movie12_19:
textEntryH0("Sit down")			//すわる
movie12_20:
textEntryH0("Cross-legged")		//あぐら
movie12_21:
textEntryH0("Dozing Off")		//いねむり
movie12_22:
db $CB; textEntryH0(" Jump")	//おとこのコジャンプ
movie12_23:
db $CC; textEntryH0(" Jump")	//おんなのコジャンプ
movie12_24:
textEntryH0("Fall Back")		//しりもちをつく
movie12_25:
textEntryH0("Fall Over")		//まえにころぶ
movie12_26:
textEntryH0("Sneaky!")			//「ズルッ!」
movie12_27:
textEntryH0("Faint")			//きぜつする
movie12_28:
textEntryH0("Step Away")		//あとずさりをする
movie12_29:
textEntryH0("Yup!")		        //「うん!」
movie12_30:
textEntryH0("I refuse!")		//「いやっ!」
movie12_31:
textEntryH0("Oh, I see!")		//「あ、そうか!」
movie12_32:
textEntryH0("Bow")	        	//おじぎをする
movie12_33:
textEntryH0("Claps")	    	//「パチ!パチ!」
movie12_34:
textEntryH0("Wave")	        	//てをふる
movie12_35:
textEntryH0("Give up")  		//「おてあげだよ」
movie12_36:
textEntryH0("Yawn")		        //あくびをする
movie12_37:
textEntryH0("Sneeze")   		//くしゃみをする
movie12_38:
textEntryH0("Collapse")	    	//たおれる
movie12_39:
textEntryH0("Above Hit")    	//うえからガツン
movie12_40:
textEntryH0("Front Hit")		//まえからガツン
movie12_41:
textEntryH0("Climb")	    	//よじのぼる
movie12_42:
textEntryH0("Falling")	    	//「アーレー!」
movie12_43:
textEntryH0("Surprised")		//「おっ!」
movie12_44:
textEntryH0("Shocked")	    	//「わあーっ!!」
movie12_45:
textEntryH0("Happy Jumps")		//「うれしい!」
movie12_46:
textEntryH0("Hurray!")	    	//「バンザーイ」
movie12_47:
textEntryH0("Victory!")		    //「やったぜ!!」
movie12_48:
textEntryH0("Laughing")		    //「はっはっは!」
movie12_49:
textEntryH0("Ahem!")		    //「エヘッ!」
movie12_50:
textEntryH0("Anger")	    	//「くやしーっ!」
movie12_51:
textEntryH0("Nervous")  		//「イライラ」
movie12_52:
textEntryH0("Crying")	    	//「えーん」
movie12_53:
textEntryH0("Wiping Tears")		//「シクシク」
movie12_54:
textEntryH0("Stop!")	    	//「やめてー」
movie12_55:
textEntryH0("I'm sorry!")		//「ごめん」
movie12_56:
textEntryH0("Freezing")	    	//「さむいよー」

movie12_57:
textEntryH0("Shaking Hips")		//こしふりダンス
movie12_58:
textEntryH0("Funky Dance")	    //ファンキーダンス
movie12_59:
textEntryH0("Aerobic Dance")    //エアロビダンス
movie12_60:
textEntryH0("Hula Dance")    	//フラダンス
movie12_61:
textEntryH0("Victory Dance")	//しょうりのおどり
movie12_62:
textEntryH0("Robot Dance")		//ロボダンス
movie12_63:
textEntryH0("Ballet Dance")		//バレエ
movie12_64:
textEntryH0("Line Dance")		//ラインダンス
movie12_65:
textEntryH0("Bon Festival")		//ぼんおどり
movie12_66:
textEntryH0("Cossack Dance")	//コサックダンス
movie12_67:
db $CB; textEntryH0(" Tapping")	//おとこのコリズム
movie12_68:
db $CC; textEntryH0(" Tapping")	//おんなのコリズム

movie12_69:
db $CB; textEntryH0(" Greeting")	//おとこのコあいさつ
movie12_70:
db $CC; textEntryH0(" Greeting")	//おんなのコあいさつ
movie12_71:
textEntryH0("Gymnastics")		//じゅうなんたいそう
movie12_72:
textEntryH0("Sit-up")		    //ふっきん
movie12_73:
textEntryH0("Squat Jump")		//うさぎとび
movie12_74:
textEntryH0("Chop")	        	//チョップ
movie12_75:
textEntryH0("Kick")     		//キック
movie12_76:
textEntryH0("Turning Kick")		//まわしげり
movie12_77:
textEntryH0("Punch Jab")    	//パンチ
movie12_78:
textEntryH0("Muscle Boast")		//からだじまん
movie12_79:
textEntryH0("Stomp")	    	//しこふみ
movie12_80:
textEntryH0("Handstand")		//さかだちあるき
movie12_81:
textEntryH0("Skating")  		//スケートすべり
movie12_82:
textEntryH0("Front Crawl")		//クロール
movie12_83:
textEntryH0("Breaststroke")		//ひらおよぎ
movie12_84:
textEntryH0("Diver Swim")		//ダイバーおよぎ
movie12_85:
textEntryH0("Clarinet")     	//クラリネットをふく
movie12_86:
textEntryH0("Staff Walk")		//つえをついてあるく
movie12_87:
textEntryH0("Electric Guitar")	//エレキギターをひく
movie12_88:
textEntryH0("Hold Spear")		//やりをかかげる
movie12_89:
textEntryH0("Machine Gun")		//マシンガンをうつ
movie12_90:
textEntryH0("Saxophone")		//サックスをふく
movie12_91:
textEntryH0("Guitar")			//ギターをひく
movie12_92:
textEntryH0("Pistol")			//ケンジュウをうつ
movie12_93:
textEntryH0("Broom")			//ホウキではく
movie12_94:
textEntryH0("Axe Swing")		//オノをふりまわす
movie12_95:
textEntryH0("Sword Swing")		//けんをふる
movie12_96:
textEntryH0("Pickaxe Dig")		//つるはしでほる
movie12_97:
textEntryH0("Shake Magic Wand")	//まほうのつえをふる
movie12_98:
textEntryH0("Sing on Microphone")	//マイクをもってうたう
movie12_99:
textEntryH0("Zombie Walk")		//ゾンビあるき
movie12_100:
textEntryH0("Robot Walk")		//ロボあるき
movie12_101:
textEntryH0("Monster Walk")		//かいじゅうあるき
movie12_102:
textEntryH0("Breathe Fire")		//ほのおをはく
movie12_103:
textEntryH0("Hero Transform!")	//ヒーローへんしん
movie12_104:
textEntryH0("Hero Jump")		//ヒーロージャンプ
movie12_105:
textEntryH0("Flying")			//そらをとぶ
movie12_106:
textEntryH0("Hero Kick!")		//ヒーローキック
movie12_107:
textEntryH0("Heroine Transform!")	//ヒロインへんしん
movie12_108:
textEntryH0("Floating")			//うちゅうゆうえい
movie12_109:
textEntryH0("March")			//こうしん
movie12_110:
textEntryH0("Salute")			//けいれい
movie12_111:
textEntryH0("Flap Walk")		//パタパタばしり
movie12_112:
textEntryH0("Bird Flap")		//パタパタそらをとぶ
movie12_113:
textEntryH0("Swing Katana")		//カタナをふる
movie12_114:
textEntryH0("Drink Juice")		//ジュースをのむ
movie12_115:
textEntryH0("Eating Fries")		//ポテトをつまむ
movie12_116:
textEntryH0("Eating Meat")		//にくをかじる
movie12_117:
textEntryH0("Holding Umbrella")	//かさをさしてあるく
movie12_118:
textEntryH0("Holding Wheel")	//ハンドルそうさ
movie12_119:
textEntryH0("Use Camera")		//しゃしんをとる
movie12_120:
textEntryH0("Action 1")			//アクション1
movie12_121:
textEntryH0("Action 10")		//アクション10

//3D Model Animations
//Page 1
movie12_122:
textEntryH0("Still")			//じっとしている
movie12_123:
textEntryH0("Roundabout")		//えんばんまわり
movie12_124:
textEntryH0("Somersault")		//ちゅうがえり
movie12_125:
textEntryH0("Drill")			//きりもみまわり
movie12_126:
textEntryH0("Rolling")			//さかみちゴロゴロ
movie12_127:
textEntryH0("Flatten")			//ぺちゃんこになる
movie12_128:
textEntryH0("Crash into Wall")	//かべにクラッシュ
//Page 2
movie12_129:
textEntryH0("Flabby")			//ブヨブヨうごく
movie12_130:
textEntryH0("Inflate")			//ぼわっとふくらむ
movie12_131:
textEntryH0("Shrink")			//ちっちゃくなる
movie12_132:
textEntryH0("Floating")			//ふわふわとぶ
movie12_133:
textEntryH0("Wobbly")			//ガクガクうごく
movie12_134:
textEntryH0("Bounce")			//バウンドする
movie12_135:
textEntryH0("It moves???")		//あるく???

check(0xF46D94)
seek(0xF46D94)
dw (movie12_1), (movie12_2), (movie12_3), (movie12_4), (movie12_5), (movie12_6), (movie12_7), (movie12_8)
dw (movie12_9), (movie12_10), (movie12_11), (movie12_12), (movie12_13), (movie12_14), (movie12_15), (movie12_16)
dw (movie12_17), (movie12_18), (movie12_19), (movie12_20), (movie12_21), (movie12_22), (movie12_23), (movie12_24)
dw (movie12_25), (movie12_26), (movie12_27), (movie12_28), (movie12_29), (movie12_30), (movie12_31), (movie12_32)
dw (movie12_33), (movie12_34), (movie12_35), (movie12_36), (movie12_37), (movie12_38), (movie12_39), (movie12_40)
dw (movie12_41), (movie12_42), (movie12_43), (movie12_44), (movie12_45), (movie12_46), (movie12_47), (movie12_48)
dw (movie12_49), (movie12_50), (movie12_51), (movie12_52), (movie12_53), (movie12_54), (movie12_55), (movie12_56)
dw (movie12_57), (movie12_58), (movie12_59), (movie12_60), (movie12_61), (movie12_62), (movie12_63), (movie12_64)
dw (movie12_65), (movie12_66), (movie12_67), (movie12_68), (movie12_69), (movie12_70), (movie12_71), (movie12_72)
dw (movie12_73), (movie12_74), (movie12_75), (movie12_76), (movie12_77), (movie12_78), (movie12_79), (movie12_80)
dw (movie12_81), (movie12_82), (movie12_83), (movie12_84), (movie12_85), (movie12_86), (movie12_87), (movie12_88)
dw (movie12_89), (movie12_90), (movie12_91), (movie12_92), (movie12_93), (movie12_94), (movie12_95), (movie12_96)
dw (movie12_97), (movie12_98), (movie12_99), (movie12_100), (movie12_101), (movie12_102), (movie12_103), (movie12_104)
dw (movie12_105), (movie12_106), (movie12_107), (movie12_108), (movie12_109), (movie12_110), (movie12_111), (movie12_112)
dw (movie12_113), (movie12_114), (movie12_115), (movie12_116), (movie12_117), (movie12_118), (movie12_119), (movie12_120)
dw (movie12_121), (movie12_122), (movie12_123), (movie12_124), (movie12_125), (movie12_126), (movie12_127), (movie12_128)
dw (movie12_129), (movie12_130), (movie12_131), (movie12_132), (movie12_133), (movie12_134), (movie12_135)


//--Error Messages
seek(0xF485D4)
base 0x80357DC4
movie13_1:
//このディスクは データが こわれています。 - RAM 80357DC4
textEntryH0("This disk has corrupted data.")
movie13_2:
//ただしいディスクにいれかえてください。 - RAM 80357DF0
textEntryH0("Please replace with the correct disk.")
check(0xF4862C)

seek(0xF0A2EA); dh (movie13_1)
seek(0xF0A302); dh (movie13_2)


//--Actor Select
seek(0xF48668)

//--Camera Work List
seek(0xF505CC)


//Movie Studio Mode - Special Menus
//Code Overlay (Disk 0x118D0C0 / RAM 8067FFB0)
seek(0x118D0C0)
base 0x8067FFB0

//--Caption Menu
seek(0x1190820)

seek(0x1190F10) //80683DA0
//Random Text TODO Later


//--Camera Work Menu
seek(0x11A07E0)


//--Main Edit Mode
seek(0x11A31B8)


//--Lighting Menu
seek(0x11A5798)


//--Effects List
seek(0x11BB190)


//--Filter List
seek(0x11BB660)


//--Fade In/Out List
seek(0x11BBAF8)


//--Expressions List
seek(0x11BBD4C)


//--Music List
seek(0x11BBF18)


//--Recording Menu
seek(0x11C1A08)
textEntryH(0x20, "Exit (Save Album)")	//でる(アルバムのセーブ)
textEntryH(0x20, "Record Mode")		//ろくおんモード
textEntryH(0x20, "Sound Album")		//サウンドアルバム
textEntryH(0x20, "Undo")		//やりなおし
textEntryH(0x20, "Microphone")		//マイクにゅうりょく
textEntryH(0x20, "Line In")		//ラインにゅうりょく
textEntryH(0x20, "Start Recording")	//ろくおん
textEntryH(0x20, "Stop Recording")	//ろくおんやめる
textEntryH(0x20, "Play/Stop")		//さいせい/ていし
textEntryH(0x20, "*Stop")		//*さいせいやめる
textEntryH(0x20, "Loop")		//ループする/しない
textEntryH(0x20, "*Do Not Loop")	//*くりかえさない
textEntryH(0x20, "Grab Recording")	//おとをつかむ
textEntryH(0x20, "Use Recording from Album")	//アルバムにのこす
textEntryH(0x20, "Save Recording to Album")	//アルバムからよびだす
