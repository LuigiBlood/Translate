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
textEntryASCII0("This movie has not been saved.||")
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

seek(0x104F552); dh $000B
seek(0x104F556); dh $0002
seek(0x104F562); dh (movie1_1)
seek(0x104F586); dh $000E
seek(0x104F58A); dh $0002
seek(0x104F596); dh (movie1_3)	//Too many chars, should be movie1_2
seek(0x104F5CA); dh $000E
seek(0x104F5CE); dh $0002
seek(0x104F5DA); dh (movie1_3)
seek(0x104F61E); dh (movie1_4)
seek(0x104F666); dh (movie1_5)
seek(0x104F682); dh $000A
seek(0x104F686); dh $0002
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
textEntryASCII0("You cannot create|more than 50 scenes.")
movie6_3:
//あたらしいシーンをつくるには|のこりの時間が|3.0秒以上必要です。
textEntryASCII0("You need at least|3.0 seconds left|to create a new scene.")
//movie6_4:
//致命的エラーです。|山下を呼んでください。
//textEntryASCII0("This is a fatal error.|Please call Yamashita.")
//movie6_5:
//５０シーン以上|シーンをつくることはできません。
//textEntryASCII0("You cannot create more than 50 scenes.")
movie6_6:
//ムービーの時間が|10.0秒オーバーするので|シーンのよびだしができません。
textEntryASCII0("Pasting this scene|would exceed the limit|by 10.0 seconds.")
movie6_7:
//すべてのシーンが|消えますが|本当によろしいですか？
textEntryASCII0("Are you sure you want|to delete all scenes?")
movie6_8:
//らくちんシーンをよびだすには|のこりの時間が|10.0秒以上必要です。
textEntryASCII0("You need at least|10.0 seconds left|to shuffle a new scene.")

movie6_9:
//お疲れ様です。|一時セーブします。
textEntryASCII0("Thanks for your work.|Saved temporarily.")
//movie6_10:
//致命的エラーです。|山下を呼んでください。
//textEntryASCII0("This is a fatal error.|Please call Yamashita.")

seek(0x106AD0A); dh (movie6_1)
seek(0x106ADD6); dh $000A
seek(0x106ADDA); dh $0002
seek(0x106ADE6); dh (movie6_2)
seek(0x106AE2A); dh $000B
seek(0x106AE2E); dh $0003
seek(0x106AE3A); dh (movie6_3)
seek(0x106AEBE); dh (movie6_4)
seek(0x106B342); dh $000A
seek(0x106AD46); dh $0002
seek(0x106B352); dh (movie6_5)

seek(0x106B482); dh (movie6_6 + 45)
seek(0x106B48A); dh (movie6_6 + 45)
seek(0x106B4F6); dh (movie6_6 + 45+1)
seek(0x106B52E); dh (movie6_6 + 45+3)
seek(0x106B53E); dh $000A
seek(0x106B542); dh $0003
seek(0x106B54E); dh (movie6_6)

seek(0x106BFAE); dh $000B
seek(0x106BFB2); dh $0002
seek(0x106BFBE); dh (movie6_7)
seek(0x106D2B6); dh $000B
seek(0x106D2BA); dh $0003
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
textEntryASCII0("The action of the talent|will be lost, are you sure?")
movie8_2:
//３Ｄさくひんの|シーンのアクションが|消えますがよろしいですか？
textEntryASCII0("The action of the 3D model|will be lost, are you sure?")
movie8_3:
//写
textEntryASCII0("Photo")

seek(0x1075D9A); dh $000D
seek(0x1075D9E); dh $0002
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
textEntryASCII0("Power off the|N64 Control Deck and|insert the Capture Pak.")
movie10_2:
//RAM 8040482C - アルバムのおとを|消します。|よろしいですか？
textEntryASCII0("This recording will be deleted.|Are you sure?")

seek(0x10B956E); dh (movie10_1)
seek(0x10BA826); dh $0002
seek(0x10BA82A); dh $000D
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
textEntryH0("Step Back")		//あとずさりをする
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
textEntryH0("I don't know")  	//「おてあげだよ」
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
textEntryH0("Punch")    		//パンチ
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
textEntryH0("Play Clarinet")    //クラリネットをふく
movie12_86:
textEntryH0("Staff Walk")		//つえをついてあるく
movie12_87:
textEntryH0("Electric Guitar")	//エレキギターをひく
movie12_88:
textEntryH0("Hold Spear")		//やりをかかげる
movie12_89:
textEntryH0("Shoot Machine Gun")	//マシンガンをうつ
movie12_90:
textEntryH0("Play Saxophone")	//サックスをふく
movie12_91:
textEntryH0("Play Guitar")		//ギターをひく
movie12_92:
textEntryH0("Shoot Pistol")		//ケンジュウをうつ
movie12_93:
textEntryH0("Swipe Broom")		//ホウキではく
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

//Motion
dw (movie12_1), (movie12_2), (movie12_3), (movie12_4), (movie12_5), (movie12_109), (movie12_80), (movie12_8), (movie12_9), (movie12_10), (movie12_11), (movie12_12), (movie12_13), (movie12_111), (movie12_14), (movie12_81), (movie12_99), (movie12_100), (movie12_101), (movie12_7), (movie12_6), (movie12_105), (movie12_112), (movie12_108), (movie12_82), (movie12_83), (movie12_84), (movie12_41)
//Item
dw (movie12_91), (movie12_87), (movie12_85), (movie12_90), (movie12_98), (movie12_95), (movie12_94), (movie12_88), (movie12_113), (movie12_86), (movie12_97), (movie12_92), (movie12_89), (movie12_114), (movie12_115), (movie12_116), (movie12_93), (movie12_96), (movie12_117), (movie12_118), (movie12_119)
//Feelings
dw (movie12_45), (movie12_46), (movie12_47), (movie12_48), (movie12_29), (movie12_33), (movie12_31), (movie12_30), (movie12_54), (movie12_49), (movie12_35), (movie12_50), (movie12_51), (movie12_42), (movie12_52), (movie12_53), (movie12_43), (movie12_44), (movie12_26), (movie12_55), (movie12_56)
//Weight
dw (movie12_15), (movie12_16), (movie12_18), (movie12_17), (movie12_19), (movie12_20), (movie12_21), (movie12_22), (movie12_23), (movie12_104), (movie12_32), (movie12_69), (movie12_70), (movie12_34), (movie12_103), (movie12_107), (movie12_36), (movie12_37), (movie12_110), (movie12_72), (movie12_78)
//Rhythm
dw (movie12_67), (movie12_68), (movie12_57), (movie12_58), (movie12_59), (movie12_60), (movie12_63), (movie12_62), (movie12_61), (movie12_64), (movie12_65), (movie12_66), (movie12_73), (movie12_71)
//Battle
dw (movie12_77), (movie12_74), (movie12_75), (movie12_76), (movie12_106), (movie12_102), (movie12_79), (movie12_28), (movie12_24), (movie12_25), (movie12_39), (movie12_40), (movie12_27), (movie12_38)
//Action Album
dw (movie12_120), (movie12_121)
//3D Object
dw (movie12_122), (movie12_123), (movie12_124), (movie12_125), (movie12_126), (movie12_127), (movie12_128)
dw (movie12_129), (movie12_130), (movie12_131), (movie12_132), (movie12_133), (movie12_134), (movie12_135)

//ASM Action ?
seek(0xEF4F12); dh (movie12_120)
seek(0xEF4F18); sb t4,7(t5)

//ASM Action ?x
seek(0xEF4F4A); dh (movie12_121)
seek(0xEF4F50); sb t8,7(t9)
//ASM Action x?
seek(0xEF4F6E); dh (movie12_121)
seek(0xEF4F70); sb t2,8(t3)

//ASM Action ?x
seek(0xEF4F92); dh (movie12_121)
seek(0xEF4F98); sb t5,7(t6)
//ASM Action x?
seek(0xEF4FB6); dh (movie12_121)
seek(0xEF4FB8); sb t9,8(t0)


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
movie14_1:
textEntryH0("Rotate / Zoom (B Button)")		//かいてん・ズーム(Bボタン)
movie14_2:
textEntryH0("Actor 1")						//しゅつえんタレント1
movie14_3:
textEntryH0("Erase")						//とりけし
movie14_4:
textEntryH0("0/0")							//ページおくり0/0
movie14_5:
textEntryH0("Exit")							//でる
movie14_6:
textEntryH0("Samples")						//しゅつえんタレントをえらぶ
movie14_7:
textEntryH0("Load Talent")					//[タレント]のロード
movie14_8:
textEntryH0("Load 3D Model")				//[3Dさくひん]のロード
movie14_9:
textEntryH0("Save Talent")					//[タレント]のセーブ
movie14_10:
textEntryH0("From the Talent Studio")		//タレントをつくるにのこしたタレント
movie14_11:
textEntryH0("Shuffle")						//らくちんスイッチ
movie14_12:
textEntryH0("Talent 1")						//タレント1
movie14_13:
textEntryH0("Talent 11")					//タレント11
movie14_14:
textEntryH0("3D Model 1")					//3Dさくひん1

//change pointers
seek(0xF487A0); dw (movie14_5)
skip(20); dw (movie14_7)
skip(20); dw (movie14_8)
skip(20); dw (movie14_9)
skip(20); dw (movie14_6)
skip(20); dw (movie14_10)
skip(20); dw (movie14_11)
skip(20); dw (movie14_2)
skip(20); dw (movie14_2)
skip(20); dw (movie14_2)
seek(0xF488A8); dw (movie14_3)
skip(20); dw (movie14_4)


seek(0xF0E0BA); dh (movie14_2)
seek(0xF0E0C0); sb t2,6(t3)
seek(0xF0E0CA); dh (movie14_2)

seek(0xF0DE02); dh (movie14_4)
seek(0xF0DE08); sb t6,0(t7)
seek(0xF0DE12); dh (movie14_4)
seek(0xF0DE18); sb t8,2(t9)

seek(0xF0DF2A); dh (movie14_12)
seek(0xF0DF30); sb t6,7(t7)
seek(0xF0DF3A); dh (movie14_12)

seek(0xF0DF56); dh (movie14_12)
seek(0xF0DF5C); sb t0,7(t1)
seek(0xF0DF66); dh (movie14_12)

seek(0xF0DF92); dh (movie14_12)
seek(0xF0DF98); sb t5,7(t6)
seek(0xF0DFA2); dh (movie14_12)

seek(0xF0DFBA); dh (movie14_13)
seek(0xF0DFC0); sb t9,8(t0)
seek(0xF0DFCA); dh (movie14_13)

seek(0xF0DFE6); dh (movie14_14)
seek(0xF0DFEC); sb t3,9(t4)
seek(0xF0DFF6); dh (movie14_14)


seek(0xF489C0)
textEntryASCII0("The actions from Actor 1's scenes|will be lost. Are you sure?")
//タレント１が出演している|シーンのアクションが|消えますがよろしいですか？
seek(0xF48A0C)
textEntryASCII0("The actions from Actor 1's scenes|will be lost. Are you sure?")
//textEntryASCII0("The actions and effects from|Actor 1's scenes will be lost.|Are you sure?")
//タレント１が出演している|シーンのアクションや一部の演出が|消えますがよろしいですか？
seek(0xF48A64)
textEntryASCII0("The actions from Actor 1's scenes|will be lost. Are you sure?")
//３Ｄさくひんとタレントを|入れ替えると|タレント１が出演している|シーンのアクションが|消えますがよろしいですか？
seek(0xF48AD4)
textEntryASCII0("The actions from Actor 1's scenes|will be lost. Are you sure?")
//textEntryASCII0("The actions and effects from|Actor 1's scenes will be lost.|Are you sure?")
//タレントと３Ｄさくひんを|入れ替えると|タレント１が出演している|シーンのアクションや一部の演出が|消えますがよろしいですか？
seek(0xF48B50)
textEntryASCII0(" 1 2 3")
//１２３

//ASCII text offset to Actor digit
seek(0xF0CCF0)
addiu t6,t5,22
seek(0xF0CD0C)
//addiu t8,t7,34
addiu t8,t7,22
seek(0xF0CD28)
addiu t0,t9,22
seek(0xF0CD44)
//addiu t1,t2,34
addiu t1,t2,22

//Window Size
seek(0xF06BDA); dh $0002
seek(0xF06BE2); dh $0010

seek(0xF06C0A); dh $0002
seek(0xF06C12); dh $0010

seek(0xF06C3A); dh $0002
seek(0xF06C42); dh $0010

seek(0xF06C5A); dh $0002
seek(0xF06C62); dh $0010

//Sample 3D Models
seek(0xF48210)
textEntryASCII0("Car")			//クルマ
seek(0xF48218)
textEntryASCII0("Airplane")		//ひこうき
seek(0xF48224)
textEntryASCII0("Fighter")		//せんとうき
seek(0xF48230)
textEntryASCII0("UFO")			//ＵＦＯ
seek(0xF48238)
textEntryASCII0("Future Car")	//みらいのクルマ
seek(0xF48248)
textEntryASCII0("Unknown")		//不明


//--Camera Work List
seek(0xF505CC)
textEntryH(0x28, "Original")			//オリジナル
textEntryH(0x28, "Face")				//かお
textEntryH(0x28, "Bust Shot")			//バストアップ
textEntryH(0x28, "Upper Shot")			//じょうはんしん
textEntryH(0x28, "Full Shot")			//ぜんしん
textEntryH(0x28, "Long Shot")			//ロング
textEntryH(0x28, "Extreme Long Shot")	//かなりロング

textEntryH(0x28, "Side Shot")			//よこ
textEntryH(0x28, "Back Shot")			//うしろ
textEntryH(0x28, "High Angle")			//うえ
textEntryH(0x28, "Low Angle")			//した
textEntryH(0x28, "From the Left")		//ひだりより
textEntryH(0x28, "From the Right")		//みぎより
textEntryH(0x28, "Behind Feet")			//あしもとうしろ

textEntryH(0x28, "High Angle Rotation")			//ななめうえかいてん
textEntryH(0x28, "Low Angle Rotation")			//ななめしたかいてん
textEntryH(0x28, "Move from Left to Right")		//ひだりからみぎにいどう
textEntryH(0x28, "Move from Right to Left")		//みぎからひだりにいどう
textEntryH(0x28, "Above from Bottom to Top")	//まうえしたからいどう
textEntryH(0x28, "Above from Left to Right")	//まうえひだりからいどう
textEntryH(0x28, "From Feet to Head")			//したからうえへいどう

textEntryH(0x28, "Zoom In Face")		//しょうめんズームイン
textEntryH(0x28, "Zoom Out Face")		//しょうめんズームアウト
textEntryH(0x28, "Body Rotate")			//ぜんしんかいてん
textEntryH(0x28, "Body Rotate & Zoom")	//かいてんズームイン
textEntryH(0x28, "High Angle Zoom Out")	//みおろしかいてんズームアウト
textEntryH(0x28, "Low Angle Zoom Out")	//みあげるかいてんズームアウト
textEntryH(0x28, "High to Low Angle")	//みおろしからみあげる

textEntryH(0x28, "Tilted Zoom In")			//ななめかおズームイン
textEntryH(0x28, "Tilt & Rotate Zoom In")	//ななめかいてんズームイン
textEntryH(0x28, "Spin & Zoom Out")			//くるくるズームアウト
textEntryH(0x28, "Shock")					//ガーン
textEntryH(0x28, "Shake")					//ゆれ
textEntryH(0x28, "Going In")				//おくからてまえに
textEntryH(0x28, "Going Out")				//てまえからおくに


//--Unknown
seek(0xF50B60)
textEntryH(0x28, "Custom")	//じさく
textEntryH(0x28, "Base")	//きほん
textEntryH(0x28, "Zoom In")	//ズームイン
textEntryH(0x28, "Zoom Out")	//ズームアウト
textEntryH(0x28, "Left to Right")	//ひだりからみぎへ
textEntryH(0x28, "Right to Left")	//みぎからひだりへ
textEntryH(0x28, "Quick Scroll")	//はやくスクロール
textEntryH(0x28, "3D Scroll")	//りったいてきにスクロール


//Movie Studio Mode - Action Maker
//Code Overlay (Disk 0x1004410 / RAM 80280000)
seek(0x1004410)
base 0x80280000

seek(0x10298CC)
movie15_1:
textEntryH0("Get Pose from Previous Scene")		//802A54BC - まえのシーンのおわりのポーズ
movie15_2:
textEntryH0("Reset Pose")		//802A54DC - ちょくりつポーズ
movie15_3:
textEntryH0("Action Frame")		//802A54F0 - アクションのかくにん
movie15_4:
textEntryH0("Full Body")		//802A5508 - からだぜんたい
movie15_5:
textEntryH0("Head")				//802A5518 - あたま
movie15_6:
textEntryH0("Torso")			//802A5520 - むね
movie15_7:
textEntryH0("Right Arm")		//802A5528 - みぎひじ
movie15_8:
textEntryH0("Left Arm")			//802A5534 - ひだりひじ
movie15_9:
textEntryH0("Right Hand")		//802A5540 - みぎて
movie15_10:
textEntryH0("Left Hand")		//802A5548 - ひだりて
movie15_11:
textEntryH0("Waist")			//802A5554 - こし
movie15_12:
textEntryH0("Right Leg")		//802A555C - みぎひざ
movie15_13:
textEntryH0("Left Leg")			//802A5568 - ひだりひざ
movie15_14:
textEntryH0("Right Foot")		//802A5574 - みぎあしくび
movie15_15:
textEntryH0("Left Foot")		//802A5584 - ひだりあしくび
movie15_16:
textEntryH0("Upper Body")		//802A5594 - じょうはんしん
movie15_17:
textEntryH0("Lower Body")		//802A55A4 - かはんしん
movie15_18:
textEntryH0("Right Forearm")	//802A55B0 - みぎぜんわん
movie15_19:
textEntryH0("Left Forearm")		//802A55C0 - ひだりぜんわん
movie15_20:
textEntryH0("Right Wrist")		//802A55D0 - みぎてくび
movie15_21:
textEntryH0("Left Wrist")		//802A55DC - ひだりてくび
movie15_22:
textEntryH0("Grab Action")		//802A55EC - アクションをつかむ
movie15_23:
textEntryH0("Use Action from Album")		//802A5600 - アルバムにのこす
movie15_24:
textEntryH0("Save Action to Album")			//802A5614 - アルバムからよびだす
movie15_25:
textEntryH0("Rotate / Zoom (B Button)")		//802A562C - かいてん・ズーム(Bボタン)
movie15_26:
textEntryH0("Pose 1")			//802A564C - ポーズ1
movie15_27:
textEntryH0("Sound 1")			//802A5658 - おと1
movie15_28:
textEntryH0("Loop Action")		//802A5660 - ループする/しない
movie15_29:
textEntryH0("Pose ON/OFF")		//802A5674 - ポーズのON・OFFスイッチ
movie15_30:
textEntryH0("Edit Action")		//802A5694 - アクションをきめる
movie15_31:
textEntryH0("Edit Sound")		//802A56A8 - アクションサウンドをきめる
movie15_32:
textEntryH0("Copy Pose")		//802A56C4 - ポーズのコピー
movie15_33:
textEntryH0("Paste Pose")		//802A56D4 - ポーズのよびだし
movie15_34:
textEntryH0("Flip Pose")		//802A56E8 - ポーズのはんてん
movie15_35:
textEntryH0("Undo")				//802A56FC - やりなおし
movie15_36:
textEntryH0("Switch Camera")	//802A5708 - カメラきりかえ
movie15_37:
textEntryH0("Exit (Save Album)")	//802A5718 - でる(アルバムのセーブ)
movie15_38:
textEntryH0("Exit")				//802A5734 - でる
movie15_39:
textEntryH0("Action Album")		//802A573C - アクションアルバム
movie15_40:
textEntryH0("Play/Stop")		//802A5750 - うごかす/とめる
movie15_41:
textEntryH0("Shorten")			//802A5764 - アクションはやく
movie15_42:
textEntryH0("Lengthen")			//802A5778 - アクションおそく
movie15_43:
textEntryH0("Shuffle")			//802A578C - らくちんスイッチ
movie15_44:
textEntryH0("Move Actor")		//802A57A0 - からだぜんたいのいどう
movie15_45:
textEntryH0("Move Body Part")	//802A57B8 - からだをひっぱる
movie15_46:
textEntryH0("Twist Body Part")	//802A57CC - からだをねじる
movie15_47:
textEntryH0("Sound ON/OFF")		//802A57DC - おとのON・OFFスイッチ

seek(0x1021E3E); dh (movie15_3)
seek(0x1021F4A); dh (movie15_4)
seek(0x1021FC2); dh (movie15_4)
seek(0x10220A6); dh (movie15_4)
seek(0x1021F2A); dh (movie15_5)
seek(0x1021F9A); dh (movie15_5)
seek(0x102207E); dh (movie15_5)
seek(0x1022092); dh (movie15_6)
seek(0x10220E2); dh (movie15_7)
seek(0x1021FFE); dh (movie15_18)
seek(0x10220CE); dh (movie15_8)
seek(0x1021FEA); dh (movie15_19)
seek(0x102210A); dh (movie15_9)
seek(0x1022026); dh (movie15_20)
seek(0x10220F6); dh (movie15_10)
seek(0x1022012); dh (movie15_21)
seek(0x10220BA); dh (movie15_11)
seek(0x1022132); dh (movie15_12)
seek(0x102211E); dh (movie15_13)
seek(0x102215A); dh (movie15_14)
seek(0x1022146); dh (movie15_15)
seek(0x1021FAE); dh (movie15_16)
seek(0x1021FD6); dh (movie15_17)
seek(0x10221DE); dh (movie15_22)
seek(0x10222BA); dh (movie15_22)
seek(0x102226A); dh (movie15_23)
seek(0x102220E); dh (movie15_24)
seek(0x1022346); dh (movie15_25)

seek(0x102238E); dh (movie15_26)
seek(0x1022394); sb t4,5(t5)
seek(0x10223EA); dh (movie15_26)

seek(0x102243E); dh (movie15_27)
seek(0x1022444); sb t8,6(t9)
seek(0x102249A); dh (movie15_27)

seek(0x1022552); dh (movie15_37)
seek(0x102253E); dh (movie15_38)

seek(0x1029C14); dw (movie15_38)
skip(20); dw (movie15_39)
skip(20); dw (movie15_40)
skip(20); dw (movie15_28)
skip(20); dw (movie15_41)
skip(20); dw (movie15_42)
skip(44); dw (movie15_43)
skip(20); dw (movie15_29)
skip(20); dw (movie15_30)
skip(20); dw (movie15_31)
skip(20); dw (movie15_47)
skip(20); dw (movie15_32)
skip(20); dw (movie15_33)
skip(20); dw (movie15_34)
skip(20); dw (movie15_35)
skip(20); dw (movie15_36)
skip(20); dw (movie15_44)
skip(20); dw (movie15_45)
skip(20); dw (movie15_46)
skip(20); dw (movie15_2)
skip(20); dw (movie15_1)
skip(164); dw (movie15_35)

seek(0x102A100)
textEntryASCII0("This Action will be deleted.|Are you sure?")
//アルバムのアクションを|消します。|よろしいですか？

seek(0x100B636); dh $000C
seek(0x100B63A); dh $0002


//Movie Studio Mode - Special Menus
//Code Overlay (Disk 0x118D0C0 / RAM 8067FFB0)
seek(0x118D0C0)
base 0x8067FFB0

//--Caption Menu
seek(0x1190820)
textEntryH(40, "Exit")				//でる
textEntryH(40, "Shuffle")			//らくちんスイッチ
textEntryH(40, "Write Caption")		//もじにゅうりょく
textEntryH(40, "Caption Effect")	//だしかたをえらぶ
textEntryH(40, "Caption Color")		//もじのいろ
textEntryH(40, "Undo")				//やりなおし

textEntryH(40, "Subtitle")			//よこがきした
textEntryH(40, "Subtitle Typing")	//よこがき1もじずつ
textEntryH(40, "Subtitle Limit")	//よこがきげんかい
textEntryH(40, "Subtitle Above")	//よこがきうえ
textEntryH(40, "Vertical")			//たてがき
textEntryH(40, "Vertical Bubble")	//たてがきふきだし
textEntryH(40, "Horizontal Bubble")	//よこがきふきだし

textEntryH(40, "Title")				//タイトル
textEntryH(40, "Fade In")			//てんめつ
textEntryH(40, "Typing")			//もじうち
textEntryH(40, "Turn")				//めくれる
textEntryH(40, "Rotation")			//かいてん
textEntryH(40, "Zoom Out")			//ちいさくなる
textEntryH(40, "Zoom In")			//おおきくなる

textEntryH(40, "Fall Apart")		//おちる
textEntryH(40, "Dripping")			//したたる
textEntryH(40, "Eerie")				//ぶきみ
textEntryH(40, "Elastic")			//のびちぢみ
textEntryH(40, "Shaking")			//ふるえる
textEntryH(40, "One at a time")		//1もじずつ
textEntryH(40, "Red Line")			//あかいライン

textEntryH(40, "Horizontal Scroll")			//よこがきスクロール
textEntryH(40, "Scroll Up")					//よこがきうえへスクロール
textEntryH(40, "Vertical Writing Scroll")	//たてがきスクロール
textEntryH(40, "Crawl")						//おくへスクロール
textEntryH(40, "Giant Caption Scroll")		//おおきいもじスクロール
textEntryH(40, "Wave Scroll")				//なみがた
textEntryH(40, "Bulletin Board")			//でんこうけいじばん

textEntryH(40, "Window")			//わくつきウインドウ
textEntryH(40, "Typing Window")		//1もじずつウインドウ
textEntryH(40, "Sing Along")		//カラオケ
textEntryH(40, "Corner")			//エルがた
textEntryH(40, "Wacky Display")		//てきとうにひょうじ
textEntryH(40, "Too Many")			//たくさんひょうじ
textEntryH(40, "Scattered")			//バラバラ

textEntryH(40, "0/0")				//0/0ページ

//Page Number Text (Caption)
seek(0x109057C); sb t3,2(a3)
seek(0x1090588); sb t2,0(a3)
seek(0x10905A0); sb t6,0(a3)
seek(0x10905B0); sb t9,2(a3)

seek(0x1190F10) //80683DA0
//Random Text TODO Later


//--Camera Work Menu
seek(0x11A07E0)
textEntryH(48, "Exit")							//でる
textEntryH(48, "Actor")							//タレントさつえい
textEntryH(48, "Background")					//はいけいさつえい
textEntryH(48, "Undo")							//やりなおし
textEntryH(48, "Play/Stop")						//カメラをうごかす/とめる
textEntryH(48, "*Stop")							//*とめる
textEntryH(48, "Loop")							//ループする/しない
textEntryH(48, "*Do Not Loop")					//*くりかえさない
textEntryH(48, "Origin Point")		        	//はじめのカメラ
textEntryH(48, "Destination Point")	    		//おわりのカメラ
textEntryH(48, "Copy Origin to Destination")	//はじめのカメラいちをよびだす
textEntryH(48, "Copy Destination to Origin")	//おわりのカメラいちをよびだす
textEntryH(48, "Camera Type")					//カメラのしゅるい
textEntryH(48, "Camera Motion")					//カメラのうごき
textEntryH(48, "Background Display")			//はいけいのひょうじ
textEntryH(48, "Background Scroll")				//はいけいスクロール
textEntryH(48, "Get Destination Camera from Previous Scene")	//まえのシーンのおわりのカメラいちをよびだす
textEntryH(48, "Swap Origin & Destination")		//はじめとおわりのいれかえ

textEntryH(48, "Long Shot Reset")			//ロングリセット
textEntryH(48, "Wide Shot Reset")			//ぜんしんリセット
textEntryH(48, "Medium Shot Reset")			//じょうはんしんリセット
textEntryH(48, "Close-Up Reset")			//かおリセット
textEntryH(48, "Rotation Reset")			//かいてんリセット

//Camera Type
textEntryH(48, "Normal")					//ふつう
textEntryH(48, "Slight Right Tilt")			//みぎさがり
textEntryH(48, "Diagonal Right Tilt")		//みぎななめ
textEntryH(48, "Full Right Tilt")			//みぎたおし
textEntryH(48, "Down Right Tilt")			//みぎななめプラス
textEntryH(48, "Upside Down")				//さかさま
textEntryH(48, "Down Left Tilt")			//ひだりななめプラス

textEntryH(48, "Full Left Tilt")			//ひだりたおし
textEntryH(48, "Diagonal Left Tilt")		//ひだりななめ
textEntryH(48, "Slight Left Tilt")			//ひだりさがり
textEntryH(48, "1 Clockwise Spin")			//みぎ1かいてん
textEntryH(48, "1 Counter-Clockwise Spin")	//ひだり1かいてん
textEntryH(48, "3 Clockwise Spins")			//みぎ3かいてん
textEntryH(48, "3 Counter-Clockwise Spins")	//ひだり3かいてん

textEntryH(48, "Roll Left")					//みぎはんかいてん
textEntryH(48, "Roll Right")				//ひだりはんかいてん
textEntryH(48, "Small Shake")				//じょじょにゆれる
textEntryH(48, "Strong Shake")				//はげしくゆれる
textEntryH(48, "Up & Down Slide")			//じょうげスライド
textEntryH(48, "Left & Right Slide")		//さゆうスライド
textEntryH(48, "In & Out Slide")			//ぜんごスライド

//Camera Motion
textEntryH(48, "Normal")			//ふつう
textEntryH(48, "Accelerate")		//かそく
textEntryH(48, "Decelerate")		//げんそく
textEntryH(48, "Smooth")			//スムーズ
textEntryH(48, "Delay")				//はじめにとまる
textEntryH(48, "End Stop")			//おわりにとまる
textEntryH(48, "Skip")				//スキップ

//Background Display
textEntryH(48, "Normal")			//ふつう
textEntryH(48, "Upside Down")		//さかさま
textEntryH(48, "Rotate Right")		//みぎに90どまわす
textEntryH(48, "Rotate Left")		//ひだりに90どまわす

//Background Scroll
textEntryH(48, "Up")			//うえ
textEntryH(48, "Down")			//した
textEntryH(48, "Right")			//みぎ
textEntryH(48, "Left")			//ひだり
textEntryH(48, "Scroll Reset")	//スクロールリセット

textEntryH(48, "Zoom Reset X1")	//ズームリセットX1
textEntryH(48, "Zoom Reset X2")	//ズームリセットX2
textEntryH(48, "Zoom Reset X3")	//ズームリセットX3
textEntryH(48, "Zoom Reset X4")	//ズームリセットX4

textEntryH(48, "0/0")			//0/0ページ


//--Main Edit Mode
seek(0x11A31B8)
textEntryH(32, "Shadow")				//かげのひょうじ
textEntryH(32, "Expression")			//ひょうじょうとこえ
textEntryH(32, "Eye Blink")				//まばたき
textEntryH(32, "Looking at Camera")		//カメラめせん
textEntryH(32, "Lighting")				//ひかり
textEntryH(32, "Graffiti")				//らくがき
textEntryH(32, "Fade In/Out")			//フェイドイン・アウト
textEntryH(32, "Effects")				//かんきょうエフェクト
textEntryH(32, "Filters")				//がめんフィルタ
textEntryH(32, "Captions")				//テロップ
textEntryH(32, "Music")					//BGM
textEntryH(32, "Music Effect")			//BGMエフェクト
textEntryH(32, "Sound 1")				//こうかおん1
textEntryH(32, "Sound 2")				//こうかおん2
textEntryH(32, "Sound Effect")			//こうかおんエフェクト
textEntryH(32, "Action Sounds")			//アクションサウンド
textEntryH(32, "Expression Sounds")		//そのひょうじょうのこえ
textEntryH(32, "Effect Sounds")			//かんきょうエフェクトのおと
textEntryH(32, "Filter Sounds")			//がめんフィルタのおと
textEntryH(32, "Caption Sounds")		//テロップのおと
textEntryH(32, "Movie Review")			//ムービーのかくにん


//--Lighting Menu
seek(0x11A5798)
textEntryH(24, "Exit")				//でる
textEntryH(24, "Lighting Type")		//ひかりのしゅるい
textEntryH(24, "Lighting Color")	//ひかりのいろ
textEntryH(24, "Light Intensity")	//ひかりのつよさ
textEntryH(24, "Background Effect")	//はいけいにえいきょう

textEntryH(24, "Undo")			//やりなおし
textEntryH(24, "Play/Stop")		//さいせい/ていし
textEntryH(24, "Stop")			//とめる
textEntryH(24, "Loop")			//ループする/しない
textEntryH(24, "*Do Not Loop")	//くりかえさない
//Should Light affect Background
textEntryH(24, "Yes")			//あり
textEntryH(24, "No")			//なし
//Types
textEntryH(24, "Top Right")		//みぎうえから
textEntryH(24, "Top Left")		//ひだりうえから
textEntryH(24, "Above")			//うえから
textEntryH(24, "Bottom")		//したから
textEntryH(24, "Right Side")	//みぎから
textEntryH(24, "Left Side")		//ひだりから
textEntryH(24, "Front")			//まえから
textEntryH(24, "Back")			//うしろから
textEntryH(24, "Clashing")		//はんたいしょく
textEntryH(24, "Face")			//かお
textEntryH(24, "Right Hand")	//みぎて
textEntryH(24, "Left Hand")		//ひだりて
textEntryH(24, "Rotate Right")	//みぎかいてん
textEntryH(24, "Rotate Left")	//ひだりかいてん

textEntryH(24, "0/0")			//0/0ページ
textEntryH(24, "Stronger")		//つよく
textEntryH(24, "Weaker")		//よわく
textEntryH(24, "000")			//000

//Page Number Text (Lighting)
seek(0x1093284); sb t1,2(a1)
seek(0x1093290); sb t0,0(a1)
seek(0x10932A8); sb t4,0(a1)
seek(0x10932B8); sb t7,2(a1)

//Intensity (Lighting)
seek(0x1095388); sb t8,0(v0)
seek(0x10953EC); sb t7,1(v0)
seek(0x1095414); sb t9,2(v0)


//--Effects List
seek(0x11BB190)
textEntryH(40, "None")				//なし
textEntryH(40, "Rain")				//あめ
textEntryH(40, "Snow")				//ゆき
textEntryH(40, "Thunder")			//カミナリ
textEntryH(40, "Cherry Blossoms")	//さくらふぶき
textEntryH(40, "Bubbles")			//あわ
textEntryH(40, "Space")				//うちゅう

textEntryH(40, "Flames")			//ほのお
textEntryH(40, "Fog")				//きり
textEntryH(40, "Concentration")		//しゅうちゅうせん
textEntryH(40, "Fire Breath")		//くちからほのお
textEntryH(40, "Breath")			//しろいいき
textEntryH(40, "Heart")				//ハート
textEntryH(40, "Dizzy")				//あたまにほし

textEntryH(40, "Glitter")			//キラキラ
textEntryH(40, "Halo")				//ごこう
textEntryH(40, "Ball of Light")		//ひかりのたま
textEntryH(40, "Foot Smoke")		//あしからけむり
textEntryH(40, "Blinding Magic")	//ため
textEntryH(40, "Full Power")		//みなぎるチカラ
textEntryH(40, "Beam of Energy")	//エネルギーほう

textEntryH(40, "Shockwave")			//しょうげきは
textEntryH(40, "Explosion")			//ばくはつ
textEntryH(40, "More Explosions")	//あちこちばくはつ
textEntryH(40, "Big Head")			//あたまをおおきく
textEntryH(40, "Actor Appears")		//タレントあらわれる
textEntryH(40, "Transparent")		//タレントはんとうめい
textEntryH(40, "Actor Disappears")	//タレントきえる


//--Filter List
seek(0x11BB660)
textEntryH(40, "None")				//なし
textEntryH(40, "Weak Blur")			//うすくぼかす
textEntryH(40, "Strong Blur")		//こくぼかす
textEntryH(40, "Layering Effect")	//かさねこうか
textEntryH(40, "Monochrome")		//モノクロ
textEntryH(40, "Sepia")				//セピア
textEntryH(40, "Two Colors")		//2かいちょう

textEntryH(40, "Monochrome Frame")	//モノクロわく
textEntryH(40, "Soft Focus")		//ソフトフォーカス
textEntryH(40, "Mirage")			//しんきろう
textEntryH(40, "Underwater")		//すいちゅう
textEntryH(40, "Deep Colors")		//いろをこく
textEntryH(40, "Pale Colors")		//いろをうすく
textEntryH(40, "Negative")			//ネガ

textEntryH(40, "Mosaic")			//モザイク
textEntryH(40, "Noise")				//ノイズ
textEntryH(40, "Monitor")			//モニター
textEntryH(40, "Enlarge")			//かくだい
textEntryH(40, "Reduce")			//しゅくしょう
textEntryH(40, "Half Size")			//ミニサイズ
textEntryH(40, "Flip")				//はんてん

textEntryH(40, "Split in 2")		//2ぶんかつ
textEntryH(40, "Split in 4")		//4ぶんかつ
textEntryH(40, "Old Film")			//むかしのフィルム
textEntryH(40, "Drawing Paper")		//がようし
textEntryH(40, "Distortion")		//ぐにゃぐにゃ
textEntryH(40, "Dissolve")			//ざんぞう
textEntryH(40, "Keep Still")		//ぶんしん


//--Fade In/Out List
seek(0x11BBAF8)
textEntryH(40, "None")				//なし
textEntryH(40, "Fade In")			//くろからふつう
textEntryH(40, "Fade Out")			//ふつうからくろ
textEntryH(40, "Wash In")			//しろからふつう
textEntryH(40, "Wash Out")			//ふつうからしろ
textEntryH(40, "Iris In")			//えんでひらく
textEntryH(40, "Iris Out")			//えんでとじる

textEntryH(40, "Rectangle In")		//しかくでひらく
textEntryH(40, "Rectangle Out")		//しかくでとじる
textEntryH(40, "Horizontal In")		//よこにひらく
textEntryH(40, "Horizontal Out")	//よこにとじる
textEntryH(40, "Vertical In")		//たてにひらく
textEntryH(40, "Vertical Out")		//たてにとじる
textEntryH(40, "Black Frame")		//くろ


//--Expressions List
seek(0x11BBD4C)
textEntryH(40, "None")				//なし
textEntryH(40, "Normal Expression")	//ふつうのひょうじょう
textEntryH(40, "Laugh Expression")	//わらったひょうじょう
textEntryH(40, "Angry Expression")	//おこったひょうじょう
textEntryH(40, "Sad Expression")	//こまったひょうじょう
textEntryH(40, "Free Expression")	//フリーのひょうじょう
textEntryH(40, "Sleep Expression")	//ねむったひょうじょう


//--Music List
seek(0x11BBF18)
textEntryH(40, "None")						//なし
textEntryH3(40, "Rock ", $C0)				//ロック・ヰ
textEntryH3(40, "Mystery ", $C0)			//ミステリー・ヰ
textEntryH3(40, "Shamisen ", $C0)			//しゃみせん・ヰ
textEntryH3(40, "Jazz ", $C0)				//ジャズ・ヰ
textEntryH3(40, "Techno ", $C0)				//テクノ・ヰ
textEntryH3(40, "Evil Theme ", $C0)			//あくのテーマ・ヰ

textEntryH3(40, "Totakeke's Song ", $C0)	//トタケケぶし・ヰ
textEntryH3(40, "Spy ", $C0)				//スパイ・ヰ
textEntryH3(40, "Bagpipes ", $C0)			//バグパイプ・ヰ
textEntryH3(40, "Recorder ", $C0)			//たてぶえ・ヰ
textEntryH3(40, "Sad ", $C0)				//かなしい・ヰ
textEntryH3(40, "Salsa ", $C0)				//サルサ・ヰ
textEntryH3(40, "Home Theater ", $C0)		//おちゃのまげきじょう・ヰ

textEntryH3(40, "Waltz ", $C0)				//ワルツ・ヰ
textEntryH3(40, "Tropical ", $C0)			//ハワイ・ヰ
textEntryH3(40, "Hip-Hop ", $C0)			//ヒップ・ホップ・ヰ
textEntryH3(40, "Horror ", $C0)				//ホラー・ヰ
textEntryH3(40, "March ", $C0)				//マーチ・ヰ
textEntryH3(40, "Opening ", $C0)			//オープニング・ヰ
textEntryH3(40, "Memories ", $C0)			//おもいで・ヰ

textEntryH3(40, "Lonely ", $C0)				//ひとりぼっち・ヰ
textEntryH3(40, "China ", $C0)				//チャイナ・ヰ
textEntryH3(40, "India ", $C0)				//インド・ヰ
textEntryH3(40, "Big City ", $C0)			//だいとかい・ヰ
textEntryH3(40, "Noisy ", $C0)				//ドタバタ・ヰ
textEntryH3(40, "Morning Coffee ", $C0)		//モーニングコーヒー・ヰ
textEntryH3(40, "Meeting ", $C0)			//さくせんかいぎ・ヰ

textEntryH4(40, "Fanfare ", $C1, "4.2s")		//ファンファーレ・ヱ4.2
textEntryH4(40, "Intermission ", $C1, "3.0s")	//それからどうした・ヱ3.0
textEntryH4(40, "Yeah!", $C1, "1.8s")			//キメッ!・ヱ1.8
textEntryH4(40, "Super Mario ", $C1, "1.3s")	//マリオ・ヱ1.3
textEntryH4(40, "Shock! ", $C1, "1.8s")			//ショック・ヱ1.8
textEntryH4(40, "Ending ", $C1, "5.0s")			//エンディング・ヱ5.0
textEntryH4(40, "Gone Wrong ", $C1, "1.4s")		//ズッコケ・ヱ1.4

//ON/OFF Actor
textEntryH(40, "Shadow ON/OFF")					//かげのひょうじON/OFF
textEntryH(40, "Shadow ON/OFF")					//かげのひょうじON/OFF
textEntryH(40, "Eye Blink ON/OFF")				//まばたきON/OFF
textEntryH(40, "Eye Blink ON/OFF")				//まばたきON/OFF
textEntryH(40, "Look at Camera ON/OFF")			//カメラめせんON/OFF
textEntryH(40, "Look at Camera ON/OFF")			//カメラめせんON/OFF
textEntryH(40, "Action Sounds ON/OFF")			//うごきのおとON/OFF
textEntryH(40, "Action Sounds ON/OFF")			//うごきのおとON/OFF
textEntryH(40, "*")								//*
textEntryH(40, "*")								//*
//Expression Sounds ON/OFF
textEntryH4(40, "Laugh Sound", $BC, "ON/OFF")	//わらったひょうじょう♪O/X
textEntryH4(40, "Angry Sound", $BC, "ON/OFF")	//おこったひょうじょう♪O/X
textEntryH4(40, "Sad Sound", $BC, "ON/OFF")		//こまったひょうじょう♪O/X
textEntryH4(40, "Free Sound", $BC, "ON/OFF")	//フリーのひょうじょう♪O/X
textEntryH(40, "*")								//*
//Effects Sounds ON/OFF
textEntryH4(40, "Rain", $BC, "ON/OFF")				//あめ♪O/X
textEntryH4(40, "Snow", $BC, "ON/OFF")				//ゆき♪O/X
textEntryH4(40, "Thunder", $BC, "ON/OFF")			//カミナリ♪O/X
textEntryH4(40, "Cherry Blossoms", $BC, "ON/OFF")	//さくらふぶき♪O/X
textEntryH4(40, "Bubbles", $BC, "ON/OFF")			//あわ♪O/X
textEntryH4(40, "Space", $BC, "ON/OFF")				//うちゅう♪O/X
textEntryH4(40, "Flames", $BC, "ON/OFF")			//ほのお♪O/X
textEntryH4(40, "Fog", $BC, "ON/OFF")				//きり♪O/X
textEntryH4(40, "Concentration", $BC, "ON/OFF")		//しゅうちゅうせん♪O/X
textEntryH4(40, "Fire Breath", $BC, "ON/OFF")		//くちからほのお♪O/X
textEntryH4(40, "Breath", $BC, "ON/OFF")			//しろいいき♪O/X
textEntryH4(40, "Heart", $BC, "ON/OFF")				//ハート♪O/X
textEntryH4(40, "Dizzy", $BC, "ON/OFF")				//あたまにほし♪O/X
textEntryH4(40, "Glitter", $BC, "ON/OFF")			//キラキラ♪O/X
textEntryH4(40, "Halo", $BC, "ON/OFF")				//ごこう♪O/X
textEntryH4(40, "Ball of Light", $BC, "ON/OFF")		//ひかりのたま♪O/X
textEntryH4(40, "Foot Smoke", $BC, "ON/OFF")		//あしからけむり♪O/X
textEntryH4(40, "Blinding Magic", $BC, "ON/OFF")	//ため♪O/X
textEntryH4(40, "Full Power", $BC, "ON/OFF")		//みなぎるチカラ♪O/X
textEntryH4(40, "Beam of Energy", $BC, "ON/OFF")	//エネルギーほう♪O/X
textEntryH4(40, "Shockwave", $BC, "ON/OFF")			//しょうげきは♪O/X
textEntryH4(40, "Explosion", $BC, "ON/OFF")			//ばくはつ♪O/X
textEntryH4(40, "More Explosions", $BC, "ON/OFF")	//あちこちばくはつ♪O/X
textEntryH4(40, "Big Head", $BC, "ON/OFF")			//あたまをおおきく♪O/X
textEntryH4(40, "Actor Appears", $BC, "ON/OFF")		//タレントあらわれる♪O/X
textEntryH4(40, "Transparent", $BC, "ON/OFF")		//タレントはんとうめい♪O/X
textEntryH4(40, "Actor Disappears", $BC, "ON/OFF")	//タレントきえる♪O/X
textEntryH(40, "*")									//*
//Filter Sounds ON/OFF
textEntryH4(40, "Weak Blur", $BC, "ON/OFF")			//うすくぼかす♪O/X
textEntryH4(40, "Strong Blur", $BC, "ON/OFF")		//こくぼかす♪O/X
textEntryH4(40, "Layering Effect", $BC, "ON/OFF")	//かさねこうか♪O/X
textEntryH4(40, "Monochrome", $BC, "ON/OFF")		//モノクロ♪O/X
textEntryH4(40, "Sepia", $BC, "ON/OFF")				//セピア♪O/X
textEntryH4(40, "Two Colors", $BC, "ON/OFF")		//2かいちょう♪O/X
textEntryH4(40, "Monochrome Frame", $BC, "ON/OFF")	//モノクロわく♪O/X
textEntryH4(40, "Soft Focus", $BC, "ON/OFF")		//ソフトフォーカス♪O/X
textEntryH4(40, "Mirage", $BC, "ON/OFF")			//しんきろう♪O/X
textEntryH4(40, "Underwater", $BC, "ON/OFF")		//すいちゅう♪O/X
textEntryH4(40, "Deep Colors", $BC, "ON/OFF")		//いろをこく♪O/X
textEntryH4(40, "Pale Colors", $BC, "ON/OFF")		//いろをうすく♪O/X
textEntryH4(40, "Negative", $BC, "ON/OFF")			//ネガ♪O/X
textEntryH4(40, "Mosaic", $BC, "ON/OFF")			//モザイク♪O/X
textEntryH4(40, "Noise", $BC, "ON/OFF")				//ノイズ♪O/X
textEntryH4(40, "Monitor", $BC, "ON/OFF")			//モニター♪O/X
textEntryH4(40, "Enlarge", $BC, "ON/OFF")			//かくだい♪O/X
textEntryH4(40, "Reduce", $BC, "ON/OFF")			//しゅくしょう♪O/X
textEntryH4(40, "Half Size", $BC, "ON/OFF")			//ミニサイズ♪O/X
textEntryH4(40, "Flip", $BC, "ON/OFF")				//はんてん♪O/X
textEntryH4(40, "Split in 2", $BC, "ON/OFF")		//2ぶんかつ♪O/X
textEntryH4(40, "Split in 4", $BC, "ON/OFF")		//4ぶんかつ♪O/X
textEntryH4(40, "Old Film", $BC, "ON/OFF")			//むかしのフィルム♪O/X
textEntryH4(40, "Drawing Paper", $BC, "ON/OFF")		//ほうかい♪O/X
textEntryH4(40, "Distortion", $BC, "ON/OFF")		//ぐにゃぐにゃ♪O/X
textEntryH4(40, "Dissolve", $BC, "ON/OFF")			//ざんぞう♪O/X
textEntryH4(40, "Keep Still", $BC, "ON/OFF")		//ぶんしん♪O/X
//Caption Sounds ON/OFF
textEntryH4(40, "Subtitle", $BC, "ON/OFF")					//よこがきした♪O/X
textEntryH4(40, "Subtitle Typing", $BC, "ON/OFF")			//よこがき1もじずつ♪O/X
textEntryH4(40, "Subtitle Limit", $BC, "ON/OFF")			//よこがきげんかい♪O/X
textEntryH4(40, "Subtitle Above", $BC, "ON/OFF")			//よこがきうえ♪O/X
textEntryH4(40, "Vertical", $BC, "ON/OFF")					//たてがき♪O/X
textEntryH4(40, "Vertical Bubble", $BC, "ON/OFF")			//たてがきふきだし♪O/X
textEntryH4(40, "Horizontal Bubble", $BC, "ON/OFF")			//よこがきふきだし♪O/X
textEntryH4(40, "Title", $BC, "ON/OFF")						//タイトル♪O/X
textEntryH4(40, "Fade In", $BC, "ON/OFF")					//てんめつ♪O/X
textEntryH4(40, "Typing", $BC, "ON/OFF")					//もじうち♪O/X
textEntryH4(40, "Turn", $BC, "ON/OFF")						//めくれる♪O/X
textEntryH4(40, "Rotation", $BC, "ON/OFF")					//かいてん♪O/X
textEntryH4(40, "Zoom Out", $BC, "ON/OFF")					//ちいさくなる♪O/X
textEntryH4(40, "Zoom In", $BC, "ON/OFF")					//おおきくなる♪O/X
textEntryH4(40, "Fall Apart", $BC, "ON/OFF")				//おちる♪O/X
textEntryH4(40, "Dripping", $BC, "ON/OFF")					//したたる♪O/X
textEntryH4(40, "Eerie", $BC, "ON/OFF")						//ぶきみ♪O/X
textEntryH4(40, "Elastic", $BC, "ON/OFF")					//のびちぢみ♪O/X
textEntryH4(40, "Shaking", $BC, "ON/OFF")					//ふるえる♪O/X
textEntryH4(40, "One at a time", $BC, "ON/OFF")				//1もじずつ♪O/X
textEntryH4(40, "Red Line", $BC, "ON/OFF")					//あかいライン♪O/X
textEntryH4(40, "Horizontal Scroll", $BC, "ON/OFF")			//よこがきスクロール♪O/X
textEntryH4(40, "Scroll Up", $BC, "ON/OFF")					//よこがきうえへスクロール♪O/X
textEntryH4(40, "Vertical Writing Scroll", $BC, "ON/OFF")	//たてがきスクロール♪O/X
textEntryH4(40, "Crawl", $BC, "ON/OFF")						//おくへスクロール♪O/X
textEntryH4(40, "Giant Caption Scroll", $BC, "ON/OFF")		//おおきいもじスクロール♪O/X
textEntryH4(40, "Wave Scroll", $BC, "ON/OFF")				//なみがた♪O/X
textEntryH4(40, "Bulletin Board", $BC, "ON/OFF")			//でんこうけいじばん♪O/X
textEntryH4(40, "Window", $BC, "ON/OFF")					//わくつきウインドウ♪O/X
textEntryH4(40, "Typing Window", $BC, "ON/OFF")				//1もじずつウインドウ♪O/X
textEntryH4(40, "Sing Along", $BC, "ON/OFF")				//カラオケ♪O/X
textEntryH4(40, "Corner", $BC, "ON/OFF")					//エルがた♪O/X
textEntryH4(40, "Wacky Display", $BC, "ON/OFF")				//てきとうにひょうじ♪O/X
textEntryH4(40, "Too Many", $BC, "ON/OFF")					//たくさんひょうじ♪O/X
textEntryH4(40, "Scattered", $BC, "ON/OFF")					//バラバラ♪O/X


//--Music Effects
seek(0x11BD51C)
textEntryH(40, "None")			//なし
textEntryH(40, "Fade In")		//フェイドイン
textEntryH(40, "Fade Out")		//フェイドアウト
textEntryH(40, "Volume Down")	//ボリュームダウン
textEntryH(40, "Faster")		//はやくする
textEntryH(40, "Slower")		//おそくする

//--Sound Effects
seek(0x11BD62C)
textEntryH(40, "None")			//なし
textEntryH(40, "Fade In")		//フェイドイン
textEntryH(40, "Fade Out")		//フェイドアウト
textEntryH(40, "Echo")			//エコー

//--Graffiti
seek(0x11BD6D0)
textEntryH(40, "None")			//なし
textEntryH(40, "Graffiti 1")	//らくがき1
textEntryH(40, "Graffiti 2")	//らくがき2
textEntryH(40, "Graffiti 3")	//らくがき3
textEntryH(40, "Graffiti 4")	//らくがき4
textEntryH(40, "Graffiti 5")	//らくがき5
textEntryH(40, "Graffiti 6")	//らくがき6

//--Captions
seek(0x11BD7F0)
textEntryH(40, "None")			//なし
textEntryH(40, "Caption 1")		//テロップ1
textEntryH(40, "Caption 2")		//テロップ2
textEntryH(40, "Caption 3")		//テロップ3
textEntryH(40, "Caption 4")		//テロップ4
textEntryH(40, "Caption 5")		//テロップ5
textEntryH(40, "Caption 6")		//テロップ6
textEntryH(40, "Caption 7")		//テロップ7
textEntryH(40, "Caption 8")		//テロップ8
textEntryH(40, "Caption 9")		//テロップ9
textEntryH(40, "Caption 10")	//テロップ10
textEntryH(40, "Caption 11")	//テロップ11
textEntryH(40, "Caption 12")	//テロップ12
textEntryH(40, "Caption 13")	//テロップ13
textEntryH(40, "Caption 14")	//テロップ14
textEntryH(40, "Caption 15")	//テロップ15
textEntryH(40, "Caption 16")	//テロップ16
textEntryH(40, "Caption 17")	//テロップ17
textEntryH(40, "Caption 18")	//テロップ18
textEntryH(40, "Caption 19")	//テロップ19
textEntryH(40, "Caption 20")	//テロップ20
textEntryH(40, "Caption 21")	//テロップ21
textEntryH(40, "Caption 22")	//テロップ22
textEntryH(40, "Caption 23")	//テロップ23
textEntryH(40, "Caption 24")	//テロップ24
textEntryH(40, "Caption 25")	//テロップ25
textEntryH(40, "Caption 26")	//テロップ26
textEntryH(40, "Caption 27")	//テロップ27
textEntryH(40, "Caption 28")	//テロップ28
textEntryH(40, "Caption 29")	//テロップ29
textEntryH(40, "Caption 30")	//テロップ30
textEntryH(40, "Caption 31")	//テロップ31
textEntryH(40, "Caption 32")	//テロップ32
textEntryH(40, "Caption 33")	//テロップ33
textEntryH(40, "Caption 34")	//テロップ34
textEntryH(40, "Caption 35")	//テロップ35
textEntryH(40, "Caption 36")	//テロップ36
textEntryH(40, "Caption 37")	//テロップ37
textEntryH(40, "Caption 38")	//テロップ38
textEntryH(40, "Caption 39")	//テロップ39
textEntryH(40, "Caption 40")	//テロップ40
textEntryH(40, "Caption 41")	//テロップ41
textEntryH(40, "Caption 42")	//テロップ42
textEntryH(40, "Caption 43")	//テロップ43
textEntryH(40, "Caption 44")	//テロップ44
textEntryH(40, "Caption 45")	//テロップ45
textEntryH(40, "Caption 46")	//テロップ46
textEntryH(40, "Caption 47")	//テロップ47
textEntryH(40, "Caption 48")	//テロップ48
textEntryH(40, "Caption 49")	//テロップ49
textEntryH(40, "Caption 50")	//テロップ50
textEntryH(40, "Caption 51")	//テロップ51
textEntryH(40, "Caption 52")	//テロップ52
textEntryH(40, "Caption 53")	//テロップ53
textEntryH(40, "Caption 54")	//テロップ54
textEntryH(40, "Caption 55")	//テロップ55


//--Sound List
seek(0x11BE448)
//-Motion & Sounds
textEntryH(40, "None")				//なし
textEntryH(40, "Footstep")			//あしおと
textEntryH(40, "Puddle Footstep")	//みずたまりのあしおと
textEntryH(40, "Giant Footstep")	//きょじんのあしおと
textEntryH(40, "Monster Footstep")	//かいじゅうのあしおと
textEntryH(40, "Penguin Footstep")	//ペンギンのあしおと
textEntryH(40, "Robot Footstep")	//ロボットのあしおと

textEntryH(40, "Collapse")			//たおれる
textEntryH(40, "Slide")				//すべる
textEntryH(40, "Brake")				//ブレーキ
textEntryH(40, "Swing")				//ふる
textEntryH(40, "Strong Swing")		//おおきくふる
textEntryH(40, "Punch")				//パンチ
textEntryH(40, "Slap")				//ひっぱたく

textEntryH(40, "Clap")				//てをうつ
textEntryH(40, "Polish")			//みがく
textEntryH(40, "Bone Squeak")		//ほねがきしむ
textEntryH(40, "Water Drop")		//すいてき
textEntryH(40, "Swim")				//およぐ
textEntryH(40, "Gas")				//ブッ!
textEntryH(40, "Applause")			//はくしゅ

textEntryH(40, "Draw Sword")		//けんをぬく
textEntryH(40, "Swords Collide")	//カタナがふれあう
textEntryH(40, "Sword Slash")		//カタナできる
textEntryH(40, "Explosion")			//ばくはつ
textEntryH(40, "Pistol")			//ケンジュウ
textEntryH(40, "Sci-Fi Gun")		//SFガン
textEntryH(40, "Fan")				//ハリセン

textEntryH(40, "Jump")				//ジャンプ
textEntryH(40, "Throw")				//なげる
textEntryH(40, "Fall")				//おちる
textEntryH(40, "Hit")				//めいちゅう
textEntryH(40, "Crush")				//つぶれる
textEntryH(40, "Lay Egg")			//たまごをうむ
textEntryH(40, "Tub")				//タライ

textEntryH(40, "Car Horn")			//クラクション
textEntryH(40, "Bicycle Bell")		//じてんしゃのベル
textEntryH(40, "Shutter")			//シャッター
textEntryH(40, "Radio Signal")		//でんぱ
textEntryH(40, "Knock")				//ノック
textEntryH(40, "Pulse")				//しんぞう
textEntryH(40, "Typewriter")		//タイプライター

textEntryH(40, "Good Answer!")		//ピンポン
textEntryH(40, "Buzzer")			//ブザー
textEntryH(40, "Trumpet Toy")		//おもちゃのラッパ
textEntryH(40, "Wobbly")			//ボヨヨ～ン
textEntryH(40, "Random")			//らくちん
textEntryH(40, "Beep")				//ピコ
textEntryH(40, "Bubble")			//あわ

textEntryH(40, "Yell")				//きあい
textEntryH(40, "Pop")				//ポン
textEntryH(40, "Give up")			//おてあげ
textEntryH(40, "Point")				//ポイ
textEntryH(40, "Bump")				//ぶつかる
textEntryH(40, "Falling Back")		//しりもち
textEntryH(40, "Question")			//はてな
//-Animals & Voices
textEntryH(40, "None")				//なし
textEntryH(40, "Dog")				//イヌ
textEntryH(40, "Cat")				//ネコ
textEntryH(40, "Monkey")			//サル
textEntryH(40, "Penguin")			//ペンギン
textEntryH(40, "Elephant")			//ゾウ
textEntryH(40, "Pig")				//ブタ

textEntryH(40, "Chick")				//ヒヨコ
textEntryH(40, "Seagull")			//カモメ
textEntryH(40, "Chicken")			//ニワトリ
textEntryH(40, "Crow")				//カラス
textEntryH(40, "Owl")				//フクロウ
textEntryH(40, "Boo")				//テレサ
textEntryH(40, "Yoshi")				//ヨッシー

textEntryH(40, "Baby")				//あかちゃん
textEntryH(40, "Creepy Laugh")		//ヒゲおやじ
textEntryH(40, "Bowser")			//クッパ
textEntryH(40, "Laughs")			//わらい
textEntryH(40, "Yeah!")				//イエーイ
textEntryH(40, "Scream")			//ひめい
textEntryH(40, "Appeal")			//うっふ～ん
//-Instruments
textEntryH(40, "None")				//なし
textEntryH(40, "1UP")				//1UP
textEntryH(40, "Power Up")			//きょだいか
textEntryH(40, "Enter Pipe")		//ドカンにはいる
textEntryH(40, "Question Block")	//はてなボックス
textEntryH(40, "Coin")				//コイン
textEntryH(40, "Solved")			//ナゾがとける

textEntryH(40, "Bell")				//ベル
textEntryH(40, "Transform")			//へんしん
textEntryH(40, "Horror")			//ホラー
textEntryH(40, "Clappers")			//ひょうしぎ
textEntryH(40, "Orchestra Hit")		//オーケストラヒット
textEntryH(40, "Cowbell")			//ウシのベル
textEntryH(40, "Conga")				//コンガ

textEntryH(40, "Cymbal")			//シンバル
textEntryH(40, "Bass Drum")			//バスドラム
textEntryH(40, "Snare Drum")		//スネアドラム
textEntryH(40, "Timpani")			//ティンパニー
textEntryH(40, "Maracas")			//マラカス
textEntryH(40, "Grease Down")		//グリスダウン
textEntryH(40, "Grease Up")			//グリスアップ

textEntryH(40, "Piano Do")			//ピアノ・ド
textEntryH(40, "Piano Re")			//ピアノ・レ
textEntryH(40, "Piano Mi")			//ピアノ・ミ
textEntryH(40, "Piano Fa")			//ピアノ・ファ
textEntryH(40, "Piano Sol")			//ピアノ・ソ
textEntryH(40, "Piano La")			//ピアノ・ラ
textEntryH(40, "Piano Ti")			//ピアノ・シ

textEntryH(40, "Guitar C")			//ギター・C
textEntryH(40, "Guitar D")			//ギター・D
textEntryH(40, "Guitar E")			//ギター・E
textEntryH(40, "Guitar F")			//ギター・F
textEntryH(40, "Guitar G")			//ギター・G
textEntryH(40, "Guitar A")			//ギター・A
textEntryH(40, "Guitar B")			//ギター・B
//-Sound Loops
textEntryH(40, "None")				//なし
textEntryH(40, "Engine")			//エンジン
textEntryH(40, "Helicopter")		//ヘリコプター
textEntryH(40, "Airplane")			//プロペラひこうき
textEntryH(40, "Friction Motor")	//ゼンマイ
textEntryH(40, "Siren")				//サイレン
textEntryH(40, "Telephone")			//でんわ

textEntryH(40, "Conveyor")			//コンベアー
textEntryH(40, "Clock")				//とけい
textEntryH(40, "Machine Gun")		//マシンガン
textEntryH(40, "Drum Roll")			//スネアロール
textEntryH(40, "Wasp")				//ハチ
textEntryH(40, "Spray")				//スプレー
textEntryH(40, "Creak")				//きしみ

textEntryH(40, "Accumulate Power")	//チカラをためる
textEntryH(40, "Fire Breath")		//くちからほのお
textEntryH(40, "Flames")			//ほのお
textEntryH(40, "Concentration")		//しゅうちゅうせん
textEntryH(40, "Halo")				//ごこう
textEntryH(40, "Dizzy")				//ほし
textEntryH(40, "Noise")				//ノイズ

textEntryH(40, "Children Voices")	//こびとのこえ
textEntryH(40, "Zoom In")			//おおきくなる
textEntryH(40, "Zoom Out")			//ちいさくなる
textEntryH(40, "Inflate")			//ふくらむ
textEntryH(40, "Deflate")			//ちぢむ
textEntryH(40, "Appearing")			//あらわれる
textEntryH(40, "Disappearing")		//きえる
//-Environments
textEntryH(40, "None")				//なし
textEntryH(40, "Rain")				//あめ
textEntryH(40, "Strong Wind")		//つよいかぜ
textEntryH(40, "Weaker Wind")		//よわいかぜ
textEntryH(40, "Thunder")			//カミナリ
textEntryH(40, "Wave")				//なみ
textEntryH(40, "Underwater")		//すいちゅう

textEntryH(40, "Eerie")				//こわいふんいき
textEntryH(40, "Mysterious")		//ふしぎなふんいき
textEntryH(40, "Jungle")			//ジャングル
textEntryH(40, "Cheering")			//かんせい
textEntryH(40, "Noisy Crowd")		//ざわめき
textEntryH(40, "Traffic Jam")		//じゅうたい
textEntryH(40, "Night")				//よる
//-Talent Voice
textEntryH(40, "Talent 1 Laugh")		//タレント1のわらったこえ
textEntryH(40, "Talent 1 Angry")		//タレント1のおこったこえ
textEntryH(40, "Talent 1 Sad")			//タレント1のこまったこえ
textEntryH(40, "Talent 1 Free")			//タレント1のフリーのこえ
textEntryH(40, "Talent 1 Memorized")	//タレント1のおぼえたこえ

textEntryH(40, "Talent 2 Laugh")		//タレント2のわらったこえ
textEntryH(40, "Talent 2 Angry")		//タレント2のおこったこえ
textEntryH(40, "Talent 2 Sad")			//タレント2のこまったこえ
textEntryH(40, "Talent 2 Free")			//タレント2のフリーのこえ
textEntryH(40, "Talent 2 Memorized")	//タレント2のおぼえたこえ

textEntryH(40, "Talent 3 Laugh")		//タレント3のわらったこえ
textEntryH(40, "Talent 3 Angry")		//タレント3のおこったこえ
textEntryH(40, "Talent 3 Sad")			//タレント3のこまったこえ
textEntryH(40, "Talent 3 Free")			//タレント3のフリーのこえ
textEntryH(40, "Talent 3 Memorized")	//タレント3のおぼえたこえ
//-Recorded
textEntryH(40, "Recording 1 Pitch +2")	//ろくおん1のたかさ+2
textEntryH(40, "Recording 1 Pitch +1")	//ろくおん1のたかさ+1
textEntryH(40, "Recording 1 Normal")	//ろくおん1のひょうじゅん
textEntryH(40, "Recording 1 Pitch -1")	//ろくおん1のたかさ-1
textEntryH(40, "Recording 1 Pitch -2")	//ろくおん1のたかさ-2
textEntryH(40, "Recording 1 Loop")		//ろくおん1のくりかえし

textEntryH(40, "Recording 2 Pitch +2")	//ろくおん2のたかさ+2
textEntryH(40, "Recording 2 Pitch +1")	//ろくおん2のたかさ+1
textEntryH(40, "Recording 2 Normal")	//ろくおん2のひょうじゅん
textEntryH(40, "Recording 2 Pitch -1")	//ろくおん2のたかさ-1
textEntryH(40, "Recording 2 Pitch -2")	//ろくおん2のたかさ-2
textEntryH(40, "Recording 2 Loop")		//ろくおん2のくりかえし

textEntryH(40, "Recording 3 Pitch +2")	//ろくおん3のたかさ+2
textEntryH(40, "Recording 3 Pitch +1")	//ろくおん3のたかさ+1
textEntryH(40, "Recording 3 Normal")	//ろくおん3のひょうじゅん
textEntryH(40, "Recording 3 Pitch -1")	//ろくおん3のたかさ-1
textEntryH(40, "Recording 3 Pitch -2")	//ろくおん3のたかさ-2
textEntryH(40, "Recording 3 Loop")		//ろくおん3のくりかえし


//--Default Lighting Types
seek(0x11C01B8)
textEntryH(40, "Original")			//オリジナル
textEntryH(40, "Noon")				//おひる
textEntryH(40, "Morning")			//あさ
textEntryH(40, "Evening")			//ゆうがた
textEntryH(40, "Night")				//よる
textEntryH(40, "Red & Blue")		//あかとあお
textEntryH(40, "Moving Light")		//うごくライト

textEntryH(40, "Dimmed")			//うすぐらい
textEntryH(40, "Light in the dark")	//くらやみにライト
textEntryH(40, "Light from below")	//したからライト
textEntryH(40, "Light the face")	//かおをてらす
textEntryH(40, "Backlight")			//ぎゃっこう
textEntryH(40, "Frontlight")		//かげなし
textEntryH(40, "Silhouette")		//シルエット


//--Recording Menu
seek(0x11C1A08)
textEntryH(0x20, "Exit (Save Album)")			//でる(アルバムのセーブ)
textEntryH(0x20, "Record Mode")					//ろくおんモード
textEntryH(0x20, "Sound Album")					//サウンドアルバム
textEntryH(0x20, "Undo")						//やりなおし
textEntryH(0x20, "Microphone")					//マイクにゅうりょく
textEntryH(0x20, "Line In")						//ラインにゅうりょく
textEntryH(0x20, "Start Recording")				//ろくおん
textEntryH(0x20, "Stop Recording")				//ろくおんやめる
textEntryH(0x20, "Play/Stop")					//さいせい/ていし
textEntryH(0x20, "*Stop")						//*さいせいやめる
textEntryH(0x20, "Loop")						//ループする/しない
textEntryH(0x20, "*Do Not Loop")				//*くりかえさない
textEntryH(0x20, "Grab Recording")				//おとをつかむ
textEntryH(0x20, "Use Recording from Album")	//アルバムにのこす
textEntryH(0x20, "Save Recording to Album")		//アルバムからよびだす


//--Options Menu
seek(0x11C4888)
textEntryH(40, "Save & Exit")				//けってい(セーブ)

textEntryH(40, "Enable Shadows")			//かげをだす
textEntryH(40, "Enable Eye Blinks")			//まばたきをする
textEntryH(40, "Look at camera")			//カメラめせんにする
textEntryH(40, "Enable Action Sounds")		//おとをだす
textEntryH(40, "Enable Expression Sounds")	//ひょうじょうのこえをだす
textEntryH(40, "Enable Effect Sounds")		//かんきょうエフェクトのおとをだす
textEntryH(40, "Enable Filter Sounds")		//がめんフィルタのおとをだす
textEntryH(40, "Enable Caption Sounds")		//テロップのおとをだす

textEntryH(40, "Disable Shadows")			//かげをださない
textEntryH(40, "Disable Eye Blinks")		//まばたきをしない
textEntryH(40, "Don't look at camera")		//カメラめせんにしない
textEntryH(40, "Disable Action Sounds")		//おとをださない
textEntryH(40, "Disable Expression Sounds")	//ひょうじょうのこえをださない
textEntryH(40, "Disable Effect Sounds")		//かんきょうエフェクトのおとをださない
textEntryH(40, "Disable Filter Sounds")		//がめんフィルタのおとをださない
textEntryH(40, "Disable Caption Sounds")	//テロップのおとをださない


//--Graffiti Maker
seek(0x11DD5E4)
base 0x80293E44
movie16_1:
textEntryH0("")					//80293E44 - ページ
movie16_2:
textEntryH0("Pen")				//80293E4C - ペン
movie16_3:
textEntryH0("Spray")			//80293E54 - スプレー

movie16_4:
textEntryH0("Thin")				//80293E60 - ほそい
movie16_5:
textEntryH0("Medium")			//80293E68 - ふつう
movie16_6:
textEntryH0("Thick")			//80293E70 - ふとい

movie16_7:
textEntryH0("Shapes")			//80293E78 - ずけい
movie16_8:
textEntryH0("Eraser")			//80293E80 - けしゴム
movie16_9:
textEntryH0("Fill")				//80293E8C - ぬりつぶし
movie16_10:
textEntryH0("Text")				//80293E98 - もじスタンプ
movie16_11:
textEntryH0("Text Color")		//80293EA8 - スタンプカラー
movie16_12:
textEntryH0("Clear")			//80293EB8 - ぜんたいをけす
movie16_13:
textEntryH0("Undo")				//80293EC8 - やりなおし
movie16_14:
textEntryH0("Free")				//80293ED4 - じゆうせん
movie16_15:
textEntryH0("Line")				//80293EE0 - ちょくせん
movie16_16:
textEntryH0("Rectangle")		//80293EEC - しかくけい
movie16_17:
textEntryH0("Solid Rectangle")	//80293EF8 - ぬりつぶしたしかくけい
movie16_18:
textEntryH0("Circle")			//80293F10 - えん
movie16_19:
textEntryH0("Solid Circle")		//80293F18 - ぬりつぶしたえん
movie16_20:
textEntryH0("1/2")				//80293F2C - 1/2ページ
movie16_21:
textEntryH0("Hiragana")			//80293F3C - ひらがな
movie16_22:
textEntryH0("Katakana")			//80293F48 - カタカナ
movie16_23:
textEntryH0("Kanji")			//80293F54 - かんじ
movie16_24:
textEntryH0("Uppercase")		//80293F5C - おおもじ
movie16_25:
textEntryH0("Lowercase")		//80293F68 - こもじ
movie16_26:
textEntryH0("Numbers/Symbols")	//80293F70 - すうじ・きごう
movie16_27:
textEntryH0("Small")			//80293F80 - ちいさい
movie16_28:
textEntryH0("Medium")			//80293F8C - ふつう
movie16_29:
textEntryH0("Large")			//80293F94 - おおきい
movie16_30:
textEntryH0("Exit")				//80293FA0 - でる
movie16_31:
textEntryH0("Cut & Copy")		//80293FA8 - きりとり・はりつけ
movie16_32:
textEntryH0("Grid Display")		//80293FBC - マスめひょうじのきりかえ
movie16_33:
textEntryH0("Unfill")			//80293FD8 - おなじいろをけす
movie16_34:
textEntryH0("Color Pattern 1")	//80293FEC - カラーパターン1

check(0x11DD7A0)

seek(0x11D0AC2); dh (movie16_7)
seek(0x11D0EC6); dh (movie16_8)
seek(0x11CE7BA); dh (movie16_9)
seek(0x11CEDBA); dh (movie16_10)
seek(0x11D150E); dh (movie16_11)
seek(0x11CCD9A); dh (movie16_12)
seek(0x11CDEDA); dh (movie16_13)
seek(0x11D09F6); dh (movie16_30)
seek(0x11D2036); dh (movie16_31)
seek(0x11D1A1A); dh (movie16_32)
seek(0x11CE062); dh (movie16_34)
seek(0x11CE084); sb t1,movie16_34 + 14(at)

seek(0x11DD7AC)
dw (movie16_2), (movie16_3)
dw (movie16_4), (movie16_5), (movie16_6)
dw (movie16_15), (movie16_16), (movie16_18), (movie16_17), (movie16_19)
dw (movie16_21), (movie16_22), (movie16_23), (movie16_25), (movie16_24), (movie16_26)
dw (movie16_27), (movie16_28), (movie16_29)
dw (movie16_4), (movie16_5), (movie16_6), (movie16_16), (movie16_18), (movie16_33)

//Page Number Text (Graffiti) RAM 802801E8 - 0x11C9988
seek(0x11C9988 + 0x14)
sb 0,0(a0)
seek(0x11C9988 + 0x3C)
nop
nop
nop
nop

seek(0x11C9828 + 0xC)
lbu a0,0(v0)
sb v1,0(v0)
addiu v0,v0,1
seek(0x11C9828 + 0x24)
sb 0,0(v0)


seek(0x11DDCF8)
base 0x80294558
movie17_1:
textEntryH0("Exit")					//80294558 - でる
movie17_2:
textEntryH0("Undo")					//80294560 - やりなおし
movie17_3:
textEntryH0("Draw Graffiti")		//8029456C - らくがき
movie17_4:
textEntryH0("Graffiti Effect")		//80294578 - だしかたをえらぶ
movie17_5:
textEntryH0("Graffiti Display")		//8029458C - ひょうじいちをえらぶ
movie17_6:
textEntryH0("Graffiti Album")		//802945A4 - らくがきアルバム
//Graffiti Display
movie17_7:
textEntryH0("Behind the Actor")		//802945B8 - タレントのうしろ
movie17_8:
textEntryH0("Above the Actor")		//802945CC - タレントのまえ
movie17_9:
textEntryH0("Above the Caption")	//802945DC - テロップのつぎ
//Graffiti Effects
movie17_10:
textEntryH0("Normal")				//802945EC - ふつう
movie17_11:
textEntryH0("Flash")				//802945F4 - てんめつ
movie17_12:
textEntryH0("Translucent")			//80294600 - はんとうめい
movie17_13:
textEntryH0("Enter from the Right")	//80294610 - みぎからでてとまる
movie17_14:
textEntryH0("Scroll Right")			//80294624 - みぎスクロール
movie17_15:
textEntryH0("Scroll Up")			//80294634 - うえスクロール
movie17_16:
textEntryH0("Loop")					//80294644 - ループ

movie17_17:
textEntryH0("Diagonal Scroll")		//8029464C - ななめスクロール
movie17_18:
textEntryH0("Flying")				//80294660 - とぶ
movie17_19:
textEntryH0("Turn Around")			//80294668 - まわる
movie17_20:
textEntryH0("Fall")					//80294670 - おちる
movie17_21:
textEntryH0("Horizontal Strips")	//80294678 - さゆうがったい
movie17_22:
textEntryH0("Vertical Strips")		//80294688 - じょうげがったい
movie17_23:
textEntryH0("Crush")				//8029469C - つぶれる

movie17_24:
textEntryH0("Zoom In")				//802946A8 - おおきくなる
movie17_25:
textEntryH0("Zoom Out")				//802946B8 - ちいさくなる
movie17_26:
textEntryH0("Back & Forth")			//802946C8 - ぜんご
movie17_27:
textEntryH0("Rotation")				//802946DC - かいてん
movie17_28:
textEntryH0("2 Rotations")			//802946D0 - 2かいてん
movie17_29:
textEntryH0("Rise Up")				//802946E8 - おきあがる
movie17_30:
textEntryH0("Crawl")				//802946F4 - おくへスクロール

check(0x11DDEA8)

seek(0x11D9072); dh (movie17_1)
seek(0x11D957A); dh (movie17_2)
seek(0x11D913A); dh (movie17_3)
seek(0x11D924E); dh (movie17_4)
seek(0x11D935A); dh (movie17_5)
seek(0x11D9466); dh (movie17_6)

seek(0x11DDEA8)
dw (movie17_10), (movie17_11), (movie17_12), (movie17_13), (movie17_14), (movie17_15), (movie17_16)
dw (movie17_17), (movie17_18), (movie17_19), (movie17_20), (movie17_21), (movie17_22), (movie17_23)
dw (movie17_24), (movie17_25), (movie17_26), (movie17_27), (movie17_28), (movie17_29), (movie17_30)

dw (movie17_7), (movie17_8), (movie17_9)

//--Graffiti Album
seek(0x11F6138)
textEntryH(40, "Exit (Save Album)")			//でる(アルバムのセーブ)
textEntryH(40, "Undo")						//やりなおし
textEntryH(40, "Grab Graffiti")				//らくがきをつかむ
textEntryH(40, "Use Graffiti from Album")	//アルバムにのこす
textEntryH(40, "Save Graffiti to Album")	//アルバムからよびだす

seek(0x11DE000)
//アルバムのらくがきを|消します。|よろしいですか？
textEntryASCII0("This Graffiti will be deleted.|Are you sure?")

seek(0x11DC512); dh $000C
seek(0x11DC516); dh $0002

//--Image Processing Text
seek(0x12A5138); textEntryH0("Save")			//けってい
seek(0x12A514C); textEntryH0("Undo")			//やりなおし
seek(0x12A5160); textEntryH0("Go Back")		//もどる
