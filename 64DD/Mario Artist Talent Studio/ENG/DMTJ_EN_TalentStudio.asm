//Talent Studio Mode
//Code Overlay (Disk 0x151030 - RAM 802FF800)
//Selected Icon ID = 80446BC8
outputGame()
seek(0x151030)
base 0x802FF800

//---Buttons (Disk 0x20BA80 / RAM 803BA250)
//--Main Talent Screen
seek(0x20BA80)
talent1_1:
textEntryH0("Back to Main Menu")	//RAM 803BA250 - セレクトがめんにもどる
talent1_2:
textEntryH0("Save/Load Talent")		//RAM 803BA268 - [タレント]のセーブ・ロード
talent1_3:
textEntryH0("Select Type")		//RAM 803BA288 - タイプをえらぶ
talent1_4:
textEntryH0("Head")			//RAM 803BA298 - りんかくなど
talent1_5:
textEntryH0("Face")			//RAM 803BA2A8 - かお・はだのいろ
talent1_6:
textEntryH0("Body & Clothes")		//RAM 803BA2BC - ふくそう・スタイル
talent1_7:
textEntryH0("Voice")			//RAM 803BA2D0 - こえ
talent1_8:
textEntryH0("Name")			//RAM 803BA2D8 - タレントのなまえ
talent1_9:		//803BAEFC - 001B
textEntryH0("Speak (Microphone)")	//RAM 803BA2EC - セリフにゅうりょく(マイク)
talent1_10:
textEntryH0("Music 1")			//RAM 803BA30C - BGM1
talent1_11:
textEntryH0("Music 2")			//RAM 803BA318 - BGM2
talent1_12:
textEntryH0("Music 3")			//RAM 803BA324 - BGM3
talent1_13:
textEntryH0("Show Time")		//RAM 803BA330 - ショータイム
talent1_14:		//803BAF24 - 0008
textEntryH0("Show Time Edit")		//RAM 803BA340 - ショータイムエディット
talent1_15:		//803BAF4C - 0009
textEntryH0("Choose a Pose")		//RAM 803BA358 - ポーズをえらぶ
talent1_16:		//803BAF74 - 001F
textEntryH0("Mouse Speed")		//RAM 803BA368 - マウススピード

//--Talent Type Screen
talent2_1:
textEntryH0("Restore")			//RAM 803BA378 - さいしょにもどす
talent2_2:
textEntryH0("Choose a Talent")		//RAM 803BA38C - ぜんしんをえらぶ
talent2_3:		//803BB1A4 - 0074
textEntryH0("Choose a Body")		//RAM 803BA3A0 - からだのタイプをかえる
talent2_4:		//803BB1CC - 0079
textEntryH0("Use a Talent Base")	//RAM 803BA3B8 - きほんキャラ

//--Talent Face Screen
talent3_1:
textEntryH0("Make a face")		//RAM 803BA3C8 - かおをつくる・はだのいろをきめる
talent3_2:
textEntryH0("Make a pattern")		//RAM 803BA3EC - もようをつくる
talent3_3:
textEntryH0("Capture Pak")		//RAM 803BA3FC - キャプチャーカセット
talent3_4:
textEntryH0("Game Boy Camera")		//RAM 803BA414 - ポケットカメラ
talent3_5:
textEntryH0("Load Picture")		//RAM 803BA424 - [2Dさくひん]のロード
talent3_6:
textEntryH0("Apply Makeup")		//RAM 803BA440 - おけしょう
talent3_7:
textEntryH0("Expressions")		//RAM 803BA44C - ひょうじょう
talent3_8:
textEntryH0("Face Album")		//RAM 803BA45C - かおアルバム

//--Talent Common Settings
talent4_1:
textEntryH0("Exit")			//RAM 803BA46C - でる
talent4_2:
textEntryH0("Exit (Save Album)")	//RAM 803BA474 - でる(アルバムのセーブ)
talent4_3:
textEntryH0("Page Feed")		//RAM 803BA490 - ページおくり
talent4_4:
textEntryH0("Shuffle")			//RAM 803BA4A0 - らくちんスイッチ
talent4_5:
textEntryH0("Clear All")		//RAM 803BA4B4 - すべてはずす
talent4_6:
textEntryH0("Undo")			//RAM 803BA4C4 - やりなおし
talent4_7:
textEntryH0("Move")			//RAM 803BA4D0 - いちをかえる
talent4_8:
textEntryH0("Rotate")			//RAM 803BA4E0 - むきをかえる
talent4_9:
textEntryH0("Resize")			//RAM 803BA4F0 - おおきさをかえる
talent4_10:
textEntryH0("Color 1")			//RAM 803BA504 - カラー1
talent4_11:
textEntryH0("Color 2")			//RAM 803BA510 - カラー2
talent4_12:
textEntryH0("Pattern 1")		//RAM 803BA51C - もよう1
talent4_13:
textEntryH0("Pattern 2")		//RAM 803BA528 - もよう2
talent4_14:
textEntryH0("Mark")			//RAM 803BA534 - マーク
talent4_15:
textEntryH0("Change Material")		//RAM 803BA53C - しつかんをかえる
talent4_16:
textEntryH0("Color Album")		//RAM 803BA550 - カラーアルバム
talent4_17:
textEntryH0("Pattern Album")		//RAM 803BA560 - もようアルバム
//Move
talent4_18:
textEntryH0("On Every Axis")		//RAM 803BA570 - すべてのほうこう
talent4_19:
textEntryH0("On Red Axis")		//RAM 803BA584 - アカじくのほうこう
talent4_20:
textEntryH0("On Green Axis")		//RAM 803BA598 - ミドリじくのほうこう
talent4_21:
textEntryH0("On Blue Axis")		//RAM 803BA5B0 - アオじくのほうこう
//Rotate
talent4_22:
textEntryH0("Around Red Axis")		//RAM 803BA5C4 - アカじくをちゅうしんに
talent4_23:
textEntryH0("Around Green Axis")	//RAM 803BA5DC - ミドリじくをちゅうしんに
talent4_24:
textEntryH0("Around Blue Axis")		//RAM 803BA5F8 - アオじくをちゅうしんに
//Resize
talent4_25:
textEntryH0("On Every Axis")		//RAM 803BA610 - すべてのほうこう
talent4_26:
textEntryH0("On Red Axis")		//RAM 803BA624 - アカじくにそって
talent4_27:
textEntryH0("On Green Axis")		//RAM 803BA638 - ミドリじくにそって
talent4_28:
textEntryH0("On Blue Axis")		//RAM 803BA64C - アオじくにそって
talent4_29:
textEntryH0("Reset")			//RAM 803BA660 - リセット

//--Talent Head Outline
talent5_1:
textEntryH0("Outline")			//RAM 803BA66C - りんかく
talent5_2:
textEntryH0("Hair")			//RAM 803BA678 - かみがた
talent5_3:
textEntryH0("Nose")			//RAM 803BA684 - はな
talent5_4:
textEntryH0("Ears")			//RAM 803BA68C - みみ
talent5_5:
textEntryH0("Beard")			//RAM 803BA694 - ひげ
talent5_6:
textEntryH0("Helmet")			//RAM 803BA69C - かぶりもの
talent5_7:
textEntryH0("Hat")			//RAM 803BA6A8 - ぼうし
talent5_8:
textEntryH0("Glasses")			//RAM 803BA6B0 - めがね
talent5_9:
textEntryH0("Earrings")			//RAM 803BA6B8 - アクセサリー
talent5_10:
textEntryH0("Accessories")		//RAM 803BA6C8 - こもの

//--Talent Body
talent6_1:
textEntryH0("Clothing")			//RAM 803BA6D0 - ふくをえらぶ
talent6_2:
textEntryH0("Body")			//RAM 803BA6E0 - スタイルをきめる
talent6_3:
textEntryH0("Undershirt")		//RAM 803BA6F4 - みずぎ・シャツ
talent6_4:
textEntryH0("Underwear")		//RAM 803BA704 - タイツスーツ
talent6_5:
textEntryH0("Shirt")			//RAM 803BA714 - うわぎ
talent6_6:
textEntryH0("Suits")			//RAM 803BA71C - いろいろなスーツ
talent6_7:
textEntryH0("Pants")			//RAM 803BA730 - パンツ
talent6_8:
textEntryH0("Socks")			//RAM 803BA738 - くつした
talent6_9:
textEntryH0("Shoes")			//RAM 803BA744 - くつ
talent6_10:
textEntryH0("Gloves")			//RAM 803BA74C - てぶくろ
talent6_11:
textEntryH0("Options")			//RAM 803BA758 - オプション
talent6_12:
textEntryH0("Body Proportions")		//RAM 803BA764 - とうしんをえらぶ
talent6_13:
textEntryH0("Body Shape")		//RAM 803BA778 - たいけいをきめる
talent6_14:
textEntryH0("1:8")			//RAM 803BA78C - 8とうしん
talent6_15:
textEntryH0("1:7.5")			//RAM 803BA798 - 7.5とうしん
talent6_16:
textEntryH0("1:6.5")			//RAM 803BA7A8 - 6.5とうしん
talent6_17:
textEntryH0("1:5.5")			//RAM 803BA7B8 - 5.5とうしん
talent6_18:
textEntryH0("1:5")			//RAM 803BA7C8 - 5とうしん
talent6_19:
textEntryH0("Standard")			//RAM 803BA7D4 - ひょうじゅん
talent6_20:
textEntryH0("1:4")			//RAM 803BA7E4 - 4とうしん
talent6_21:
textEntryH0("1:3.5")			//RAM 803BA7F0 - 3.5とうしん
talent6_22:
textEntryH0("1:3")			//RAM 803BA800 - 3とうしん
talent6_23:
textEntryH0("1:2.5")			//RAM 803BA80C - 2.5とうしん
talent6_24:
textEntryH0("1:2")			//RAM 803BA81C - 2とうしん
talent6_25:
textEntryH0("Large")			//RAM 803BA828 - ひまんがた
talent6_26:
textEntryH0("Thin")			//RAM 803BA834 - やせがた
talent6_27:
textEntryH0("Muscles")			//RAM 803BA840 - マッスル
talent6_28:
textEntryH0("Cartoon")			//RAM 803BA84C - まんが
talent6_29:
textEntryH0("Glamor")			//RAM 803BA854 - グラマー
talent6_30:
textEntryH0("Fluent")			//RAM 803BA860 - ペラ

//--Face Import
talent7_1:
textEntryH0("Confirm")			//RAM 803BA868 - けってい
talent7_2:
textEntryH0("Return")			//RAM 803BA874 - もどる
talent7_3:
textEntryH0("Nose Position")		//RAM 803BA87C - はなのいちをきめる
talent7_4:
textEntryH0("Pick a Skin color")	//RAM 803BA890 - はだのいろをえらぶ

//--Show Time
talent8_1:		//803BB62C - 0053
textEntryH0("Dance")			//RAM 803BA8A4 - おどる
talent8_2:
textEntryH0("Sports")			//RAM 803BA8AC - スポーツ
talent8_3:
textEntryH0("Life")			//RAM 803BA8B8 - せいかつ
talent8_4:
textEntryH0("Variety")			//RAM 803BA8C4 - いろいろ

//--Show Time Edit (Unused)
talent9_1:		//803BB6CC - 005C
textEntryH0("Hide Icons")		//RAM 803BA8D0 - アイコンをけす
talent9_2:		//803BB71C - 005E
textEntryH0("From the Start")		//RAM 803BA8E0 - せんとうにもどす
talent9_3:		//803BB744 - 005F
textEntryH0("Reset to Default Data")	//RAM 803BA8F4 - デフォルトデータをセット
talent9_4:
textEntryH0("Motion")			//RAM 803BA910 - モーション

//seek(0x20C234)
//--Show Time Edit (Unused)
talent10_1:
textEntryH0("Background")		//RAM 803BAA04 - はいけい
talent10_2:
textEntryH0("Light")			//RAM 803BAA10 - ライト
talent10_3:
textEntryH0("Camera")			//RAM 803BAA18 - カメラ
talent10_4:
textEntryH0("Graffiti")			//RAM 803BAA20 - らくがき
talent10_5:
textEntryH0("Graffiti 2")		//RAM 803BAA2C - らくがき2
talent10_6:
textEntryH0("Free Camera")		//RAM 803BAA38 - フリーカメラ
talent10_7:
textEntryH0("Face Camera")		//RAM 803BAA48 - かおカメラ
talent10_8:
textEntryH0("Upperbody Camera")		//RAM 803BAA54 - じょうはんしんカメラ
talent10_9:
textEntryH0("Fullbody Camera")		//RAM 803BAA6C - ぜんしんカメラ
talent10_10:
textEntryH0("Set")			//RAM 803BAA7C - セット
talent10_11:
textEntryH0("Delete")			//RAM 803BAA84 - とりけす
talent10_12:
textEntryH0("Normal Face")		//RAM 803BAA90 - ふつうのかお
talent10_13:
textEntryH0("Laugh")			//RAM 803BAAA0 - わらう
talent10_14:
textEntryH0("Angry")			//RAM 803BAAA8 - おこる
talent10_15:
textEntryH0("Sad")			//RAM 803BAAB0 - なく
talent10_16:
textEntryH0("Smile")			//RAM 803BAAB8 - ほほえむ
talent10_17:
textEntryH0("Standard")			//RAM 803BAAC4 - ひょうじゅん
talent10_18:
textEntryH0("Fixed Direction")		//RAM 803BAAD4 - ほうこうしてい
talent10_19:
textEntryH0("Draw")			//RAM 803BAAE4 - かく

//--Unused Options
talent11_1:
textEntryH0("Slow")			//RAM 803BAAEC - おそい
talent11_2:
textEntryH0("Medium")			//RAM 803BAAF4 - ふつう
talent11_3:
textEntryH0("Fast")			//RAM 803BAAFC - はやい
talent11_4:
textEntryH0("No Help")			//RAM 803BAB04 - ヘルプなし
talent11_5:
textEntryH0("With Help")		//RAM 803BAB10 - ヘルプあり

//--Talent Voice
talent12_1:
textEntryH0("Choose a voice type")	//RAM 803BAB1C - タイプをえらぶ
talent12_2:
textEntryH0("Choose a voice height")	//RAM 803BAB2C - たかさをえらぶ
talent12_3:
textEntryH0("Choose size")		//RAM 803BAB3C - おおきさをえらぶ
talent12_4:
textEntryH0("Male Voice")		//RAM 803BAB50 - おとこのこえ
talent12_5:
textEntryH0("Female Voice")		//RAM 803BAB60 - おんなのこえ
talent12_6:
textEntryH0("+3")			//RAM 803BAB70 - +3
talent12_7:
textEntryH0("+2")			//RAM 803BAB78 - +2
talent12_8:
textEntryH0("+1")			//RAM 803BAB80 - +1
talent12_9:
textEntryH0("Normal")			//RAM 803BAB88 - ひょうじゅん
talent12_10:
textEntryH0("-1")			//RAM 803BAB98 - -1
talent12_11:
textEntryH0("-2")			//RAM 803BABA0 - -2
talent12_12:
textEntryH0("-3")			//RAM 803BABA8 - -3
talent12_13:
textEntryH0("+3")			//RAM 803BABB0 - +3
talent12_14:
textEntryH0("+2")			//RAM 803BABB8 - +2
talent12_15:
textEntryH0("+1")			//RAM 803BABC0 - +1
talent12_16:
textEntryH0("Normal")			//RAM 803BABC8 - ひょうじゅん
talent12_17:
textEntryH0("-1")			//RAM 803BABD8 - -1
talent12_18:
textEntryH0("-2")			//RAM 803BABE0 - -2
talent12_19:
textEntryH0("-3")			//RAM 803BABE8 - -3
talent12_20:
textEntryH0("Listen (Laugh Expression)")	//RAM 803BABF0 - こえをきく(わらったひょうじょう)
talent12_21:
textEntryH0("Listen (Angry Expression)")	//RAM 803BAC14 - こえをきく(おこったひょうじょう)
talent12_22:
textEntryH0("Listen (Sad Expression)")		//RAM 803BAC38 - こえをきく(こまったひょうじょう)
talent12_23:
textEntryH0("Listen (Free Expression)")		//RAM 803BAC5C - こえをきく(フリーのひょうじょう)


//Repoint (0x28 byte entries)
//FFFFXXXX YYYYVVVV WWWW0000 TTTTTTTT
//PPPPPPPP ???????? SSSSSSSS ????????
//PPPPPPPP ????????
//--Description:
//FFFF = Function ID
//XXXX = X Position; YYYY = Y Position
//VVVV = X Size; WWWW = Y Size
//TTTTTTTT = Pointer to Texture
//SSSSSSSS = Pointer to Text
//PPPPPPPP = Pointer
seek(0x20C54C)
skip(24); dw (talent1_1)
skip(36); dw (talent1_2)
skip(36); dw (talent1_3)
skip(36); dw (talent1_4)
skip(36); dw (talent1_5)
skip(36); dw (talent1_7)
skip(36); dw (talent1_6)
skip(36); dw (talent1_8)
skip(36); dw (talent1_10)
skip(36); dw (talent1_11)
skip(36); dw (talent1_12)
skip(36); dw (talent1_13)
skip(36); dw (talent1_9)
skip(36); dw (talent1_14)
skip(36); dw (talent1_15)
skip(36); dw (talent1_16)
skip(36); dw (talent4_1)
skip(36); dw (talent4_2)
skip(36); dw (talent4_1)
skip(36); dw (talent4_1)
skip(36); dw (talent4_1)
skip(36); dw (talent4_1)
skip(36); dw (talent4_3)
skip(36); dw (talent4_3)
skip(36); dw (talent4_3)
skip(36); dw (talent4_3)
skip(36); dw (talent4_4)
skip(36); dw (talent2_1)
skip(36); dw (talent2_2)
skip(36); dw (talent2_3)
skip(36); dw (talent2_4)
skip(36); dw (talent3_1)
skip(36); dw (talent3_3)
skip(36); dw (talent3_4)
skip(36); dw (talent3_5)
skip(36); dw (talent3_6)
skip(36); dw (talent3_7)
skip(36); dw (talent3_8)
skip(40)
skip(40)
skip(36); dw (talent4_6)
skip(36); dw (talent3_2)
skip(36); dw (talent3_3)
skip(36); dw (talent3_4)
skip(36); dw (talent3_5)
skip(40)
skip(36); dw (talent7_2)
skip(36); dw (talent7_1)
skip(36); dw (talent7_4)
skip(36); dw (talent7_3)
skip(36); dw (talent7_2)
skip(36); dw (talent12_1)
skip(36); dw (talent12_2)
skip(36); dw (talent12_20)
skip(36); dw (talent12_21)
skip(36); dw (talent12_22)
skip(36); dw (talent12_23)
skip(36); dw (talent4_4)
skip(36); dw (talent8_1)
skip(36); dw (talent8_2)
skip(36); dw (talent8_3)
skip(36); dw (talent8_4)
skip(36); dw (talent9_1)
skip(40)
skip(36); dw (talent9_2)
skip(36); dw (talent9_3)
skip(40)
skip(40)
skip(40)
skip(40)

seek(0x20D230)
skip(24); dw (talent5_1)
skip(36); dw (talent5_2)
skip(36); dw (talent5_3)
skip(36); dw (talent5_4)
skip(36); dw (talent5_5)
skip(36); dw (talent5_6)
skip(36); dw (talent5_7)
skip(36); dw (talent5_8)
skip(36); dw (talent5_9)
skip(36); dw (talent5_10)
skip(36); dw (talent4_7)
skip(36); dw (talent4_8)
skip(36); dw (talent4_9)
skip(36); dw (talent4_5)
skip(36); dw (talent4_6)
skip(36); dw (talent4_10)
skip(36); dw (talent4_12)
skip(36); dw (talent4_11)
skip(36); dw (talent4_13)
skip(36); dw (talent4_14)
skip(36); dw (talent4_15)
skip(36); dw (talent4_16)
skip(36); dw (talent4_17)
skip(36); dw (talent9_4)
skip(36); dw (talent10_1)
skip(36); dw (talent10_2)
skip(36); dw (talent10_3)
skip(36); dw (talent10_4)
skip(36); dw (talent10_5)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(36); dw (talent4_18)
skip(36); dw (talent4_19)
skip(36); dw (talent4_20)
skip(36); dw (talent4_21)
skip(36); dw (talent4_22)
skip(36); dw (talent4_23)
skip(36); dw (talent4_24)
skip(36); dw (talent4_25)
skip(36); dw (talent4_26)
skip(36); dw (talent4_27)
skip(36); dw (talent4_28)
skip(36); dw (talent4_29)
skip(36); dw (talent4_29)
skip(36); dw (talent4_22)
skip(36); dw (talent4_23)
skip(36); dw (talent4_24)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(36); dw (talent12_4)
skip(36); dw (talent12_5)
skip(36); dw (talent12_6)
skip(36); dw (talent12_7)
skip(36); dw (talent12_8)
skip(36); dw (talent12_9)
skip(36); dw (talent12_10)
skip(36); dw (talent12_11)
skip(36); dw (talent12_12)
skip(36); dw (talent12_13)
skip(36); dw (talent12_14)
skip(36); dw (talent12_15)
skip(36); dw (talent12_16)
skip(36); dw (talent12_17)
skip(36); dw (talent12_18)
skip(36); dw (talent12_19)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(36); dw (talent10_10)
skip(36); dw (talent10_11)
skip(36); dw (talent4_29)
skip(36); dw (talent10_6)
skip(36); dw (talent10_7)
skip(36); dw (talent10_8)
skip(36); dw (talent10_9)
skip(36); dw (talent10_12)
skip(36); dw (talent10_13)
skip(36); dw (talent10_14)
skip(36); dw (talent10_15)
skip(36); dw (talent10_16)
skip(36); dw (talent10_17)
skip(36); dw (talent10_18)
skip(36); dw (talent10_19)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(40)
skip(36); dw (talent11_1)
skip(36); dw (talent11_2)
skip(36); dw (talent11_3)
skip(36); dw (talent11_4)
skip(36); dw (talent11_5)

seek(0x20F044)
skip(24); dw (talent6_1)
skip(36); dw (talent6_2)

seek(0x20F0A0)
skip(24); dw (talent6_3)
skip(36); dw (talent6_4)
skip(36); dw (talent6_5)
skip(36); dw (talent6_7)
skip(36); dw (talent6_8)
skip(36); dw (talent6_9)
skip(36); dw (talent6_10)
skip(36); dw (talent6_11)
skip(36); dw (talent6_6)

seek(0x20F508)
skip(24); dw (talent6_12)
skip(36); dw (talent6_13)

seek(0x20F57C)
skip(24); dw (talent6_14)
skip(36); dw (talent6_15)
skip(36); dw (talent6_16)
skip(36); dw (talent6_17)
skip(36); dw (talent6_18)
skip(36); dw (talent6_19)
skip(36); dw (talent6_20)
skip(36); dw (talent6_21)
skip(36); dw (talent6_22)
skip(36); dw (talent6_23)
skip(36); dw (talent6_24)

seek(0x20F770)
skip(24); dw (talent6_25)
skip(36); dw (talent6_26)
skip(36); dw (talent6_27)
skip(36); dw (talent6_28)
skip(36); dw (talent6_29)
skip(36); dw (talent6_30)
skip(36); dw (talent4_29)


//---Special Text (Disk 0x212BC0 / RAM 803C1390)
seek(0x212BC0)
//--Talent Type Screen
talent13_1:
db $CB
textEntryH0(" Body Type")		//RAM 803C1390 - ♂タイプのからだ
talent13_2:
db $CC
textEntryH0(" Body Type")		//RAM 803C13A4 - ♀タイプのからだ
talent13_3:
textEntryH0("? Body Type")		//RAM 803C13B8 - ?タイプのからだ
talent13_4:
textEntryH0("Remove")			//RAM 803C13CC - はずす
//--Common
talent14_1:
textEntryH0("Selected Color")		//RAM 803C13D4 - えらばれたいろ
talent14_2:
textEntryH0("Custom Color")		//RAM 803C13E4 - つくったいろ
talent14_3:
textEntryH0("Original Color")		//RAM 803C13F4 - はじめのいろ
talent14_4:
textEntryH0("Selected Pattern")		//RAM 803C1404 - えらばれたもよう
talent14_5:
textEntryH0("Custom Pattern")		//RAM 803C1418 - つくったもよう
talent14_6:
textEntryH0("Original Pattern")		//RAM 803C1428 - はじめのもよう
talent14_7:
textEntryH0("Music OFF")		//RAM 803C1438 - BGMをけす
talent14_8:
textEntryH0("Rotate (B Button)")	//RAM 803C1448 - かいてん(Bボタン)
talent14_9:
textEntryH0("Rotate / Zoom (B Button)")	//RAM 803C1460 - かいてん・ズーム(Bボタン)
//--Show Time
talent15_1:
textEntryH0("Karate")			//RAM 803C1480 - カラテ
talent15_2:
textEntryH0("Conductor")		//RAM 803C1488 - しきしゃ
talent15_3:
textEntryH0("Mosquito")			//RAM 803C1494 - か
talent15_4:
textEntryH0("Special Training")		//RAM 803C1498 - とっくん
talent15_5:
textEntryH0("Bodybuilder")		//RAM 803C14A4 - ボディービルダー
talent15_6:
textEntryH0("Train Ride")		//RAM 803C14B8 - でんしゃ
talent15_7:
textEntryH0("Balance Beam")		//RAM 803C14C4 - へいきんだい
talent15_8:
textEntryH0("Seduction")		//RAM 803C14D4 - セクシーポーズ
talent15_9:
textEntryH0("Limbo Dance")		//RAM 803C14E4 - リンボーダンス
talent15_10:
textEntryH0("Disco")			//RAM 803C14F4 - ディスコ
talent15_11:
textEntryH0("Top Model")		//RAM 803C1500 - スーパーモデル
talent15_12:
textEntryH0("Toilet")			//RAM 803C1510 - トイレ
talent15_13:
textEntryH0("Line Dance")		//RAM 803C1518 - ラインダンス
talent15_14:
textEntryH0("Happy Steps")		//RAM 803C1528 - うきうきステップ
talent15_15:
textEntryH0("Typhoon")			//RAM 803C153C - たいふう
talent15_16:
textEntryH0("Jump!")			//RAM 803C1548 - 「とびます!」
talent15_17:
textEntryH0("Clean Up")			//RAM 803C1558 - そうじ
talent15_18:
textEntryH0("Classic")			//RAM 803C1560 - こてん
talent15_19:
textEntryH0("Samurai")			//RAM 803C1568 - サムライ
talent15_20:
textEntryH0("Laughter")			//RAM 803C1574 - わらいすぎ
talent15_21:
textEntryH0("Pitcher")			//RAM 803C1580 - ピッチャー
talent15_22:
textEntryH0("Leakage")			//RAM 803C158C - あまもり
talent15_23:
textEntryH0("Training")			//RAM 803C1598 - トレーニング
talent15_24:
textEntryH0("Phone Call")		//RAM 803C15A8 - でんわ
talent15_25:
textEntryH0("Boxing")			//RAM 803C15B0 - ボクシング
talent15_26:
textEntryH0("Jack-in-the-box")		//RAM 803C15BC - びっくりばこ
talent15_27:
textEntryH0("Monster")			//RAM 803C15CC - かいじゅう
talent15_28:
textEntryH0("Flamenco")			//RAM 803C15D8 - フラメンコ
//--Select Pose Mode (Unused)
talent16_1:
textEntryH0("Basic Pose")		//RAM 803C15E4 - きほんポーズ
talent16_2:
textEntryH0("Edit 1")			//RAM 803C15F4 - エディット1
talent16_3:
textEntryH0("Edit 2")			//RAM 803C1604 - エディット2
talent16_4:
textEntryH0("Edit 3")			//RAM 803C1614 - エディット3
talent16_5:
textEntryH0("Edit 4")			//RAM 803C1624 - エディット4
//--Show Time Edit Mode (Unused)
talent16_6:
textEntryH0("Stop")			//RAM 803C1634 - ていし
talent16_7:
textEntryH0("Play")			//RAM 803C163C - さいせい
//--Head / Outline
talent17_1:
textEntryH0("Normal")			//RAM 803C1648 - ふつう
talent17_2:
textEntryH0("Slim")			//RAM 803C1650 - ほっそり
talent17_3:
textEntryH0("Smaller Jaw")		//RAM 803C165C - アゴちいさめ
talent17_4:
textEntryH0("Round")			//RAM 803C166C - まるがお
talent17_5:
textEntryH0("Heart-shaped")		//RAM 803C1678 - ハートがた
talent17_6:
textEntryH0("Smaller Square")		//RAM 803C1684 - ほっそりしかく
talent17_7:
textEntryH0("Ellipse")			//RAM 803C1694 - だえん
talent17_8:
textEntryH0("Egg-shaped")		//RAM 803C169C - たまごがた
talent17_9:
textEntryH0("Oblong")			//RAM 803C16A8 - ちょうほうけい
talent17_10:
textEntryH0("Pentagon")			//RAM 803C16B8 - ごかっけい
talent17_11:
textEntryH0("Base")			//RAM 803C16C4 - ベースがた
talent17_12:
textEntryH0("Square")			//RAM 803C16D0 - しかく
talent17_13:
textEntryH0("Big Jaw")			//RAM 803C16D8 - アゴでかい
talent17_14:
textEntryH0("Plump")			//RAM 803C16E4 - ふっくら
talent17_15:
textEntryH0("Diamond-shaped")		//RAM 803C16F0 - ひしがた
talent17_16:
textEntryH0("Cheekbone")		//RAM 803C16FC - ほおぼね
talent17_17:
textEntryH0("Bean")			//RAM 803C1708 - そらまめ
talent17_18:
textEntryH0("Pear")			//RAM 803C1714 - ようなし
talent17_19:
textEntryH0("Chubby")			//RAM 803C1720 - ぼってり
talent17_20:
textEntryH0("Squared Jaw")		//RAM 803C172C - えらはり
talent17_21:
textEntryH0("Homely")			//RAM 803C1738 - おたふく
//--Head / Hair
talent18_1:
textEntryH0("None")			//RAM 803C1744 - なし
talent18_2:
textEntryH0("Close-cropped")		//RAM 803C174C - ぼうず
talent18_3:
textEntryH0("Crew cut")			//RAM 803C1754 - スポーツがり
talent18_4:
textEntryH0("7:3")			//RAM 803C1764 - 7:3
talent18_5:
textEntryH0("Boy")			//RAM 803C176C - しょうねん
talent18_6:
textEntryH0("Short cut")		//RAM 803C1778 - ショートカット
talent18_7:
textEntryH0("Pudding bowl")		//RAM 803C1788 - ぼっちゃんがり
talent18_8:
textEntryH0("Normal")			//RAM 803C1798 - ノーマル
talent18_9:
textEntryH0("Side part")		//RAM 803C17A4 - よこわけ
talent18_10:
textEntryH0("Short hair")		//RAM 803C17B0 - ショートヘア
talent18_11:
textEntryH0("Rough short")		//RAM 803C17C0 - ラフショート
talent18_12:
textEntryH0("Girl")			//RAM 803C17D0 - しょうじょ
talent18_13:
textEntryH0("Bobby pin")		//RAM 803C17DC - ピンどめ
talent18_14:
textEntryH0("Semi-long")		//RAM 803C17E8 - セミロング
talent18_15:
textEntryH0("Bobbed")			//RAM 803C17F4 - オカッパ
talent18_16:
textEntryH0("Long")			//RAM 803C1800 - ロンゲ
talent18_17:
textEntryH0("Perm")			//RAM 803C1808 - パーマ
talent18_18:
textEntryH0("Semi-long side part")	//RAM 803C1810 - よこわけセミロング
talent18_19:
textEntryH0("Rough long")		//RAM 803C1824 - ラフロング
talent18_20:
textEntryH0("Long perm")		//RAM 803C1830 - ロングパーマ
talent18_21:
textEntryH0("Long hair")		//RAM 803C1840 - ロングヘア
talent18_22:
textEntryH0("Short pigtails")		//RAM 803C184C - おさげショート
talent18_23:
textEntryH0("Long pigtails")		//RAM 803C185C - おさげロング
talent18_24:
textEntryH0("Explosive pigtails")	//RAM 803C186C - ばくはつおさげ
talent18_25:
textEntryH0("Tied-up bun")		//RAM 803C187C - うしろでとめる
talent18_26:
textEntryH0("Ponytail")			//RAM 803C188C - ポニーテール
talent18_27:
textEntryH0("Bundle")			//RAM 803C189C - たばねる
talent18_28:
textEntryH0("Onion")			//RAM 803C18A8 - タマネギ
talent18_29:
textEntryH0("Tied-up")			//RAM 803C18B4 - うえでくくる
talent18_30:
textEntryH0("Chonmage")			//RAM 803C18C4 - ちょんまげ
talent18_31:
textEntryH0("Feudal Lord")		//RAM 803C18D0 - とのさま
talent18_32:
textEntryH0("All back")			//RAM 803C18DC - オールバック
talent18_33:
textEntryH0("Elder's bun")		//RAM 803C18EC - おばあさん
talent18_34:
textEntryH0("Traditional")		//RAM 803C18F8 - にほんがみ
talent18_35:
textEntryH0("Buddha")			//RAM 803C1904 - だいぶつ
talent18_36:
textEntryH0("Old man")			//RAM 803C1910 - おじいさん
talent18_37:
textEntryH0("Barcode")			//RAM 803C191C - バーコード
talent18_38:
textEntryH0("Doctor")			//RAM 803C1928 - はかせ
talent18_39:
textEntryH0("Short bob")		//RAM 803C1930 - ショートボブ
talent18_40:
textEntryH0("Bob cut")			//RAM 803C1940 - ボブカット
talent18_41:
textEntryH0("Stuck-up")			//RAM 803C194C - ツンツンヘア
talent18_42:
textEntryH0("Winged")			//RAM 803C195C - ハネ
talent18_43:
textEntryH0("Hero")			//RAM 803C1964 - ヒーロー
talent18_44:
textEntryH0("Commando")			//RAM 803C1970 - コマンドー
talent18_45:
textEntryH0("Mohawk")			//RAM 803C197C - モヒカン
talent18_46:
textEntryH0("Hair band")		//RAM 803C1988 - ヘアバンド
talent18_47:
textEntryH0("Regent")			//RAM 803C1994 - リーゼント
talent18_48:
textEntryH0("Afro")			//RAM 803C19A0 - アフロ
talent18_49:
textEntryH0("Jester")			//RAM 803C19A8 - ピエロ
//--Head / Hat
talent19_1:
textEntryH0("None")			//RAM 803C19B0 - なし
talent19_2:
textEntryH0("Baseball Cap")		//RAM 803C19B8 - やきゅうぼう
talent19_3:
textEntryH0("Newsboy Cap")		//RAM 803C19C8 - キャスケット
talent19_4:
textEntryH0("Tulip")			//RAM 803C19D8 - チューリップ
talent19_5:
textEntryH0("Beret")			//RAM 803C19E8 - ベレーぼう
talent19_6:
textEntryH0("Military Hat")		//RAM 803C19F4 - ミリタリーぼう
talent19_7:
textEntryH0("Knit Cap")			//RAM 803C1A04 - ニットキャップ
talent19_8:
textEntryH0("Straw Hat")		//RAM 803C1A14 - むぎわらぼう
talent19_9:
textEntryH0("Flower Hat")		//RAM 803C1A24 - はなかざりぼう
talent19_10:
textEntryH0("Cowboy")			//RAM 803C1A34 - カウボーイ
talent19_11:
textEntryH0("Tyrolean")			//RAM 803C1A40 - チロリアン
talent19_12:
textEntryH0("Sombrero")			//RAM 803C1A4C - ソンブレロ
talent19_13:
textEntryH0("Bandana")			//RAM 803C1A58 - バンダナ
talent19_14:
textEntryH0("Swim Cap")			//RAM 803C1A64 - スイムキャップ
talent19_15:
textEntryH0("Top Hat")			//RAM 803C1A74 - シルクハット
talent19_16:
textEntryH0("Academic Cap")		//RAM 803C1A84 - はかせぼう
talent19_17:
textEntryH0("GI Cap")			//RAM 803C1A90 - GIキャップ
talent19_18:
textEntryH0("Sailor Hat")		//RAM 803C1AA0 - セーラーぼう
talent19_19:
textEntryH0("Regulation Cap")		//RAM 803C1AB0 - せいぼう
talent19_20:
textEntryH0("Pith Helmet")		//RAM 803C1ABC - たんけんぼう
talent19_21:
textEntryH0("Helmet")			//RAM 803C1ACC - ヘルメット
talent19_22:
textEntryH0("China Hat")		//RAM 803C1AD8 - チャイナぼう
talent19_23:
textEntryH0("Party Hat")		//RAM 803C1AE8 - パーティぼう
talent19_24:
textEntryH0("Santa Hat")		//RAM 803C1AF8 - サンタクロース
talent19_25:
textEntryH0("Turban")			//RAM 803C1B08 - ターバン
talent19_26:
textEntryH0("Viking Hat")		//RAM 803C1B14 - バイキング
talent19_27:
textEntryH0("Pirate Hat")		//RAM 803C1B20 - かいぞくぼう
talent19_28:
textEntryH0("Mario's Cap")		//RAM 803C1B30 - マリオぼう
//--Head / Helmet
talent20_1:
textEntryH0("None")			//RAM 803C1B3C - なし
talent20_2:
textEntryH0("Rabbit")			//RAM 803C1B44 - うさぎ
talent20_3:
textEntryH0("Rooster")			//RAM 803C1B4C - とり
talent20_4:
textEntryH0("Mummy")			//RAM 803C1B54 - ミイラ
talent20_5:
textEntryH0("Golem")			//RAM 803C1B5C - ゴーレム
talent20_6:
textEntryH0("Skeleton")			//RAM 803C1B68 - がいこつ
talent20_7:
textEntryH0("Monster")			//RAM 803C1B74 - かいじゅう
talent20_8:
textEntryH0("Robot")			//RAM 803C1B80 - ロボット
talent20_9:
textEntryH0("Mecha Man")		//RAM 803C1B8C - メカマン
talent20_10:
textEntryH0("Mecha Lady")		//RAM 803C1B98 - メカレディ
talent20_11:
textEntryH0("Hero")			//RAM 803C1BA4 - ヒーロー
talent20_12:
textEntryH0("Ranger Man")		//RAM 803C1BB0 - おとこレンジャー
talent20_13:
textEntryH0("Ranger Lady")		//RAM 803C1BC4 - おんなレンジャー
talent20_14:
textEntryH0("Wood Man")			//RAM 803C1BD8 - ウッドマン
talent20_15:
textEntryH0("Disc Boy")			//RAM 803C1BE4 - ディスクボーイ
talent20_16:
textEntryH0("Fairy")			//RAM 803C1BF4 - ようせい
talent20_17:
textEntryH0("Beetle")			//RAM 803C1C00 - ムシおとこ
talent20_18:
textEntryH0("Ant")			//RAM 803C1C0C - ムシおんな
talent20_19:
textEntryH0("Space")			//RAM 803C1C18 - うちゅうふく
talent20_20:
textEntryH0("Kabuto")			//RAM 803C1C28 - かぶと
talent20_21:
textEntryH0("Knight")			//RAM 803C1C30 - ナイト
//--Head / Nose
talent21_1:
textEntryH0("Normal")			//RAM 803C1C38 - ふつうのはな
talent21_2:
textEntryH0("Tall")			//RAM 803C1C48 - たかいはな
talent21_3:
textEntryH0("Tiny")			//RAM 803C1C54 - ちいさいはな
talent21_4:
textEntryH0("Large")			//RAM 803C1C64 - おおきいはな
talent21_5:
textEntryH0("Hook")			//RAM 803C1C74 - ワシばな
talent21_6:
textEntryH0("Rising")			//RAM 803C1C80 - あがりばな
talent21_7:
textEntryH0("Pug")			//RAM 803C1C8C - ダンゴっぱな
talent21_8:
textEntryH0("Mario")			//RAM 803C1C9C - マリオのはな
talent21_9:
textEntryH0("Link")			//RAM 803C1CAC - リンクのはな
talent21_10:
textEntryH0("Witch")			//RAM 803C1CBC - まじょのはな
talent21_11:
textEntryH0("Long")			//RAM 803C1CCC - ぼうばな
talent21_12:
textEntryH0("Horn")			//RAM 803C1CD8 - ラッパばな
talent21_13:
textEntryH0("Gorilla")			//RAM 803C1CE4 - ゴリラばな
talent21_14:
textEntryH0("Pig's Snout")		//RAM 803C1CF0 - ブタばな
//--Head / Ears
talent22_1:
textEntryH0("Normal")			//RAM 803C1CFC - ふつうのみみ
talent22_2:
textEntryH0("Round")			//RAM 803C1D0C - ながまるみみ
talent22_3:
textEntryH0("Angular")			//RAM 803C1D1C - かくばったみみ
talent22_4:
textEntryH0("Plump")			//RAM 803C1D2C - ふくみみ
talent22_5:
textEntryH0("Pointy")			//RAM 803C1D38 - とんがりみみ
talent22_6:
textEntryH0("Lop-eared")		//RAM 803C1D48 - タレみみ
talent22_7:
textEntryH0("Alien")			//RAM 803C1D54 - うちゅうじんのみみ
talent22_8:
textEntryH0("Circled")			//RAM 803C1D68 - まるみみ
talent22_9:
textEntryH0("Mario")			//RAM 803C1D74 - マリオのみみ
talent22_10:
textEntryH0("Link")			//RAM 803C1D84 - リンクのみみ
talent22_11:
textEntryH0("Horn")			//RAM 803C1D94 - ラッパみみ
talent22_12:
textEntryH0("Robot")			//RAM 803C1DA0 - ロボットのみみ
talent22_13:
textEntryH0("Demon")			//RAM 803C1DB0 - あくまのみみ
talent22_14:
textEntryH0("Doughnut")			//RAM 803C1DC0 - ドーナツみみ
//--Head / Beard
talent23_1:
textEntryH0("None")			//RAM 803C1DD0 - なし
talent23_2:
textEntryH0("Small Mustache")		//RAM 803C1DD8 - チョビひげ
talent23_3:
textEntryH0("Elder Mustache")		//RAM 803C1DE4 - おじいさん
talent23_4:
textEntryH0("Bossy Mustache")		//RAM 803C1DF0 - えらそう
talent23_5:
textEntryH0("Pointy Mustache")		//RAM 803C1DFC - やり
talent23_6:
textEntryH0("Catfish Mustache")		//RAM 803C1E04 - なまず
talent23_7:
textEntryH0("Wizard")			//RAM 803C1E0C - せんにん
talent23_8:
textEntryH0("Jaw Beard")		//RAM 803C1E18 - あごからみみ
talent23_9:
textEntryH0("Beard")			//RAM 803C1E28 - くちひげ
talent23_10:
textEntryH0("Wario")			//RAM 803C1E34 - ワリオ
talent23_11:
textEntryH0("Sideburns")		//RAM 803C1E3C - ぎざぎざもみあげ
talent23_12:
textEntryH0("Prince")			//RAM 803C1E50 - しょうとくたいし
talent23_13:
textEntryH0("Trident")			//RAM 803C1E64 - みつまた
talent23_14:
textEntryH0("Tulip")			//RAM 803C1E70 - チューリップ
//--Head / Glasses
talent24_1:
textEntryH0("None")			//RAM 803C1E80 - なし
talent24_2:
textEntryH0("Round")			//RAM 803C1E88 - まるいろめがね
talent24_3:
textEntryH0("Round Rim")		//RAM 803C1E98 - まるぶちめがね
talent24_4:
textEntryH0("Rectangle")		//RAM 803C1EA8 - かくいろめがね
talent24_5:
textEntryH0("Square Rim")		//RAM 803C1EB8 - かくぶちめがね
talent24_6:
textEntryH0("Black Rim")		//RAM 803C1EC8 - くろぶちめがね
talent24_7:
textEntryH0("Turtle")			//RAM 803C1ED8 - べっこうめがね
talent24_8:
textEntryH0("Cat eye")			//RAM 803C1EE8 - ザーマスめがね
talent24_9:
textEntryH0("Double")			//RAM 803C1EF8 - ダブルめがね
talent24_10:
textEntryH0("Sunglasses")		//RAM 803C1F08 - ふつうのグラサン
talent24_11:
textEntryH0("Pointy Sunglasses")	//RAM 803C1F1C - とんがりグラサン
talent24_12:
textEntryH0("Film Glass")		//RAM 803C1F30 - フィルムグラサン
talent24_13:
textEntryH0("Party Mask")		//RAM 803C1F44 - パーティマスク
talent24_14:
textEntryH0("Eye Mask")			//RAM 803C1F54 - アイマスク
talent24_15:
textEntryH0("Flower")			//RAM 803C1F60 - フラワーめがね
talent24_16:
textEntryH0("Clumsy")			//RAM 803C1F70 - ぐるぐるめがね
talent24_17:
textEntryH0("Heart")			//RAM 803C1F80 - ハートめがね
talent24_18:
textEntryH0("Eye Candy")		//RAM 803C1F90 - チョコいりめがね
talent24_19:
textEntryH0("3D Glasses")		//RAM 803C1FA4 - 3Dめがね
talent24_20:
textEntryH0("Monocle")			//RAM 803C1FB0 - かためがね
talent24_21:
textEntryH0("Broken")			//RAM 803C1FBC - こわれためがね
talent24_22:
textEntryH0("Eyepatch")			//RAM 803C1FCC - ふつうのがんたい
talent24_23:
textEntryH0("Pirate Eyepatch")		//RAM 803C1FE0 - かいぞくがんたい
talent24_24:
textEntryH0("Swim Goggles")		//RAM 803C1FF4 - スイムゴーグル
talent24_25:
textEntryH0("Bike Goggles")		//RAM 803C2004 - バイクゴーグル
talent24_26:
textEntryH0("Ski Goggles")		//RAM 803C2014 - スキーゴーグル
talent24_27:
textEntryH0("Scuba Mask")		//RAM 803C2024 - ダイバーゴーグル
talent24_28:
textEntryH0("Sniper Goggles")		//RAM 803C2038 - スナイパーゴーグル
//--Head / Earrings
talent25_1:
textEntryH0("None")			//RAM 803C204C - なし
talent25_2:
textEntryH0("Moon")			//RAM 803C2054 - みかづきイヤリング
talent25_3:
textEntryH0("Heart")			//RAM 803C2068 - ハートイヤリング
talent25_4:
textEntryH0("Star")			//RAM 803C207C - ほしイヤリング
talent25_5:
textEntryH0("Sapphire")			//RAM 803C208C - サファイアイヤリング
talent25_6:
textEntryH0("Emerald")			//RAM 803C20A4 - エメラルドイヤリング
talent25_7:
textEntryH0("Mixed")			//RAM 803C20BC - ミックスイヤリング
talent25_8:
textEntryH0("Flowers")			//RAM 803C20D0 - ペアはなかざり
talent25_9:
textEntryH0("Ribbons")			//RAM 803C20E0 - ペアリボン
talent25_10:
textEntryH0("Dango")			//RAM 803C20EC - おだんご
talent25_11:
textEntryH0("Wings")			//RAM 803C20F8 - ウイング
talent25_12:
textEntryH0("Bat Wings")		//RAM 803C2104 - コウモリ
talent25_13:
textEntryH0("Antennae")			//RAM 803C2110 - しょっかく
talent25_14:
textEntryH0("Fins")			//RAM 803C211C - はんぎょじん
talent25_15:
textEntryH0("Cat Ears")			//RAM 803C212C - ネコのみみ
talent25_16:
textEntryH0("Bear Ears")		//RAM 803C2138 - クマのみみ
talent25_17:
textEntryH0("Ram Horns")		//RAM 803C2144 - うしのツノ
talent25_18:
textEntryH0("Deer Horns")		//RAM 803C2150 - しかのツノ
talent25_19:
textEntryH0("Demon Horns")		//RAM 803C215C - おにのツノ
talent25_20:
textEntryH0("Alien Horns")		//RAM 803C2168 - うちゅうじんのツノ
talent25_21:
textEntryH0("Mecha Horns")		//RAM 803C217C - メカのツノ
//--Head / Accessories
talent26_1:
textEntryH0("None")			//RAM 803C2188 - なし
talent26_2:
textEntryH0("Mole")			//RAM 803C2190 - ほくろ
talent26_3:
textEntryH0("Beak")			//RAM 803C2198 - くちばし
talent26_4:
textEntryH0("Dog")			//RAM 803C21A4 - イヌ
talent26_5:
textEntryH0("Clothespin")		//RAM 803C21AC - せんたくばさみ
talent26_6:
textEntryH0("Ribbon")			//RAM 803C21BC - リボン
talent26_7:
textEntryH0("Flower")			//RAM 803C21C4 - フラワー
talent26_8:
textEntryH0("Tiara")			//RAM 803C21D0 - ティアラ
talent26_9:
textEntryH0("Crown")			//RAM 803C21DC - おうかん
talent26_10:
textEntryH0("Headphones")		//RAM 803C21E8 - ヘッドホン
talent26_11:
textEntryH0("Shampoo Hat")		//RAM 803C21F4 - シャンプーハット
talent26_12:
textEntryH0("Angel Ring")		//RAM 803C2208 - てんしのわ
talent26_13:
textEntryH0("Hero's Head")		//RAM 803C2214 - ヒーローのあたま
talent26_14:
textEntryH0("Antenna")			//RAM 803C2228 - アンテナ
talent26_15:
textEntryH0("Dragonfly")		//RAM 803C2234 - トンボ
talent26_16:
textEntryH0("Stag beetle")		//RAM 803C223C - クワガタ
talent26_17:
textEntryH0("Butterfly")		//RAM 803C2248 - チョウ
talent26_18:
textEntryH0("Squirrel")			//RAM 803C2250 - リス
talent26_19:
textEntryH0("Pacifier")			//RAM 803C2258 - バブー
talent26_20:
textEntryH0("Mask")			//RAM 803C2260 - マスク
talent26_21:
textEntryH0("Protection Mask")		//RAM 803C2268 - ほごマスク
//--Body / Male / Undershirt
talent27_1:
textEntryH0("None")			//RAM 803C2274 - なし
talent27_2:
textEntryH0("Briefs")			//RAM 803C227C - ブーメラン
talent27_3:
textEntryH0("Running Vest")		//RAM 803C2288 - ランニングシャツ
talent27_4:
textEntryH0("Sleeveless Shirt")		//RAM 803C229C - ノースリーブシャツ
talent27_5:
textEntryH0("Small T-shirt")		//RAM 803C22B0 - ちびTシャツ
talent27_6:
textEntryH0("Shirt")			//RAM 803C22C0 - おやじシャツ
talent27_7:
textEntryH0("Long Sleeves")		//RAM 803C22D0 - ながそでシャツ
//--Body / Male / Underpants
talent28_1:
textEntryH0("None")			//RAM 803C22E0 - なし
talent28_2:
textEntryH0("Boxer")			//RAM 803C22E8 - パンツ
talent28_3:
textEntryH0("Fitness Pants")		//RAM 803C22F0 - フィットネスパンツ
talent28_4:
textEntryH0("Wrestler Tights")		//RAM 803C2304 - レスラータイツ
talent28_5:
textEntryH0("Festival")			//RAM 803C2314 - おまつり
talent28_6:
textEntryH0("Tracksuit")		//RAM 803C2320 - たいそうぎ
talent28_7:
textEntryH0("Bodysuit")			//RAM 803C232C - ぜんしんタイツ
//--Body / Male / Socks
talent29_1:
textEntryH0("None")			//RAM 803C233C - なし
talent29_2:
textEntryH0("Tabi")			//RAM 803C2344 - たび
talent29_3:
textEntryH0("Regular")			//RAM 803C234C - ふつうのくつした
talent29_4:
textEntryH0("Long")			//RAM 803C2360 - ながいくつした
talent29_5:
textEntryH0("Sports")			//RAM 803C2370 - スポーツソックス
talent29_6:
textEntryH0("Baseball")			//RAM 803C2384 - やきゅうソックス
talent29_7:
textEntryH0("Taping")			//RAM 803C2398 - テーピング
//--Body / Male / Pants
talent30_1:
textEntryH0("None")			//RAM 803C23A4 - なし
talent30_2:
textEntryH0("Shorts")			//RAM 803C23AC - はんズボン
talent30_3:
textEntryH0("Running Shorts")		//RAM 803C23B8 - ランニングパンツ
talent30_4:
textEntryH0("Boxing Shorts")		//RAM 803C23CC - ボクシングパンツ
talent30_5:
textEntryH0("Safari Pants")		//RAM 803C23E0 - サファリパンツ
talent30_6:
textEntryH0("Jeans")			//RAM 803C23F0 - ジーンズ
talent30_7:
textEntryH0("Chino Pants")		//RAM 803C23FC - チノパン
talent30_8:
textEntryH0("Pantalon")			//RAM 803C2408 - パンタロン
talent30_9:
textEntryH0("Slacks")			//RAM 803C2414 - スラックス
talent30_10:
textEntryH0("Loose Pants")		//RAM 803C2420 - ルーズパンツ
talent30_11:
textEntryH0("Belly Band")		//RAM 803C2430 - はらまき
talent30_12:
textEntryH0("Overalls")			//RAM 803C243C - オーバーオール
talent30_13:
textEntryH0("Hakama")			//RAM 803C244C - ハカマ
talent30_14:
textEntryH0("Jersey")			//RAM 803C2454 - ジャージ
talent30_15:
textEntryH0("Pants")			//RAM 803C2460 - かわパンツ
talent30_16:
textEntryH0("Aladdin")			//RAM 803C246C - アラジン
talent30_17:
textEntryH0("Prince")			//RAM 803C2478 - おうじさまズボン
talent30_18:
textEntryH0("Uniform")			//RAM 803C248C - ユニホームした
talent30_19:
textEntryH0("Karate")			//RAM 803C249C - からてぎした
talent30_20:
textEntryH0("Ragged")			//RAM 803C24AC - ぼろぼろズボン
talent30_21:
textEntryH0("Protector")		//RAM 803C24BC - プロテクターした
//--Body / Male / Shirts
talent31_1:
textEntryH0("None")			//RAM 803C24D0 - なし
talent31_2:
textEntryH0("T-shirt")			//RAM 803C24D8 - Tシャツ
talent31_3:
textEntryH0("Polo Shirt")		//RAM 803C24E4 - ポロシャツ
talent31_4:
textEntryH0("Sweatshirt")		//RAM 803C24F0 - トレーナー
talent31_5:
textEntryH0("Shirt")			//RAM 803C24FC - シャツ
talent31_6:
textEntryH0("Vest")			//RAM 803C2504 - ベスト
talent31_7:
textEntryH0("Jacket")			//RAM 803C250C - ジャケット
talent31_8:
textEntryH0("Flashy Jacket")		//RAM 803C2518 - はでなジャケット
talent31_9:
textEntryH0("Business Suit")		//RAM 803C252C - せびろ
talent31_10:
textEntryH0("Leather Jacket")		//RAM 803C2534 - かわジャン
talent31_11:
textEntryH0("Down Jacket")		//RAM 803C2540 - ダウンジャケット
talent31_12:
textEntryH0("Sweater")			//RAM 803C2554 - セーター
talent31_13:
textEntryH0("Dress Shirt")		//RAM 803C2560 - Yシャツ
talent31_14:
textEntryH0("School Uniform")		//RAM 803C256C - がくせいふく
talent31_15:
textEntryH0("Robe")			//RAM 803C257C - ローブ
talent31_16:
textEntryH0("Latin Shirt")		//RAM 803C2584 - ラテンシャツ
talent31_17:
textEntryH0("Prince")			//RAM 803C2594 - おうじさまシャツ
talent31_18:
textEntryH0("Uniform")			//RAM 803C25A8 - ユニホームうえ
talent31_19:
textEntryH0("Karate")			//RAM 803C25B8 - からてぎうえ
talent31_20:
textEntryH0("Ragged")			//RAM 803C25C8 - ぼろぼろシャツ
talent31_21:
textEntryH0("Protector")		//RAM 803C25D8 - プロテクターうえ
//--Body / Option
talent32_1:
textEntryH0("None")			//RAM 803C25EC - なし
talent32_2:
textEntryH0("Angel's Wings")		//RAM 803C25F4 - てんしのハネ
talent32_3:
textEntryH0("Devil's Wings")		//RAM 803C2604 - あくまのハネ
talent32_4:
textEntryH0("Bee Wings")		//RAM 803C2614 - ハチのハネ
talent32_5:
textEntryH0("Butterfly Wings")		//RAM 803C2620 - チョウのハネ
talent32_6:
textEntryH0("Robot Wings")		//RAM 803C2630 - ロボットのハネ
talent32_7:
textEntryH0("DIY Wings")		//RAM 803C2640 - てづくりのハネ
talent32_8:
textEntryH0("Plush Doll")		//RAM 803C2650 - ぬいぐるみ
talent32_9:
textEntryH0("School Bag")		//RAM 803C265C - ランドセル
talent32_10:
textEntryH0("Bamboo Basket")		//RAM 803C2668 - たけかご
talent32_11:
textEntryH0("Gas Cylinder")		//RAM 803C2674 - ボンベ
talent32_12:
textEntryH0("Sword & Shield")		//RAM 803C267C - けんとたて
talent32_13:
textEntryH0("Turtle Shell")		//RAM 803C2688 - カメのこうら
talent32_14:
textEntryH0("Thunder God")		//RAM 803C2698 - カミナリさま
//--Body / Male / Shoes
talent33_1:
textEntryH0("None")			//RAM 803C26A8 - なし
talent33_2:
textEntryH0("Sneakers")			//RAM 803C26B0 - スニーカー
talent33_3:
textEntryH0("Sports Shoes")		//RAM 803C26BC - スポーツシューズ
talent33_4:
textEntryH0("Dress Shoes")		//RAM 803C26D0 - かわぐつ
talent33_5:
textEntryH0("Loafers")			//RAM 803C26DC - ローファー
talent33_6:
textEntryH0("Short Boots")		//RAM 803C26E8 - ショートブーツ
talent33_7:
textEntryH0("Laced Boots")		//RAM 803C26F8 - ひもつきブーツ
talent33_8:
textEntryH0("Long Boots")		//RAM 803C2708 - ロングブーツ
talent33_9:
textEntryH0("Mario's Shoes")		//RAM 803C2718 - マリオのくつ
talent33_10:
textEntryH0("Link's Shoes")		//RAM 803C2728 - リンクのくつ
talent33_11:
textEntryH0("Climbing Boots")		//RAM 803C2738 - とざんぐつ
talent33_12:
textEntryH0("Geta")			//RAM 803C2744 - げた
talent33_13:
textEntryH0("Tabi Shoes")		//RAM 803C274C - じかたび
talent33_14:
textEntryH0("Flip-flops")		//RAM 803C2758 - ビーチサンダル
talent33_15:
textEntryH0("Enamel Shoes")		//RAM 803C2768 - エナメルぐつ
talent33_16:
textEntryH0("Rubber Boots")		//RAM 803C2778 - ゴムながぐつ
talent33_17:
textEntryH0("Roller Skates")		//RAM 803C2788 - インラインスケート
talent33_18:
textEntryH0("Kung-Fu Shoes")		//RAM 803C279C - カンフーシューズ
talent33_19:
textEntryH0("Flippers")			//RAM 803C27B0 - あしひれ
talent33_20:
textEntryH0("Pointy Shoes")		//RAM 803C27BC - とんがりぐつ
talent33_21:
textEntryH0("Animal Slippers")		//RAM 803C27CC - どうぶつスリッパ
//--Body / Male / Gloves
talent34_1:
textEntryH0("None")			//RAM 803C27E0 - なし
talent34_2:
textEntryH0("Mario's Gloves")		//RAM 803C27E8 - マリオのてぶくろ
talent34_3:
textEntryH0("Cotton Gloves")		//RAM 803C27FC - ぐんて
talent34_4:
textEntryH0("Boxing Gloves")		//RAM 803C2804 - ボクシンググローブ
talent34_5:
textEntryH0("Sports Gloves")		//RAM 803C2818 - スポーツグラブ
talent34_6:
textEntryH0("Half Mitt")		//RAM 803C2828 - ハーフミット
talent34_7:
textEntryH0("Bandage")			//RAM 803C2838 - バンテージ
talent34_8:
textEntryH0("Gauntlet")			//RAM 803C2844 - ガントレット
talent34_9:
textEntryH0("Leather Gloves")		//RAM 803C2854 - かわてぶくろ
talent34_10:
textEntryH0("Mitten Gloves")		//RAM 803C2864 - ミトンてぶくろ
talent34_11:
textEntryH0("Wristband")		//RAM 803C2874 - リストバンド
talent34_12:
textEntryH0("Bracelet")			//RAM 803C2884 - うでわ
talent34_13:
textEntryH0("Crab Gloves")		//RAM 803C288C - カニてぶくろ
talent34_14:
textEntryH0("Animal Gloves")		//RAM 803C289C - どうぶつてぶくろ
//--Body / Female / Undershirt
talent35_1:
textEntryH0("None")			//RAM 803C28B0 - なし
talent35_2:
textEntryH0("Bikini Type")		//RAM 803C28B8 - ビキニタイプ
talent35_3:
textEntryH0("Sports Type")		//RAM 803C28C8 - スポーツタイプ
talent35_4:
textEntryH0("Navel Shirt")		//RAM 803C28D8 - へそだしシャツ
talent35_5:
textEntryH0("High Neck Shirt")		//RAM 803C28E8 - ハイネックシャツ
talent35_6:
textEntryH0("Small T-shirt")		//RAM 803C28FC - ちびTシャツ
talent35_7:
textEntryH0("Long Sleeves")		//RAM 803C290C - ながそでシャツ
//--Body / Female / Underpants
talent36_1:
textEntryH0("None")			//RAM 803C291C - なし
talent36_2:
textEntryH0("Fitness Sports")		//RAM 803C2924 - フィットネスパンツ
talent36_3:
textEntryH0("Tights")			//RAM 803C2938 - タイツ
talent36_4:
textEntryH0("One-piece Type")		//RAM 803C2940 - ワンピースタイプ
talent36_5:
textEntryH0("Leotard")			//RAM 803C2954 - レオタード
talent36_6:
textEntryH0("Campaign Girl")		//RAM 803C2960 - キャンギャル
talent36_7:
textEntryH0("Bodysuit")			//RAM 803C2970 - ぜんしんタイツ
//--Body / Female / Socks
talent37_1:
textEntryH0("None")			//RAM 803C2980 - なし
talent37_2:
textEntryH0("Tabi")			//RAM 803C2988 - たび
talent37_3:
textEntryH0("Folded")			//RAM 803C2990 - おりかえしくつした
talent37_4:
textEntryH0("Regular")			//RAM 803C29A4 - ふつうのくつした
talent37_5:
textEntryH0("Long")			//RAM 803C29B8 - ながいくつした
talent37_6:
textEntryH0("Loose")			//RAM 803C29C8 - ルーズソックス
talent37_7:
textEntryH0("Knee Socks")		//RAM 803C29D8 - ひざうえソックス
//--Body / Female / Pants
talent38_1:
textEntryH0("None")			//RAM 803C29EC - なし
talent38_2:
textEntryH0("Hotpants")			//RAM 803C29F4 - ホットパンツ
talent38_3:
textEntryH0("Pumpkin Pants")		//RAM 803C2A04 - カボチャパンツ
talent38_4:
textEntryH0("Culottes")			//RAM 803C2A14 - キュロットスカート
talent38_5:
textEntryH0("Knee Pants")		//RAM 803C2A28 - ひざしたパンツ
talent38_6:
textEntryH0("Jeans")			//RAM 803C2A38 - ジーンズ
talent38_7:
textEntryH0("Slim Pants")		//RAM 803C2A44 - スリムパンツ
talent38_8:
textEntryH0("Pantalon")			//RAM 803C2A54 - パンタロン
talent38_9:
textEntryH0("Slacks")			//RAM 803C2A60 - スラックス
talent38_10:
textEntryH0("Loose Pants")		//RAM 803C2A6C - ルーズパンツ
talent38_11:
textEntryH0("Balloon Pants")		//RAM 803C2A7C - バルーンパンツ
talent38_12:
textEntryH0("Nylon Jersey")		//RAM 803C2A8C - ナイロンジャージ
talent38_13:
textEntryH0("Hakama")			//RAM 803C2AA0 - ハカマ
talent38_14:
textEntryH0("Jumpsuit")			//RAM 803C2AA8 - つなぎ
talent38_15:
textEntryH0("Mini Skirt")		//RAM 803C2AB0 - ミニスカート
talent38_16:
textEntryH0("Plaid Mini Skirt")		//RAM 803C2AC0 - プリーツミニ
talent38_17:
textEntryH0("Children's Skirt")		//RAM 803C2AD0 - こどもようスカート
talent38_18:
textEntryH0("Semi-tight Skirt")		//RAM 803C2AE4 - セミタイトスカート
talent38_19:
textEntryH0("Plaid Skirt")		//RAM 803C2AF8 - プリーツスカート
talent38_20:
textEntryH0("Idol Skirt")		//RAM 803C2B0C - アイドルスカート
talent38_21:
textEntryH0("Protection Pants")		//RAM 803C2B20 - プロテクトスーツした
//--Body / Female / Shirt
talent39_1:
textEntryH0("None")			//RAM 803C2B38 - なし
talent39_2:
textEntryH0("T-shirt")			//RAM 803C2B40 - Tシャツ
talent39_3:
textEntryH0("Short-sleeved Blouse")	//RAM 803C2B4C - はんそでブラウス
talent39_4:
textEntryH0("Blouse")			//RAM 803C2B60 - ブラウス
talent39_5:
textEntryH0("Sailor Type")		//RAM 803C2B6C - セーラータイプ
talent39_6:
textEntryH0("Dress Shirt")		//RAM 803C2B7C - Yシャツ
talent39_7:
textEntryH0("Rough Jacket")		//RAM 803C2B88 - ラフジャケット
talent39_8:
textEntryH0("Jacket")			//RAM 803C2B98 - ジャケット
talent39_9:
textEntryH0("Suit Jacket")		//RAM 803C2BA4 - スーツジャケット
talent39_10:
textEntryH0("Fur Coat")			//RAM 803C2BB8 - けがわコート
talent39_11:
textEntryH0("Down Jacket")		//RAM 803C2BC8 - ダウンジャケット
talent39_12:
textEntryH0("Sweater")			//RAM 803C2BDC - セーター
talent39_13:
textEntryH0("Knit Shirt")		//RAM 803C2BE8 - ニットシャツ
talent39_14:
textEntryH0("Vest")			//RAM 803C2BF8 - ベスト
talent39_15:
textEntryH0("Kimono")			//RAM 803C2C00 - きものふく
talent39_16:
textEntryH0("One-piece")		//RAM 803C2C0C - ワンピース
talent39_17:
textEntryH0("Seductive Dress")		//RAM 803C2C18 - セクシードレス
talent39_18:
textEntryH0("Formal Dress")		//RAM 803C2C28 - フォーマルドレス
talent39_19:
textEntryH0("Santa Coat")		//RAM 803C2C3C - サンタコート
talent39_20:
textEntryH0("Sheer Jacket")		//RAM 803C2C4C - スケスケジャケット
talent39_21:
textEntryH0("Protection Shirt")		//RAM 803C2C60 - プロテクトスーツうえ
//--Body / Female / Shoes
talent40_1:
textEntryH0("None")			//RAM 803C2C78 - なし
talent40_2:
textEntryH0("Sneakers")			//RAM 803C2C80 - スニーカー
talent40_3:
textEntryH0("Sports Shoes")		//RAM 803C2C8C - スポーツシューズ
talent40_4:
textEntryH0("Dress Shoes")		//RAM 803C2CA0 - かわぐつ
talent40_5:
textEntryH0("Loafers")			//RAM 803C2CAC - ローファー
talent40_6:
textEntryH0("Pumps")			//RAM 803C2CB8 - パンプス
talent40_7:
textEntryH0("High Heels")		//RAM 803C2CC4 - ハイヒール
talent40_8:
textEntryH0("Strappy Sandals")		//RAM 803C2CD0 - ひもサンダル
talent40_9:
textEntryH0("Short Boots")		//RAM 803C2CE0 - ショートブーツ
talent40_10:
textEntryH0("Half Boots")		//RAM 803C2CF0 - ハーフブーツ
talent40_11:
textEntryH0("Long Boots")		//RAM 803C2D00 - ロングブーツ
talent40_12:
textEntryH0("Laced Boots")		//RAM 803C2D10 - ひもつきブーツ
talent40_13:
textEntryH0("Flip-flops")		//RAM 803C2D20 - ビーチサンダル
talent40_14:
textEntryH0("Zori")			//RAM 803C2D30 - ぞうり
talent40_15:
textEntryH0("Sandals")			//RAM 803C2D38 - サンダル
talent40_16:
textEntryH0("Rubber Boots")		//RAM 803C2D44 - ゴムながぐつ
talent40_17:
textEntryH0("Roller Skates")		//RAM 803C2D54 - インラインスケート
talent40_18:
textEntryH0("Kung-Fu Shoes")		//RAM 803C2D68 - カンフーシューズ
talent40_19:
textEntryH0("Flippers")			//RAM 803C2D7C - あしひれ
talent40_20:
textEntryH0("Pointy Shoes")		//RAM 803C2D88 - とんがりぐつ
talent40_21:
textEntryH0("Animal Slippers")		//RAM 803C2D98 - どうぶつスリッパ
//--Body / Female / Gloves
talent41_1:
textEntryH0("None")			//RAM 803C2DAC - なし
talent41_2:
textEntryH0("Leather Gloves")		//RAM 803C2DB4 - かわてぶくろ
talent41_3:
textEntryH0("Mitten Gloves")		//RAM 803C2DC4 - ミトンてぶくろ
talent41_4:
textEntryH0("Shorty Gloves")		//RAM 803C2DD4 - ショーティ
talent41_5:
textEntryH0("Long Gloves")		//RAM 803C2DE0 - アームロング
talent41_6:
textEntryH0("Long Lace Gloves")		//RAM 803C2DF0 - レースのアームロング
talent41_7:
textEntryH0("Lace Gloves")		//RAM 803C2E08 - レースのてぶくろ
talent41_8:
textEntryH0("Half Mitt")		//RAM 803C2E1C - ハーフミット
talent41_9:
textEntryH0("Gauntlet")			//RAM 803C2E2C - ガントレット
talent41_10:
textEntryH0("Wristband")		//RAM 803C2E3C - リストバンド
talent41_11:
textEntryH0("Bracelet")			//RAM 803C2E4C - ブレスレット
talent41_12:
textEntryH0("Bangles")			//RAM 803C2E5C - うでわ
talent41_13:
textEntryH0("Crab Gloves")		//RAM 803C2E64 - カニてぶくろ
talent41_14:
textEntryH0("Animal Gloves")		//RAM 803C2E74 - どうぶつてぶくろ
//--Body / Other / Various
talent42_1:
textEntryH0("None")			//RAM 803C2E88 - なし
talent42_2:
textEntryH0("Rabbit")			//RAM 803C2E90 - うさぎ
talent42_3:
textEntryH0("Rooster")			//RAM 803C2E98 - とり
talent42_4:
textEntryH0("Mummy")			//RAM 803C2EA0 - ミイラ
talent42_5:
textEntryH0("Golem")			//RAM 803C2EA8 - ゴーレム
talent42_6:
textEntryH0("Skeleton")			//RAM 803C2EB4 - がいこつ
talent42_7:
textEntryH0("Monster")			//RAM 803C2EC0 - かいじゅう
talent42_8:
textEntryH0("Robot")			//RAM 803C2ECC - ロボット
talent42_9:
textEntryH0("Mecha Man")		//RAM 803C2ED8 - メカマン
talent42_10:
textEntryH0("Mecha Lady")		//RAM 803C2EE4 - メカレディ
talent42_11:
textEntryH0("Hero")			//RAM 803C2EF0 - ヒーロー
talent42_12:
textEntryH0("Ranger Man")		//RAM 803C2EFC - おとこレンジャー
talent42_13:
textEntryH0("Ranger Lady")		//RAM 803C2F10 - おんなレンジャー
talent42_14:
textEntryH0("Wood Man")			//RAM 803C2F24 - ウッドマン
talent42_15:
textEntryH0("Disc Boy")			//RAM 803C2F30 - ディスクボーイ
talent42_16:
textEntryH0("Fairy")			//RAM 803C2F40 - ようせい
talent42_17:
textEntryH0("Beetle")			//RAM 803C2F4C - ムシおとこ
talent42_18:
textEntryH0("Ant")			//RAM 803C2F58 - ムシおんな
talent42_19:
textEntryH0("Spacesuit")		//RAM 803C2F64 - うちゅうふく
talent42_20:
textEntryH0("Armor")			//RAM 803C2F74 - よろい
talent42_21:
textEntryH0("Knight")			//RAM 803C2F7C - ナイト

seek(0x2147B4)
dw (talent17_1),(talent17_2),(talent17_3),(talent17_4),(talent17_5),(talent17_6),(talent17_7),(talent17_8),(talent17_9),(talent17_10),(talent17_11),(talent17_12),(talent17_13),(talent17_14),(talent17_15),(talent17_16),(talent17_17),(talent17_18),(talent17_19),(talent17_20),(talent17_21)
dw (talent18_1),(talent18_2),(talent18_3),(talent18_4),(talent18_5),(talent18_6),(talent18_7),(talent18_8),(talent18_9),(talent18_10),(talent18_11),(talent18_12),(talent18_13),(talent18_14),(talent18_15),(talent18_16),(talent18_17),(talent18_18),(talent18_19),(talent18_20),(talent18_21),(talent18_22),(talent18_23),(talent18_24),(talent18_25),(talent18_26),(talent18_27),(talent18_28),(talent18_29),(talent18_30),(talent18_31),(talent18_32),(talent18_33),(talent18_34),(talent18_35),(talent18_36),(talent18_37),(talent18_38),(talent18_39),(talent18_40),(talent18_41),(talent18_42),(talent18_43),(talent18_44),(talent18_45),(talent18_46),(talent18_47),(talent18_48),(talent18_49)
dw (talent19_1),(talent19_2),(talent19_3),(talent19_4),(talent19_5),(talent19_6),(talent19_7),(talent19_8),(talent19_9),(talent19_10),(talent19_11),(talent19_12),(talent19_13),(talent19_14),(talent19_15),(talent19_16),(talent19_17),(talent19_18),(talent19_19),(talent19_20),(talent19_21),(talent19_22),(talent19_23),(talent19_24),(talent19_25),(talent19_26),(talent19_27),(talent19_28)
dw (talent20_1),(talent20_2),(talent20_3),(talent20_4),(talent20_5),(talent20_6),(talent20_7),(talent20_8),(talent20_9),(talent20_10),(talent20_11),(talent20_12),(talent20_13),(talent20_14),(talent20_15),(talent20_16),(talent20_17),(talent20_18),(talent20_19),(talent20_20),(talent20_21)
dw (talent21_1),(talent21_2),(talent21_3),(talent21_4),(talent21_5),(talent21_6),(talent21_7),(talent21_8),(talent21_9),(talent21_10),(talent21_11),(talent21_12),(talent21_13),(talent21_14)
dw (talent22_1),(talent22_2),(talent22_3),(talent22_4),(talent22_5),(talent22_6),(talent22_7),(talent22_8),(talent22_9),(talent22_10),(talent22_11),(talent22_12),(talent22_13),(talent22_14)
dw (talent23_1),(talent23_2),(talent23_3),(talent23_4),(talent23_5),(talent23_6),(talent23_7),(talent23_8),(talent23_9),(talent23_10),(talent23_11),(talent23_12),(talent23_13),(talent23_14)
dw (talent24_1),(talent24_2),(talent24_3),(talent24_4),(talent24_5),(talent24_6),(talent24_7),(talent24_8),(talent24_9),(talent24_10),(talent24_11),(talent24_12),(talent24_13),(talent24_14),(talent24_15),(talent24_16),(talent24_17),(talent24_18),(talent24_19),(talent24_20),(talent24_21),(talent24_22),(talent24_23),(talent24_24),(talent24_25),(talent24_26),(talent24_27),(talent24_28)
dw (talent25_1),(talent25_2),(talent25_3),(talent25_4),(talent25_5),(talent25_6),(talent25_7),(talent25_8),(talent25_9),(talent25_10),(talent25_11),(talent25_12),(talent25_13),(talent25_14),(talent25_15),(talent25_16),(talent25_17),(talent25_18),(talent25_19),(talent25_20),(talent25_21)
dw (talent26_1),(talent26_2),(talent26_3),(talent26_4),(talent26_5),(talent26_6),(talent26_7),(talent26_8),(talent26_9),(talent26_10),(talent26_11),(talent26_12),(talent26_13),(talent26_14),(talent26_15),(talent26_16),(talent26_17),(talent26_18),(talent26_19),(talent26_20),(talent26_21)
dw (talent27_1),(talent27_2),(talent27_3),(talent27_4),(talent27_5),(talent27_6),(talent27_7)
dw (talent28_1),(talent28_2),(talent28_3),(talent28_4),(talent28_5),(talent28_6),(talent28_7)
dw (talent29_1),(talent29_2),(talent29_3),(talent29_4),(talent29_5),(talent29_6),(talent29_7)
dw (talent30_1),(talent30_2),(talent30_3),(talent30_4),(talent30_5),(talent30_6),(talent30_7),(talent30_8),(talent30_9),(talent30_10),(talent30_11),(talent30_12),(talent30_13),(talent30_14),(talent30_15),(talent30_16),(talent30_17),(talent30_18),(talent30_19),(talent30_20),(talent30_21)
dw (talent31_1),(talent31_2),(talent31_3),(talent31_4),(talent31_5),(talent31_6),(talent31_7),(talent31_8),(talent31_9),(talent31_10),(talent31_11),(talent31_12),(talent31_13),(talent31_14),(talent31_15),(talent31_16),(talent31_17),(talent31_18),(talent31_19),(talent31_20),(talent31_21)
dw (talent32_1),(talent32_2),(talent32_3),(talent32_4),(talent32_5),(talent32_6),(talent32_7),(talent32_8),(talent32_9),(talent32_10),(talent32_11),(talent32_12),(talent32_13),(talent32_14)
dw (talent33_1),(talent33_2),(talent33_3),(talent33_4),(talent33_5),(talent33_6),(talent33_7),(talent33_8),(talent33_9),(talent33_10),(talent33_11),(talent33_12),(talent33_13),(talent33_14),(talent33_15),(talent33_16),(talent33_17),(talent33_18),(talent33_19),(talent33_20),(talent33_21)
dw (talent34_1),(talent34_2),(talent34_3),(talent34_4),(talent34_5),(talent34_6),(talent34_7),(talent34_8),(talent34_9),(talent34_10),(talent34_11),(talent34_12),(talent34_13),(talent34_14)
dw (talent35_1),(talent35_2),(talent35_3),(talent35_4),(talent35_5),(talent35_6),(talent35_7)
dw (talent36_1),(talent36_2),(talent36_3),(talent36_4),(talent36_5),(talent36_6),(talent36_7)
dw (talent37_1),(talent37_2),(talent37_3),(talent37_4),(talent37_5),(talent37_6),(talent37_7)
dw (talent38_1),(talent38_2),(talent38_3),(talent38_4),(talent38_5),(talent38_6),(talent38_7),(talent38_8),(talent38_9),(talent38_10),(talent38_11),(talent38_12),(talent38_13),(talent38_14),(talent38_15),(talent38_16),(talent38_17),(talent38_18),(talent38_19),(talent38_20),(talent38_21)
dw (talent39_1),(talent39_2),(talent39_3),(talent39_4),(talent39_5),(talent39_6),(talent39_7),(talent39_8),(talent39_9),(talent39_10),(talent39_11),(talent39_12),(talent39_13),(talent39_14),(talent39_15),(talent39_16),(talent39_17),(talent39_18),(talent39_19),(talent39_20),(talent39_21)
dw (talent40_1),(talent40_2),(talent40_3),(talent40_4),(talent40_5),(talent40_6),(talent40_7),(talent40_8),(talent40_9),(talent40_10),(talent40_11),(talent40_12),(talent40_13),(talent40_14),(talent40_15),(talent40_16),(talent40_17),(talent40_18),(talent40_19),(talent40_20),(talent40_21)
dw (talent41_1),(talent41_2),(talent41_3),(talent41_4),(talent41_5),(talent41_6),(talent41_7),(talent41_8),(talent41_9),(talent41_10),(talent41_11),(talent41_12),(talent41_13),(talent41_14)
dw (talent42_1),(talent42_2),(talent42_3),(talent42_4),(talent42_5),(talent42_6),(talent42_7),(talent42_8),(talent42_9),(talent42_10),(talent42_11),(talent42_12),(talent42_13),(talent42_14),(talent42_15),(talent42_16),(talent42_17),(talent42_18),(talent42_19),(talent42_20),(talent42_21)
dw (talent15_10),(talent15_13),(talent15_28),(talent15_18),(talent15_9),(talent15_14),(talent15_8),(talent15_23),(talent15_21),(talent15_4),(talent15_5),(talent15_1),(talent15_25),(talent15_7),(talent15_3),(talent15_17),(talent15_22),(talent15_24),(talent15_6),(talent15_12),(talent15_15),(talent15_19),(talent15_27),(talent15_26),(talent15_16),(talent15_11),(talent15_20),(talent15_2)
dw 0,0,0,0
dw (talent16_1),(talent16_2),(talent16_3),(talent16_4),(talent16_5)

seek(0x1953F2); dh (talent14_7)

seek(0x19543E); dh (talent14_3)
seek(0x195462); dh (talent14_1)
seek(0x19546A); dh (talent14_2)
seek(0x19549E); dh (talent14_6)
seek(0x1954C2); dh (talent14_4)
seek(0x1954CA); dh (talent14_5)

seek(0x1955BA); dh (talent16_7)
seek(0x1955C2); dh (talent16_6)

seek(0x19574E); dh (talent14_8)
seek(0x195756); dh (talent14_9)


seek(0x21528C)
talent43_2:
textEntryASCII0("This talent hasn't been saved.||")
skip(-1)
talent43_1:
//RAM 803C3A5C - このタレントを|「タレントをつくる」に|のこしておきますか？
textEntryASCII0("Would you like to keep|this talent in the Talent Studio?")
//talent43_2:
//RAM 803C3A98 - このタレントは|セーブされていません。|★|「タレントをつくる」に|のこしておきますか？
//textEntryASCII0("This talent hasn't been saved.|Would you like to keep|this talent in the|Talent Studio?")
talent43_3:
//RAM 803C3AF0 - アルバムのかおを|消します。|よろしいですか？
textEntryASCII0("This face will be|deleted from the album.|Are you sure?")
talent43_4:
//RAM 803C3B20 - アルバムのもようを|消します。|よろしいですか？
textEntryASCII0("This pattern will be|deleted from the album.|Are you sure?")

seek(0x19A72E); dh (talent43_2)
seek(0x19A742); dh (talent43_1)

seek(0x19A7AA); dh 0x74		//(talent43_2)
seek(0x19A7BE); dh 0x50		//(talent43_1)
seek(0x19A8F2); dh 0x26
seek(0x19A8FA); dh 0xF2

seek(0x19A95A); dh (talent43_3)
seek(0x19A97A); dh (talent43_3)
seek(0x19A99E); dh 0x3E
seek(0x19A9A6); dh 0xC4

seek(0x19A9FE); dh (talent43_4)
seek(0x19AA1E); dh (talent43_4)
seek(0x19AA42); dh 0x3E
seek(0x19AA4A); dh 0xC4


seek(0x215944)	//Filename
//RAM 803C4114 - タレント
textEntryASCII0("Talent")

seek(0x215958)
//RAM 803C4128 - ポリゴンすうがおおすぎます
textEntryH0("Too many polygons")

seek(0x215CBC)
//RAM 803C448C - 現在のタレントのかおが|変更できなくなりますが|よろしいですか？|“いいえ”の場合は|けしょうが消えます。
textEntryASCII0("The current talent's face|cannot be edited.|Do you want to keep it?|Selecting No will undo|the makeup.")


//--Color Album
seek(0x215EB4)
talent44_1:
//RAM 803C4684 - いろあい
textEntryH0("Hue")
talent44_2:
//RAM 803C4690 - いろのこさ
textEntryH0("Saturation")
talent44_3:
//RAM 803C469C - いろのあかるさ
textEntryH0("Brightness")
talent44_4:
//RAM 803C46AC - カラーをつかむ
textEntryH0("Grab Color")
talent44_5:
//RAM 803C46BC - アルバムからよびだす
textEntryH0("Use Color from Album")
talent44_6:
//RAM 803C46D4 - アルバムにのこす
textEntryH0("Save Color to Album")

seek(0x215F18)
dw (talent44_1), (talent44_1)
dw (talent44_2), (talent44_2)
dw (talent44_3), (talent44_3)

seek(0x1A25F2); dh (talent44_1)
seek(0x1A2622); dh (talent44_2)
seek(0x1A2652); dh (talent44_3)

seek(0x1A2782); dh (talent44_4)
seek(0x1A277A); dh (talent44_5)
seek(0x1A2762); dh (talent44_6)

//Page Number Text (Disk 0x1950C0 / RAM 80343890)
seek(0x195104)
sb t7,0(a0)
addiu a0,a0,1

seek(0x195118)
sb t8,0(a0)
sb t9,1(a0)

seek(0x195124)
addiu a0,a0,2

seek(0x19515C)
sb t1,0(a0)
addiu a0,a0,1

seek(0x195168)
sb t2,0(a0)
addiu a0,a0,1
sb 0,0(a0)
jr ra
nop


//--Pattern Album Overlay
//Code Overlay (Disk 0xA21A98 - RAM 80)
seek(0xA3EAD8)
base 0x8029D040
talent45_1:
//RAM 8029D040 - もようをつかむ
textEntryH0("Grab Pattern")
talent45_2:
//RAM 8029D050 - アルバムからよびだす
textEntryH0("Use Pattern from Album")
talent45_3:
//RAM 8029D068 - アルバムにのこす
textEntryH0("Save Pattern to Album")

seek(0xA24B9A); dh (talent45_1)
seek(0xA24B92); dh (talent45_2)
seek(0xA24B7A); dh (talent45_3)

//Page Number Text (Pattern) 0xA2B44C
seek(0xA2B44C + 0x14)
sb 0,0(a0)
seek(0xA2B44C + 0x3C)
nop
nop
nop
nop

seek(0xA2B2EC + 0xC)
lbu a0,0(v0)
sb v1,0(v0)
addiu v0,v0,1
seek(0xA2B2EC + 0x24)
sb 0,0(v0)


//--Face Overlay
//Code Overlay (Disk 0x934180 - RAM 80280000)

//-Face Album
seek(0x956EA0)
base 0x802A2D20
talent46_1:
//RAM 802A2D20 - かおをつかむ
textEntryH0("Grab Face")
talent46_2:
//RAM 802A2D30 - アルバムからよびだす
textEntryH0("Use Face from Album")
talent46_3:
//RAM 802A2D48 - アルバムにのこす
textEntryH0("Save Face to Album")

seek(0x9343CA); dh (talent46_1)
seek(0x9343C2); dh (talent46_2)
seek(0x9343AA); dh (talent46_3)


//-Face Editor
seek(0x96295C)
base 0x802AE7DC
talent47_1:
textEntryH0("Page")			//RAM 802AE7DC - ページ
talent47_2:
textEntryH0("Selected Color")		//RAM 802AE7E4 - えらばれたいろ
talent47_3:
textEntryH0("Custom Color")		//RAM 802AE7F4 - つくったいろ
talent47_4:
textEntryH0("Skin Type")		//RAM 802AE804 - はだ
talent47_5:
textEntryH0("Eyes")			//RAM 802AE80C - め
talent47_6:
textEntryH0("Eyebrows")			//RAM 802AE810 - まゆ
talent47_7:
textEntryH0("Nose")			//RAM 802AE818 - はな
talent47_8:
textEntryH0("Mouth")			//RAM 802AE820 - くち
talent47_9:
textEntryH0("Sticker A")		//RAM 802AE828 - シールA
talent47_10:
textEntryH0("Sticker B")		//RAM 802AE834 - シールB
talent47_11:
textEntryH0("Move")			//RAM 802AE840 - いちをかえる
talent47_12:
textEntryH0("Rotate")			//RAM 802AE850 - むきをかえる
talent47_13:
textEntryH0("Resize")			//RAM 802AE860 - おおきさをかえる
talent47_14:
textEntryH0("Reset")			//RAM 802AE874 - リセット
talent47_15:
textEntryH0("Remove")			//RAM 802AE880 - えらばれたぶぶんをはずす
talent47_16:
textEntryH0("Undo")			//RAM 802AE89C - やりなおし
talent47_17:
textEntryH0("Add Shading")		//RAM 802AE8A8 - いろをつける
talent47_18:
textEntryH0("Red")			//RAM 802AE8B8 - あかいろ
talent47_19:
textEntryH0("Green")			//RAM 802AE8C4 - みどりいろ
talent47_20:
textEntryH0("Blue")			//RAM 802AE8D0 - あおいろ
talent47_21:
textEntryH0("1/2")			//RAM 802AE8DC - 1/2ページ
talent47_22:
textEntryH0("Select All")		//RAM 802AE8EC - すべてをせんたくする
talent47_23:
textEntryH0("Unselect All")		//RAM 802AE904 - すべてのせんたくをやめる
talent47_24:
textEntryH0("Select")			//RAM 802AE920 - せんたくする
talent47_25:
textEntryH0("Unselect")			//RAM 802AE930 - せんたくをやめる
talent47_26:
textEntryH0("Set Parts")		//RAM 802AE944 - パーツをセットする
talent47_27:
textEntryH0("Shuffle")			//RAM 802AE958 - らくちんスイッチ
talent47_28:
textEntryH0("Clear All")		//RAM 802AE96C - すべてはずす
talent47_29:
textEntryH0("Move the Nose")		//RAM 802AE97C - はなのいちをかえる
talent47_30:
textEntryH0("Color Album")		//RAM 802AE990 - カラーアルバム
talent47_31:
textEntryH0("Shuffle")			//RAM 802AE9A0 - らくちんスイッチ
talent47_32:
textEntryH0("Restore")			//RAM 802AE9B4 - さいしょにもどす
talent47_33:
textEntryH0("Choose a face")		//RAM 802AE9C8 - かおをえらぶ
talent47_34:
textEntryH0("Choose a skin color")	//RAM 802AE9D8 - はだのいろをえらぶ
talent47_35:
textEntryH0("Skin Color")		//RAM 802AE9EC - はだのいろ
talent47_36:
textEntryH0("Real 00")			//RAM 802AE9F8 - リアル00
talent47_37:
textEntryH0("Cartoon 00")		//RAM 802AEA04 - まんが00
talent47_38:
textEntryH0("Sticker A 00")		//RAM 802AEA10 - シールA00
talent47_39:
textEntryH0("Sticker B 00")		//RAM 802AEA20 - シールB00
talent47_40:
textEntryH0("Skin 00")			//RAM 802AEA30 - はだ00
talent47_41:
textEntryH0("Rotate / Zoom (B Button)")	//RAM 802AEA3C - かいてん・ズーム(Bボタン)

seek(0x962BEC)
dw (talent47_18),(talent47_19),(talent47_20),(talent47_4),(talent47_6),(talent47_5),(talent47_8)
dw (talent47_9),(talent47_10),(talent47_11),(talent47_12),(talent47_13),(talent47_14),(talent47_15)

seek(0x93A30E); dh (talent47_1)
seek(0x93FAD2); dh (talent47_2)
seek(0x93FABE); dh (talent47_3)
seek(0x94C1E6); dh (talent47_24)
seek(0x94C1DE); dh (talent47_25)
seek(0x94636A); dh (talent47_28)
seek(0x946E7E); dh (talent47_29)
seek(0x93F056); dh (talent47_30)
seek(0x9455F2); dh (talent47_31)
seek(0x94703E); dh (talent47_32)
seek(0x940642); dh (talent47_34)
seek(0x940446); dh (talent47_35)
seek(0x941806); dh (talent47_36)
seek(0x94185A); dh (talent47_36)
seek(0x9418AE); dh (talent47_36)
seek(0x941826); dh (talent47_37)
seek(0x94187A); dh (talent47_37)
seek(0x9418CE); dh (talent47_37)
seek(0x9418F6); dh (talent47_38)
seek(0x94191E); dh (talent47_39)
seek(0x9417D2); dh (talent47_40)
seek(0x93A6F6); dh (talent47_41)
seek(0x9447CA); dh (talent47_16)
seek(0x94690E); dh (talent47_15)

//Change 00 pointer
seek(0x941812); dh ((talent47_36) + 5)
seek(0x941866); dh ((talent47_36) + 5)
seek(0x9418BA); dh ((talent47_36) + 5)
seek(0x941832); dh ((talent47_37) + 8)
seek(0x941886); dh ((talent47_37) + 8)
seek(0x9418DA); dh ((talent47_37) + 8)
seek(0x941902); dh ((talent47_38) + 10)
seek(0x94192A); dh ((talent47_39) + 10)
seek(0x9417DE); dh ((talent47_40) + 5)

//Numbering Function (Disk 0x94165C / RAM 8028D4DC)
seek(0x94165C + 0x10)
sb t6,0(a0)
jr ra
sb 0,1(a0)
seek(0x94165C + 0x84)
sb t9,0(a0)
seek(0x94165C + 0xAC)
sb t1,1(a0)

//Page Number Text (Face) (Disk 0x93A2CC / RAM 8028614C)
seek(0x93A2E0)
sb 0,0(a0)
seek(0x93A308)
nop
nop
nop
nop
//(Disk 0x93A16C / RAM 80285FE8)
seek(0x93A178)
lbu a0,0(v0)
sb v1,0(v0)
addiu v0,v0,1
seek(0x93A190)
sb 0,0(v0)


//--Talent Type Selection (Disk 0xDCECE0 / RAM 80280000)
seek(0xDCECE0)
base 0x80280000

seek(0xDE4320)
textEntryH(32, "Sample Talent 1")	//RAM 80295640 - おてほんタレント1
textEntryH(32, "Sample Talent 2")	//RAM 80295660 - おてほんタレント2
textEntryH(32, "Sample Talent 3")	//RAM 80295680 - おてほんタレント3
textEntryH(32, "Sample Talent 4")	//RAM 802956A0 - おてほんタレント4
textEntryH(32, "Basic Talent 1")	//RAM 802956C0 - きほんタレント1
textEntryH(32, "Sample Talent 5")	//RAM 802956E0 - おてほんタレント5
textEntryH(32, "Sample Talent 6")	//RAM 80295700 - おてほんタレント6
textEntryH(32, "Sample Talent 7")	//RAM 80295720 - おてほんタレント7
textEntryH(32, "Sample Talent 8")	//RAM 80295740 - おてほんタレント8
textEntryH(32, "Basic Talent 2")	//RAM 80295760 - きほんタレント2
textEntryH(32, "Sample Talent 9")	//RAM 80295780 - おてほんタレント9
textEntryH(32, "Sample Talent 10")	//RAM 802957A0 - おてほんタレント10
textEntryH(32, "Sample Talent 11")	//RAM 802957C0 - おてほんタレント11
textEntryH(32, "Sample Talent 12")	//RAM 802957E0 - おてほんタレント12
textEntryH(32, "Basic Talent 3")	//RAM 80295800 - きほんタレント3
db $CB; textEntryH(31, " Type 1")	//RAM 80295820 - ♂タイプ1
db $CB; textEntryH(31, " Type 2")	//RAM 80295840 - ♂タイプ2
db $CB; textEntryH(31, " Type 3")	//RAM 80295860 - ♂タイプ3
db $CB; textEntryH(31, " Type 4")	//RAM 80295880 - ♂タイプ4
db $CB; textEntryH(31, " Basic Type")	//RAM 802958A0 - ♂タイプきほん
db $CC; textEntryH(31, " Type 1")	//RAM 802958C0 - ♀タイプ1
db $CC; textEntryH(31, " Type 2")	//RAM 802958E0 - ♀タイプ2
db $CC; textEntryH(31, " Type 3")	//RAM 80295900 - ♀タイプ3
db $CC; textEntryH(31, " Type 4")	//RAM 80295920 - ♀タイプ4
db $CC; textEntryH(31, " Basic Type")	//RAM 80295940 - ♀タイプきほん
textEntryH(32, "? Type 1")		//RAM 80295960 - ?タイプ1
textEntryH(32, "? Type 2")		//RAM 80295980 - ?タイプ2
textEntryH(32, "? Type 3")		//RAM 802959A0 - ?タイプ3
textEntryH(32, "? Type 4")		//RAM 802959C0 - ?タイプ4
textEntryH(32, "? Basic Type")		//RAM 802959E0 - ?タイプきほん


//--Makeup
//Code Overlay (Disk 0xA0B400 / RAM 80280000)
seek(0xA0B400)
base 0x80280000

seek(0xA190D4)
textEntryH0("")				//RAM 8028DCD4 - ページ

seek(0xA190F4)
talent48_1:
textEntryH0("Display Original Face")	//RAM 8028DCF4 - すがおをひょうじする
talent48_2:
textEntryH0("Fill")			//RAM 8028DD0C - ぜんたいぬり
talent48_3:
textEntryH0("Blur")			//RAM 8028DD1C - ぼかす
talent48_4:
textEntryH0("Pencil")			//RAM 8028DD24 - ペンシル
talent48_5:
textEntryH0("Pen")			//RAM 8028DD30 - ペン
talent48_6:
textEntryH0("Lipstick")			//RAM 8028DD38 - くちべに
talent48_7:
textEntryH0("Brush")			//RAM 8028DD44 - ブラシ
talent48_8:
textEntryH0("Puff")			//RAM 8028DD4C - パフ
talent48_9:
textEntryH0("Soap")			//RAM 8028DD54 - せっけん
talent48_10:
textEntryH0("Remover")			//RAM 8028DD60 - メイクおとし
talent48_11:
textEntryH0("Undo")			//RAM 8028DD70 - やりなおし
talent48_12:
textEntryH0("Representation")		//RAM 8028DD7C - ひょうじちゅう
talent48_13:
textEntryH0("Original")			//RAM 8028DD8C - すがお
talent48_14:
textEntryH0("Grid")			//RAM 8028DD94 - マスめ
talent48_15:
textEntryH0("Pinch")			//RAM 8028DD9C - つまむ
talent48_16:
textEntryH0("Hairline")			//RAM 8028DDA4 - はえぎわ
talent48_17:
textEntryH0("Removed")			//RAM 8028DDB0 - ひょうじをけす
talent48_18:
textEntryH0("Current")			//RAM 8028DDC0 - げんざいの
talent48_19:
textEntryH0("Talent's Face")		//RAM 8028DDCC - タレントのかお
talent48_20:
textEntryH0("Makeup")			//RAM 8028DDDC - けしょうが
talent48_21:
textEntryH0("Transparent")		//RAM 8028DDE8 - すけてみえる
talent48_22:
textEntryH0("Toggle Display")		//RAM 8028DDF8 - ひょうじのきりかえ

seek(0xA15BFE); dh (talent48_6)
seek(0xA15C0E); dh (talent48_4)
seek(0xA15C1E); dh (talent48_7)
seek(0xA15C2E); dh (talent48_8)
seek(0xA15C3E); dh (talent48_5)
seek(0xA15A5E); dh (talent48_9)
seek(0xA16052); dh (talent48_3)
seek(0xA1617A); dh (talent48_11)
seek(0xA16C32); dh (talent48_10)
seek(0xA16E7A); dh (talent48_22)
seek(0xA17512); dh (talent48_2)

seek(0xA17FAE); dh (talent48_18)
seek(0xA17FBE); dh (talent48_19)
seek(0xA17FDA); dh (talent48_20)
seek(0xA17FF2); dh (talent48_21)
seek(0xA1800E); dh (talent48_14)
seek(0xA18026); dh (talent48_12)

//Current X position (RAM 8028CA78)
seek(0xA17E7A); dh $00B3
//Face X position (RAM 8028CBC0)
seek(0xA17FC2); dh $00DB
//Grid X position
seek(0xA17F9E); dh $00B9
//Representation X position
seek(0xA1802A); dh $00D1
//Makeup X position
seek(0xA17F92); dh $00F5
//Transparent X position
seek(0xA17FF6); dh $00B6


//--Expressions
//Code Overlay (Disk 0x9EBDF8 / RAM 80280000)
seek(0x9EBDF8)
base 0x80280000

seek(0x9FEF50)
talent49_1:
textEntryH0("Page")			//RAM 80293158 - ページ
talent49_2:
textEntryH0("Normal")			//RAM 80293160 - ふつうのひょうじょう
talent49_3:
textEntryH0("Laugh")			//RAM 80293178 - わらったひょうじょう
talent49_4:
textEntryH0("Angry")			//RAM 80293190 - おこったひょうじょう
talent49_5:
textEntryH0("Sad")			//RAM 802931A8 - こまったひょうじょう
talent49_6:
textEntryH0("Free")			//RAM 802931C0 - フリーのひょうじょう
talent49_7:
textEntryH0("Sleep")			//RAM 802931D8 - ねむったひょうじょう
talent49_8:
textEntryH0("Shuffle")			//RAM 802931F0 - らくちんスイッチ
talent49_9:
textEntryH0("Reset")			//RAM 80293204 - リセット
talent49_10:
textEntryH0("Show/Hide Net")		//RAM 80293210 - あみをだす/ださない
talent49_11:
textEntryH0("Hide Net")			//RAM 80293228 - あみをけす
talent49_12:
textEntryH0("Undo")			//RAM 80293234 - やりなおし
talent49_13:
textEntryH0("Copy Expression")		//RAM 80293240 - ひょうじょうのコピー
talent49_14:
textEntryH0("Paste Expression")		//RAM 80293258 - ひょうじょうのよびだし
talent49_15:
textEntryH0("Expression 00")		//RAM 80293270 - ひょうじょう00
talent49_16:
textEntryH0("Rotate / Zoom (B Button)")	//RAM 80293284 - かいてん・ズーム(Bボタン)

seek(0x9EDED6); dh (talent49_1)
seek(0x9F46C6); dh (talent49_8)
seek(0x9F1D9A); dh (talent49_10)
seek(0x9F1B22); dh (talent49_12)
seek(0x9F4DA6); dh (talent49_13)
seek(0x9F4D8E); dh (talent49_14)
seek(0x9F1F9E); dh (talent49_15)
seek(0x9F1FCE); dh (talent49_15)
seek(0x9EE082); dh (talent49_16)

seek(0x9FF0AC)
dw (talent49_2),(talent49_3),(talent49_4)
dw (talent49_5),(talent49_6),(talent49_7)

//Move Expression Number ASM
seek(0x9F1FB0); sb t7,11(a1)
seek(0x9F1FB8); sb 0,12(a1)
seek(0x9F1FDC); sb t0,11(a1)
seek(0x9F1FEC); sb t2,12(a1)

//Page Number Text (Expressions) 0x9EDE94
seek(0x9EDE94 + 0x14)
sb 0,0(a0)
seek(0x9EDE94 + 0x3C)
nop
nop
nop
nop
seek(0x9EDD34 + 0xC)
lbu a0,0(v0)
sb v1,0(v0)
addiu v0,v0,1
seek(0x9EDD34 + 0x24)
sb 0,0(v0)


//--Pattern Maker
//Code Overlay (Disk 0xA21A98 / RAM 80280000)
seek(0xA21A98)
base 0x80280000

seek(0xA426B8)
talent50_1:
textEntryH0("Pen")			//RAM 802A0C20 - ペン
talent50_2:
textEntryH0("Eraser")			//RAM 802A0C28 - けしゴム
talent50_3:
textEntryH0("Thin")			//RAM 802A0C34 - ほそい
talent50_4:
textEntryH0("Medium")			//RAM 802A0C3C - ふつう
talent50_5:
textEntryH0("Thick")			//RAM 802A0C44 - ふとい
talent50_6:
textEntryH0("Fill")			//RAM 802A0C4C - ぬりつぶし
talent50_7:
textEntryH0("Special Effects")		//RAM 802A0C58 - とくしゅこうか
talent50_8:
textEntryH0("Clear")			//RAM 802A0C68 - ぜんたいをけす
talent50_9:
textEntryH0("Undo")			//RAM 802A0C78 - やりなおし
talent50_10:
textEntryH0("Free")			//RAM 802A0C84 - じゆうせん
talent50_11:
textEntryH0("Line")			//RAM 802A0C90 - ちょくせん
talent50_12:
textEntryH0("Rectangle")		//RAM 802A0C9C - しかくけい
talent50_13:
textEntryH0("Solid Rectangle")		//RAM 802A0CA8 - ぬりつぶしたしかくけい
talent50_14:
textEntryH0("Circle")			//RAM 802A0CC0 - えん
talent50_15:
textEntryH0("Solid Circle")		//RAM 802A0CC8 - ぬりつぶしたえん
talent50_16:
textEntryH0("Selected Color")		//RAM 802A0CDC - えらばれたいろ
talent50_17:
textEntryH0("Custom Color")		//RAM 802A0CEC - つくったいろ
talent50_18:
textEntryH0("1/2")			//RAM 802A0CFC - 1/2ページ
talent50_19:
textEntryH0("Smooth")			//RAM 802A0D0C - なめらかにする
talent50_20:
textEntryH0("Flip")			//RAM 802A0D1C - さゆうはんてん
talent50_21:
textEntryH0("Rotate")			//RAM 802A0D2C - かいてん
talent50_22:
textEntryH0("Brighten")			//RAM 802A0D38 - あかるくする
talent50_23:
textEntryH0("Darken")			//RAM 802A0D48 - くらくする
talent50_24:
textEntryH0("Scroll")			//RAM 802A0D54 - スクロール
talent50_25:
textEntryH0("Stamps")			//RAM 802A0D60 - スタンプ
talent50_26:
textEntryH0("Samples")			//RAM 802A0D6C - サンプル
talent50_27:
textEntryH0("Texture Feel")		//RAM 802A0D78 - しつかんをつける
talent50_28:
textEntryH0("Shapes")			//RAM 802A0D8C - ずけい
talent50_29:
textEntryH0("Color Album")		//RAM 802A0D94 - カラーアルバム
talent50_30:
textEntryH0("Rectangle")		//RAM 802A0DA4 - しかくけい
talent50_31:
textEntryH0("Circle")			//RAM 802A0DB0 - えん
talent50_32:
textEntryH0("Unfill")			//RAM 802A0DB8 - おなじいろをけす
talent50_33:
textEntryH0("Shuffle")			//RAM 802A0DCC - らくちんスイッチ
talent50_34:
textEntryH0("Split")			//RAM 802A0DE0 - よんぶんかつ
talent50_35:
textEntryH0("Hue Change")		//RAM 802A0DF0 - いろあいをかえる

seek(0xA42A98)
textEntryH0("")				//RAM 802A1000 - ページ

seek(0xA42AA0)
dw (talent50_11),(talent50_12),(talent50_14),(talent50_13),(talent50_15)
dw (talent50_3),(talent50_4),(talent50_5)
dw (talent50_3),(talent50_4),(talent50_5),(talent50_30),(talent50_31),(talent50_32)
dw (talent50_20),(talent50_21),(talent50_34),(talent50_35),(talent50_22),(talent50_23),(talent50_19),(talent50_27)

seek(0xA2DEA2); dh (talent50_9)
seek(0xA2E832); dh (talent50_16)
seek(0xA2E83E); dh (talent50_17)
seek(0xA2FB8A); dh (talent50_6)
seek(0xA2FD66); dh (talent50_1)
seek(0xA2FE86); dh (talent50_28)
seek(0xA3000A); dh (talent50_2)
seek(0xA3017A); dh (talent50_7)
seek(0xA30A42); dh (talent50_8)
seek(0xA3101E); dh (talent50_26)
seek(0xA31A02); dh (talent50_29)
seek(0xA32E1A); dh (talent50_33)


//--Talent Information
//Code Overlay (Disk 0x9222A0 / RAM 8029D0E0)
seek(0x9222A0)
base 0x8029D0E0

seek(0x92DF80)
//RAM 802A8DC0 - 性別誕生日月日歳 (Character Graphics to Load)
//RAM 8029FF30 - Preload all Char GFX
//RAM 802A5820 - Preload Char GFX
//Amount of chars to allocate (Disk 0x92DDD8 / RAM 802A8C18)
textEntryASCII0("Gender/Age")

seek(0x92DF94)
textEntryASCII0("Gender")		//RAM 802A8DD4 - 性別
seek(0x92DF9C)
textEntryASCII0("")			//RAM 802A8DDC - 誕生
seek(0x92DFA4)
textEntryASCII0("")			//RAM 802A8DE4 - 日
seek(0x92DFA8)
textEntryASCII0("/")			//RAM 802A8DE8 - 月
seek(0x92DFAC)
textEntryASCII0("")			//RAM 802A8DEC - 日
seek(0x92DFB0)
textEntryASCII0("Age")			//RAM 802A8DF0 - 歳

//Left most position = 0x94
//Amount of memory to allocate (Disk 0x92AC18 / RAM 802A5A58)
seek(0x92AC1A); dh 0x050F

//Gender Text X Position (Disk 0x92B094 / RAM 802A5ED4)
seek(0x92B096); dh 0x00AE
//Gender Box X Position [Float] (Disk 0x92882C / RAM 802A366C)
seek(0x92882E); dh 0x4367

//Date 1 Box X Position [Float] (Disk 0x928884 / RAM 802A36C4)
seek(0x928886); dh 0x4314
//Date 2 Box X Position [Float] (Disk 0x9288B4 / RAM 802A36F4)
seek(0x9288B6); dh 0x4314+9
//Date 3 Box X Position [Float] (Disk 0x9288EC / RAM 802A372C)
seek(0x9288EE); dh 0x4314+31
//Date 4 Box X Position [Float] (Disk 0x928924 / RAM 802A3764)
seek(0x928926); dh 0x4314+40
//'/' Text X Position (Disk 0x92B18C / RAM 802A5FCC)
seek(0x92B18E); dh 0x00A9

//Age 1 Box X Position [Float] (Disk 0x92895C / RAM 802A379C)
seek(0x92895E); dh 0x4383
//Age 2 Box X Position [Float] (Disk 0x928980 / RAM 802A37C0)
seek(0x928982); dh 0x4387
//Age 3 Box X Position [Float] (Disk 0x9289D0 / RAM 802A3810)
seek(0x9289D2); dh 0x438C
//Age Text X Position (Disk 0x92B234 / RAM 802A6074)
seek(0x92B236); dh 0xE2

//Font Fix
//seek(0x92B0B2); dh $0300-$0300 //Birth
seek(0x92B15A); dh $0300	//'/'
//seek(0x92B202); dh $0600-$0300 //yr

seek(0x92FB40)
textEntryH(32, "Shuffle")		//らくちんスイッチ
textEntryH(32, "Clear All")		//すべてけす
textEntryH(32, "Undo")			//やりなおし
textEntryH(32, "Name")			//なまえ
textEntryH(32, "Job")			//しごと
textEntryH(32, "Catchphrase")		//すきなセリフ
textEntryH(32, "Free Space 1")		//フリースペース1
textEntryH(32, "Free Space 2")		//フリースペース2
textEntryH(32, "Free Space 3")		//フリースペース3
textEntryH(32, "Free Space 4")		//フリースペース4
textEntryH(32, "Gender")		//せいべつ
textEntryH(32, "Birthday")		//たんじょうび
textEntryH(32, "Age")			//ねんれい

//Age X Position (Disk 0x9284DC / RAM 802A331C)
seek(0x9284DE); dh 0x0100
//Birthday X Position (Disk 0x9284E0 / RAM 802A3320)
seek(0x9284E2); dh 0x008E


//Base Talent Names
seek(0x1A99FC)
textEntryASCII0("Mr. Body")		//まっぱくん
seek(0x1A9A08)
textEntryASCII0("Ms. Body")		//すはだびじん
seek(0x1A9A18)
textEntryASCII0("Body")			//そのた
