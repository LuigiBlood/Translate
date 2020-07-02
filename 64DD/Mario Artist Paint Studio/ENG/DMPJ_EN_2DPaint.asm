//2D Paint Mode
seek(0x189CDC)
base 0x8015B734
help0_2dpaint0:
textEntry0("Color Brightness Lever")				//8015B734 - いろのあかるさレバー
help0_2dpaint1:
textEntry0("Click on the palette to set a custom color.")	//8015B74C - みぎのパレットをおして、つくったいろをセットしよう
help0_2dpaint2:
								//8015B784 - つくったいろ
help0_2dpaint3:
textEntry0("Current Color")					//8015B794 - つくったいろ
help0_2dpaint4:
								//8015B7A4 - Bボタンホールドでやりなおしけし
help0_2dpaint5:
								//8015B7C8 - Bボタンホールドでやりなおしけし
help0_2dpaint6:
textEntry0("Hold B Button to Unerase")				//8015B7EC - Bボタンホールドでやりなおしけし
help0_2dpaint7:
								//8015B810 - はんいしていご、Bボタンでかくだいしゅくしょう
help0_2dpaint8:
								//8015B844 - はんいしていご、Bボタンでかくだいしゅくしょう
help0_2dpaint9:
								//8015B878 - はんいしていご、Bボタンでかくだいしゅくしょう
help0_2dpaint10:
								//8015B8AC - はんいしていご、Bボタンでかくだいしゅくしょう
help0_2dpaint11:
								//8015B8E0 - はんいしていご、Bボタンでかくだいしゅくしょう
help0_2dpaint12:
								//8015B914 - はんいしていご、Bボタンでかくだいしゅくしょう
help0_2dpaint13:
								//8015B948 - はんいしていご、Bボタンでかくだいしゅくしょう
help0_2dpaint14:
								//8015B97C - はんいしていご、Bボタンでかくだいしゅくしょう
help0_2dpaint15:
								//8015B9B0 - はんいしていご、Bボタンでかくだいしゅくしょう
help0_2dpaint16:
								//8015B9E4 - はんいしていご、Bボタンでかくだいしゅくしょう
help0_2dpaint17:
								//8015BA18 - はんいしていご、Bボタンでかくだいしゅくしょう
help0_2dpaint18:
textEntry0("Within the canvas, hold B Button to Scale")		//8015BA4C - はんいしていご、Bボタンでかくだいしゅくしょう
help0_2dpaint19:
								//8015BA80 - Aボタンでぺンのきりかえ ヨウシではBボタンでスポイト
textEntry0("A Button to switch pens/B Button for the picker")
help0_2dpaint20:
								//8015BABC - Bボタンでぎゃくおくり
help0_2dpaint21:
								//8015BAD8 - Bボタンでぎゃくおくり
help0_2dpaint22:
								//8015BAF4 - Bボタンでぎゃくおくり
help0_2dpaint23:
								//8015BB10 - Bボタンでぎゃくおくり
help0_2dpaint24:
								//8015BB2C - Bボタンでぎゃくおくり
help0_2dpaint25:
textEntry0("Press B Button to go the previous page.")		//8015BB48 - Bボタンでぎゃくおくり
help0_2dpaint26:
textEntry0("You cannot load large pictures here.")		//8015BB64 - おおきいヨウシのさくひんはロードできません

seek(0x15B194)
dw help0_2dpaint0; textEntrySkip(20)
dw help0_2dpaint1; textEntrySkip(20)
dw help0_2dpaint2; textEntrySkip(20)
dw help0_2dpaint3; textEntrySkip(20)
dw help0_2dpaint4; textEntrySkip(20)
dw help0_2dpaint5; textEntrySkip(20)
dw help0_2dpaint6; textEntrySkip(20)
dw help0_2dpaint7; textEntrySkip(20)
dw help0_2dpaint8; textEntrySkip(20)
dw help0_2dpaint9; textEntrySkip(20)
dw help0_2dpaint10; textEntrySkip(20)
dw help0_2dpaint11; textEntrySkip(20)
dw help0_2dpaint12; textEntrySkip(20)
dw help0_2dpaint13; textEntrySkip(20)
dw help0_2dpaint14; textEntrySkip(20)
dw help0_2dpaint15; textEntrySkip(20)
dw help0_2dpaint16; textEntrySkip(20)
dw help0_2dpaint17; textEntrySkip(20)
dw help0_2dpaint18; textEntrySkip(20)
dw help0_2dpaint19; textEntrySkip(20)
dw help0_2dpaint20; textEntrySkip(20)
dw help0_2dpaint21; textEntrySkip(20)
dw help0_2dpaint22; textEntrySkip(20)
dw help0_2dpaint23; textEntrySkip(20)
dw help0_2dpaint24; textEntrySkip(20)
dw help0_2dpaint25; textEntrySkip(20)
dw help0_2dpaint26; textEntrySkip(20)


seek(0x1EFA70)
textEntry(168, "Change Texture Page")	//Change Texture Page / もようヨウシきりかえ
textEntry(168, "Rotate Model")		//previewroticon / カメラかいてん
textEntry(168, "Square")		//Square / しかくけい
textEntry(168, "Star")			//Star / ほし
textEntry(168, "Circle")		//Circle / えん
textEntry(168, "Freehand")		//Freehand / フリーハンド
textEntry(168, "Heart")			//Heart / ハート
textEntry(168, "Select All")		//Select All / すべてをえらぶ
textEntry(168, "Ellipse")		//Ellipse / だえん
textEntry(168, "Square")		//Square / しかくけい
textEntry(168, "Square")		//Square / しかくけい
textEntry(168, "Magic Select")		//Star / 1つをえらぶ
textEntry(168, "Circle")		//Circle / えん
textEntry(168, "Freehand")		//Freehand / フリーハンド
textEntry(168, "Heart")			//Heart / ハート
textEntry(168, "Select All")		//Select All / すべてをえらぶ
textEntry(168, "Ellipse")		//Ellipse / だえん

textEntry(168, "Rectangle")		//Draw Rectangle / しかくけい
textEntry(168, "Star")			//Star / ほし
textEntry(168, "Circle")		//Draw Circle / えん
textEntry(168, "Star")			//Draw Star / ホシ (Unused)
textEntry(168, "Heart")			//Heart / ハート
textEntry(168, "Line")			//Line / ちょくせん
textEntry(168, "Ellipse")		//Draw Ellipse / だえん

textEntry(168, "Brighten")		//Brighten / あかるくする
textEntry(168, "Darken")		//Darken / くらくする
textEntry(168, "Smooth")		//Smooth / なめらかにする
textEntry(168, "Sharp")			//Sharp / シャープ
textEntry(168, "Zig Zag")		//Zig Zags / ジグザグ
textEntry(168, "Drip")			//Drip / にじませる
textEntry(168, "Color Scale")		//Colour Scale / いろをかける
textEntry(168, "Contrast")		//Adjust Contrast / コントラスト
textEntry(168, "Chrome Emboss")		//Chrome Emboss / うきぼり
textEntry(168, "Sketchize")		//Sketchize / スケッチ
textEntry(168, "Lineize")		//Lineize / せんが
textEntry(168, "Sepia")			//Tile / セピア
textEntry(168, "Exit")			//Back / でる
textEntry(168, "Exit")			//Back / でる

seek(0x1F1FD8)
textEntry(168, "Selected Color")	//Selected Colour / えらばれているいろ

seek(0x1F27B8)
textEntry(168, "Next Page")		//Next / ページおくり

seek(0x1F2EF0)
textEntry(168, "Pokemon (1)")		//Pocket Monsters 1 / ポケモン1
textEntry(168, "Pokemon (2)")		//Pocket Monsters 2 / ポケモン2
textEntry(168, "Mario & more")		//Mario / マリオなど
textEntry(168, "Background")		//Game Bg / はいけい
textEntry(168, "Yoshi")			//Yoshi / ヨッシー
textEntry(168, "Star Fox & more")	//Pilot Wings Wave Race Star Fox / フォックスなど
textEntry(168, "Planet Mars")		//Mars / イギリス (Unused)
textEntry(168, "Deformative")		//Deformative Stickers / へんそう
textEntry(168, "Text")			//Text / もじシール
textEntry(168, "Food & Drinks")		//Food and Drink / しょくひんシール
textEntry(168, "Photos")		//Photos / しゃしん
textEntry(168, "Other")			//Others / そのた
textEntry(168, "Game Artworks")		//Zelda and others / ゲームイラスト
textEntry(168, "People & Animals")	//people and others / じんぶつなど
textEntry(168, "Zelda")			//Zelda / ゼルダ
textEntry(168, "Banjo & more")		//Did banj mars / バンジョーなど
textEntry(168, "Illustrations")		//Illustations / イラスト
textEntry(168, "Text")			//Text / もじ
textEntry(168, "Other (2)")		//Others 2 / そのた2
textEntry(168, "Landscapes & more")	//Landscapes and others / ふうけいなど
textEntry(168, "Frame (1)")		//Frame 1 / フレーム1
textEntry(168, "Frame (2)")		//Frame 2 / フレーム2
textEntry(168, "Frame (3)")		//Frame 3 / フレーム3

seek(0x1F45E8)
textEntry(168, "Capture Pak")		//Import picture / キャプチャーカセット
textEntry(168, "Capture Movie")		//Import movie / キャプチャームービー


seek(0x1F5AE8)
textEntry(168, "Flip")			//RotateFlipText / はんてん
textEntry(168, "Flip")			//Flip / はんてん
textEntrySkip(168)
textEntry(168, "Thin")			//Thin / ほそい
textEntry(168, "Medium")		//Medium / ふつう
textEntry(168, "Thick")			//Thick / ふとい
textEntry(168, "Various Stamps")	//Cut out sticker pictures / いろいろスタンプ
textEntry(168, "Scroll")		//Scroll / がめんスクロール
textEntry(168, "Fill")			//Fill / ぬりつぶし
textEntry(168, "Zoom")			//Zoom / かくだい・しゅくしょう
textEntry(168, "Eraser")		//Eraser_Edit / けしゴム
textEntry(168, "Next Page")		//Next / ページおくり
textEntry(168, "Undo")			//Undo / やりなおし
textEntry(168, "Erase Frame")		//Remove Frame / フレームをけす
textEntry(168, "Go to Main Menu")	//Exit / セレクトがめんにもどる
textEntry(168, "Switch Paper")		//Change Page / ヨウシきりかえ
textEntry(168, "Cut & Copy")		//Copy / きりとりコピー
textEntry(168, "Cut")			//Cutout / きりとる
textEntry(168, "Shapes")		//Shapes / ずけい
textEntry(168, "Text")			//Text / もじスタンプ
textEntry(168, "Make Color")		//Colour Palette / いろをつくる
textEntry(168, "Special Effects")	//Special Fx / とくしゅこうか
textEntry(168, "Restore")		//Special_Restore / リセット
textEntry(168, "Character Stamps")	//Character Stamp / キャラクタースタンプ
textEntry(168, "Backgrounds")		//High Resolution / はいけい
textEntry(168, "Frames")		//Print Club Frame / フレーム
textEntry(168, "Coloring Book")		//Colouring Book / ぬりえ
textEntry(168, "Game Boy Printer")	//Load Save / ポケットプリンタ
textEntry(168, "Game Boy Camera")	//Load Save / ポケットカメラ
textEntry(168, "Save/Load")		//Load Save / セーブ・ロード
textEntry(168, "Load")			//Load / 2さくひんロロンド
textEntry(168, "Save")			//Save / セーブ
textEntry(168, "Special Save")		//Special data save / とくしゅなセーブ
textEntry(168, "Rotate")		//Rotate_Edit / かいてん
textEntry(168, "Rotate Screen")		//Rotate2_Edit / がめかいてん
textEntry(168, "Rotate")		//SRotate_Edit / かいてん
textEntry(168, "Rotate Screen")		//SRotate2_Edit / がめかいてん
textEntry(168, "Music")			//Select Music / BGM
textEntry(168, "Cursor Speed")		//Mouse Speed / カーソルスピード
textEntrySkip(168)			//Erase Frame / アイコンをけす (Unused)
textEntry(168, "Help")			//Help / ヘルプ
textEntry(168, "Adjust Screen")		//Modify Screen Size / がめんサイズちょうせい
textEntry(168, "Paper Size")		//Canvas_Edit / ヨウシサイズ
textEntry(168, "Preview")		//Preview Mode / アイコンをけす
textEntry(168, "Standard")		//Standard / ふつうヨウシ
textEntry(168, "Large")			//Frame Size / おおきいヨウシ

textEntry(168, "Animate")		//2D Movie / パラパラまんが
textEntry(168, "Exit")			//Exit / でる
textEntry(168, "Play")			//Play / うごかす
textEntry(168, "Copy")			//Copy / フィルムコピー
textEntry(168, "Stop")			//End / フィルムエンド
textEntry(168, "Ghost")			//Ghost / フィルムゴースト
textEntry(168, "Clear Frame")		//Clear Frame / 1コマけす
textEntry(168, "Clear Film")		//Clear Film / フィルムすべてをけす
textEntry(168, "Play")			//Play / うごかす
textEntry(168, "Stop")			//Stop / とめる
textEntry(168, "Loop")			//Loop / くりかえす
textEntry(168, "Blend")			//Blender / ブレンド
textEntry(168, "Watch")			//Hide Frame / わくをけす
textEntry(168, "Exit")			//Exit / でる
textEntry(168, "Speed")			//speeder / フィルムスピード

textEntry(168, "Go to Main Menu")	//Title Screen / セレクトがめんにもどる
textEntry(168, "Go to Main Menu")	//Title Screen / セレクトがめんにもどる
textEntry(168, "Exit")			//Exit / でる

seek(0x1F86E0)
textEntry(168, "Disable")		//Do Not COmpress / しない
textEntry(168, "Automatic")		//Automatic / じどう

seek(0x1F8A28)
textEntry(168, "Slow")			//Slow / おそい
textEntry(168, "Medium")		//Medium / ふつう
textEntry(168, "Fast")			//Fast / はやい

seek(0x1F9010)
textEntry(168, "Music 1")		//t1 / BGMタイプ1
textEntry(168, "Music 2")		//t2 / BGMタイプ2
textEntry(168, "Music 3")		//t3 / BGMタイプ3
textEntry(168, "Music 4")		//t4 / BGMタイプ4
textEntry(168, "Music OFF")		//Off / BGMOFF

textEntry(168, "Thick")			//Partial Eraser1 / ふとい
textEntry(168, "Medium")		//Partial Eraser2 / ふつう
textEntry(168, "Thin")			//Partial Eraser3 / ほそい
textEntry(168, "Freehand")		//Clear ScreenF1 / フリーハンド
textEntry(168, "Rectangle")		//Clear ScreenF2 / しかくけい
textEntry(168, "Fill")			//Clear ScreenF3 / おなじいろをけす
textEntry(168, "Flash")			//Clear ScreenF4 / ぜんたいをけす
textEntry(168, "Rocket")		//Clear ScreenF5 / ロケットでけす
textEntry(168, "Clear")			//Clear ScreenF6 / ぜんたいけし
textEntry(168, "Clear")			//Clear ScreenF7 / ぜんたいけし
textEntry(168, "Smoothen")		//Smooth / なめらかにする
textEntry(168, "Clear")			//Clear Screen / ぜんたいけし

seek(0x1F9E18)
textEntry(168, "Exit")			//Exit / でる
textEntry(168, "Exit")			//Exit / でる
textEntry(168, "Exit")			//Exit / でる
textEntry(168, "Exit")			//Exit / でる

textEntry(168, "Eraser")		//Text_Erase / けしゴム
textEntry(168, "Small Letters")		//Samll Letter / こもじ
textEntry(168, "Big Letters")		//Capital letter / おおもじ
textEntry(168, "Numbers")		//Numbers / すうじ・きごう
textEntry(168, "Hiragana")		//Hiragana / ひらがな
textEntry(168, "Katakana")		//Katakana / カタカナ
textEntry(168, "Kanji")			//Kanji / かんじ
textEntry(168, "Text Color")		//Text Colour / もじのいろ

seek(0x1FAC88)
textEntry(168, "Next Page")		//Next / ページおくり

seek(0x1FAF28)
textEntry(168, "Exit")			//Exit / でる
textEntry(168, "Return")		//return / もどる
textEntry(168, "Reset")			//Reset / カラーリセット
textEntry(168, "Exit")			//Exit / でる

seek(0x1FC230)
textEntry(168, "3D Preview")		//Preview Options / 3Dプレビュー
textEntry(168, "Next Texture Page")	//Next Texture Page / もようヨウシきりかえ
textEntry(168, "View 1")		//View 1 / してん1
textEntry(168, "View 2")		//View 2 / してん2
textEntry(168, "View 3")		//View 3 / してん3
textEntry(168, "View 4")		//View 4 / してん4
textEntry(168, "View 5")		//View 5 / してん5
textEntry(168, "View 6")		//View 6 / してん6
textEntry(168, "View 7")		//View 7 / してん7
textEntry(168, "View 8")		//View 8 / してん8
textEntry(168, "Rotation A")		//Demo 1 / カイテンA
textEntry(168, "Rotation B")		//Demo 1 / カイテンB
textEntry(168, "Multi Rotation")	//Demo 3 / じょうげさゆうカイテン

seek(0x1FEE34)
textEntry(60, "Flip Stamp")		//Flip Stamp / スタンプはんてん
textEntry(60, "Flip Text")		//Flip Text / もじはんてん
textEntrySkip(60)			//Flip Canvas / はんてん (Unused)

seek(0x20329E)
textEntry(92, "Felt Tip Pen")		//Felttip Pen / フェルトペン
textEntry(92, "Felt Tip Pen")		//Felttip Pen / フェルトペン
textEntry(92, "Felt Tip Pen")		//Felttip Pen / フェルトペン
textEntry(92, "Marker")			//Marker / マーカー
textEntry(92, "Marker")			//Marker / マーカー
textEntry(92, "Marker")			//Marker / マーカー
textEntry(92, "Pencil")			//Pencil Crayon / エンピツ
textEntry(92, "Pencil")			//Pencil Crayon / エンピツ
textEntry(92, "Pencil")			//Pencil Crayon / エンピツ
textEntry(92, "Crayon")			//Wax Crayon / クレヨン
textEntry(92, "Crayon")			//Wax Crayon / クレヨン
textEntry(92, "Crayon")			//Wax Crayon / クレヨン
textEntry(92, "Chalk")			//Chalk / チョーク
textEntry(92, "Chalk")			//Chalk / チョーク
textEntry(92, "Chalk")			//Chalk / チョーク
textEntry(92, "Brush")			//Paint Brush / すいさいブラシ
textEntry(92, "Brush")			//Paint Brush / すいさいブラシ
textEntry(92, "Brush")			//Paint Brush / すいさいブラシ
textEntry(92, "Oil Brush")		//Oil Brush / あぶらえブラシ
textEntry(92, "Oil Brush")		//Oil Brush / あぶらえブラシ
textEntry(92, "Oil Brush")		//Oil Brush / あぶらえブラシ
textEntry(92, "Spray Can")		//Spraycan / スプレー
textEntry(92, "Spray Can")		//Spraycan / スプレー
textEntry(92, "Spray Can")		//Spraycan / スプレー
textEntry(92, "Finger Blend")		//Finger Blend / ゆびでこする
textEntry(92, "Finger Blend")		//Finger Blend / ゆびでこする
textEntry(92, "Finger Blend")		//Finger Blend / ゆびでこする

seek(0x204FE8)
base 0x8026C500
//コントローラ１に
//６４ＧＢパックと
//ポケットカメラを
//さしてください。
textEntryASCII(84, "On Controller 1,\n please insert the\nN64 Transfer Pak and\nGame Boy Camera.")

//コントローラ１には
//６４ＧＢパック以外の
//周辺機器が
//ささっています。
//６４ＧＢパックと
//ポケットカメラを
//さしてください。
textEntryASCII(140, "On Controller 1,\n please insert the\nN64 Transfer Pak and\nGame Boy Camera.")

//コントローラ１の
//６４ＧＢパックに
//ポケットカメラを
//さしてください。
textEntryASCII(84, "On Controller 1,\n please insert the\nN64 Transfer Pak and\nGame Boy Camera.")

//コントローラ１の
//６４ＧＢパックには
//ポケットカメラ以外の
//カートリッジが
//ささっています。
//ポケットカメラを
//さしてください。
textEntryASCII(140, "On Controller 1,\n please insert the\nGame Boy Camera into\nthe N64 Transfer Pak.")

//Fix number
seek(0x1D0556)
dh $0030
seek(0x1D05A2)
dh $0030
seek(0x1D062A)
dh $0030
seek(0x1D0676)
dh $0030

seek(0x1D056A)
dh $0012
seek(0x1D05B6)
dh $0012
seek(0x1D063E)
dh $0012
seek(0x1D0682)
dh $0012

seek(0x2096C8)
textEntry(168, "Ghost")			//Ghost / フィルムゴースト
seek(0x209778)
textEntry(168, "Erase Ghost")		//Erase Ghost / ゴーストをけす

seek(0x20AACC)
textEntry(36, "Switch Paper")		//Change Page / ほじょヨウシきりかえ
textEntry(36, "Switch Paper")		//Change Page / ヨウシきりかえ
textEntry(36, "Switch Paper")		//Change Page / ヨウシきりかえ

seek(0x20ACC8)
textEntry0("Hold B Button to Scale")	//Bボタンでかくだいしゅくしょう

seek(0x20BF74)
//2D Paint
//セーブをしないと
//作品が消えますが
//よろしいですか？
textEntryASCII0("If you don't save,\nyour work will be lost. \nAre you sure?")

seek(0x20C000)
//セーブをしないと
//作品が消えますが
//よろしいですか？
textEntryASCII0("If you don't save,\nyour work will be lost. \nAre you sure?")

seek(0x20C854)
//先に用紙を
//きりかえてください。
textEntryASCII0("Please switch \nthe paper first.")

seek(0x20CCBC)
textEntry(28, "Load Picture")		//Load / 2Dさくひんロード
textEntry(28, "Load Picture")		//Load / 2Dさくひんロード

seek(0x20DC70)
//作品が消えますが
//よろしいですか？
textEntryASCII0("Your work will be lost. \nAre you sure?")

seek(0x20E00C)
//Animate
//セーブをしないと
//作品が消えますが
//よろしいですか？
textEntryASCII0("If you don't save,\nyour work will be lost. \nAre you sure?")

seek(0x20E46C)
//電源を切ってから
//コントローラと
//６４ＧＢパックと
//ポケットカメラを
//さしてください。
textEntryASCII0("Power off and plug\na Controller, \nN64 Transfer Pak and\nGame Boy Camera.")

seek(0x20E634)
//ゲームボーイ
//カートリッジの
//コネクタ部が異常です。
//本体の電源を切り、
//６４ＧＢパックの
//取扱説明書を
//お読みください。
textEntryASCII0("Connection error. \nPower off and refer to\nthe N64 Transfer Pak\nInstruction Booklet.")

seek(0x20E7D4)
//作品が消えますが
//よろしいですか？
//(Can't fit, change pointer)

seek(0x20E7FC)
base 0x80275D14
ascii_worklost:
//作品が消えますが
//よろしいですか？
textEntryASCII0("Your work will be lost. \nAre you sure?")

seek(0x1D07E6)
dh (ascii_worklost)


seek(0x20EB48)
base 0x80276060
textEntry0("Press B Button to Scroll")		//Bボタンでヨウシスクロール
seek(0x20EC54)
textEntry0("Press B Button to Scroll")		//Bボタンでヨウシスクロール
seek(0x20EF50)
ascii_bbtn_scroll:
						//Bボタンでヨウシスクロール
seek(0x20EF70)
textEntry0("Press B Button to Scroll")		//Bボタンでヨウシスクロール
seek(0x20F148)
textEntry0("Press B Button to Scroll")		//Bボタンでヨウシスクロール

seek(0x1D8C4A)
dh (ascii_bbtn_scroll)


seek(0x20F6B0)
//80276BC8
//電源を切ってから
//キャプチャ－カセットを
//さしてください。
ascii_insertcappak:
textEntryASCII0("Please power off the\nNintendo 64 Control Deckand then insert the \nCapture Pak.")

seek(0x20F8F8)
//80276E10 - can't fit
//電源を切ってから
//キャプチャ－カセットを
//さしてください。
seek(0x1E324A)
dh (ascii_insertcappak)

seek(0x20F938)
//80276E50
//作品が消えますが
//よろしいですか？
textEntryASCII0("Your work will be lost. \nAre you sure?")

seek(0x20F978)
//80276E90
//電源を切ってから
//キャプチャ－カセットを
//さして下さい。
seek(0x1E3362)
dh (ascii_insertcappak)

seek(0x20F9B4)
//80276ECC
//作品が消えますが
//よろしいですか？
textEntryASCII0("Your work will be lost. \nAre you sure?")

seek(0x20FA28)
//80276F40
//電源を切ってから
//キャプチャ－カセットを
//さして下さい。
textEntryASCII0("Please power off the\nNintendo 64 Control Deckand then insert the \nCapture Pak.")

seek(0x20FB08)
//80277020
//先に用紙をきり
//かえて下さい。
textEntryASCII0("Please switch \nthe paper first.")

seek(0x20FB38)
//80277060
//映像を入力してください。
textEntryASCII0("Please plug the \nvideo cable.")

//How To Use Animation Mode (Shift-JIS) 0x20FFF0 //RAM 0x80277508
//Very unstable and prone to crashing
seek(0x20FFF0)
base 0x80277508
animation_howto0:
textEntryASCII0("")				//RAM 0x80277508 - 
animation_howto1:
textEntryASCII0("Select a")			//RAM 0x80277510 - を選ぼう
animation_howto2:
textEntryASCII0("Draw your frame.")		//RAM 0x80277520 - ペイント画面で絵をかこう
animation_howto3:
textEntryASCII0("Click on")			//RAM 0x80277540 - 絵ができたら
animation_howto4:
textEntryASCII0("to finish.")			//RAM 0x80277554 - で１コマ完成
animation_howto5:
textEntryASCII0(" ")				//RAM 0x80277568 - いくつかコマができたら
animation_howto6:
textEntryASCII0("Select")			//RAM 0x80277584 - コマの最後に
animation_howto7:
textEntryASCII0("to set a stop.")		//RAM 0x80277598 - をつけよう
animation_howto8:
textEntryASCII0("to watch!")			//RAM 0x802775A8 - でパラパラまんがをみよう！

//Pointers and Coordinates
seek(0x1E848E)
dh (animation_howto0)

seek(0x1E84DA)
dh (animation_howto1)
seek(0x1E84C2)
dh $007B

seek(0x1E8522)
dh (animation_howto2)
seek(0x1E850A)
dh $0074

seek(0x1E856A)
dh (animation_howto3)
seek(0x1E8552)
dh $006D

seek(0x1E85B2)
dh (animation_howto4)
seek(0x1E859A)
dh $00AD

seek(0x1E85FA)
dh (animation_howto5)
seek(0x1E85E2)
dh $0063

seek(0x1E8642)
dh (animation_howto6)
seek(0x1E862A)
dh $005E
seek(0x1E862E)
dh $009D

seek(0x1E868A)
dh (animation_howto7)
seek(0x1E8672)
dh $009E
seek(0x1E8676)
dh $009D

seek(0x1E86D2)
dh (animation_howto8)
seek(0x1E86BA)
dh $0097
seek(0x1E86BE)
dh $00BF

//Texture List and Positions at 0x80270C24
seek(0x20970C)
// X = X Pos; Y = Y Pos; T = Texture ID
// $0000  $XXXX  $YYYY  $TTTT  $0000  $0000
dh $0000, $0047, $001B, $0181, $0000, $0000 // Bold Text
dh $0000, $00A7, $002F, $0182, $0000, $0000 // Frame
dh $0000, $009A, $004B, $0183, $0000, $0000 // Down Arrow
dh $0000, $009A, $0069, $0183, $0000, $0000 // Down Arrow
dh $0000, $009A, $008C, $0183, $0000, $0000 // Down Arrow
dh $0000, $009A, $00B0, $0183, $0000, $0000 // Down Arrow
dh $0000, $0096, $0077, $0511, $0000, $0000 // Bomb Icon
dh $0000, $0083, $009B, $01A3, $0000, $0000 // Stop Icon
dh $0000, $007C, $00BD, $019E, $0000, $0000 // Play Icon

seek(0x2101F8)
textEntry0("Press B to cancel")		//Bボタンでキャンセル

seek(0x21024C)
//やりなおしは
//できません。
textEntryASCII0("Cannot undo.")
