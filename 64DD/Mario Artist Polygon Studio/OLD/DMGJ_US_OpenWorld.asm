//Mario Artist Polygon Studio
//Open World Mode

//Open World Pause Menu
putTextByte(0x717900, "Pause")
putTextByte(0x717940, "Check Abilities")
putTextByte(0x717980, "Turn/Move")
putTextByte(0x7179C0, "\dTilt")
putTextByte(0x717A00, "Front Look")
putTextByte(0x717A40, "Switch Power")
putTextByte(0x717A80, "Camera Setup")
putTextByte(0x717AC0, "Jump/Move")
putTextByte(0x717B00, "\dFly")
putTextByte(0x717B40, "\dSwim")

//Change Display List
seek(0x717898)
dw 0xF62A4238, 0x00170234
seek(0x7178A8)
dw 0xF627C284, 0x00210280
seek(0x7178B8)
dw 0xF62742D0, 0x001E02CC
dw 0xF625433C, 0x001B8338

//Open World Ability Check Menu
putTextByte(0x69D7DC, "\d")
putTextByte(0x69D7E0, "Easier handling on:")
putTextByte(0x69D7FC, "Thorn") //RAM 80514DBC - GFX RAM 8058F180
putTextByte(0x69D81C, "Sand")   //RAM 80514DDC - GFX RAM 8058F410
putTextByte(0x69D83C, "Snow")   //RAM 80514DFC - GFX RAM 8058F6A0
putTextByte(0x69D85C, "Sticks to walls")
putTextByte(0x69D87C, "Swim")
putTextByte(0x69D89C, "Fly")
putTextByte(0x69D8BC, "Afloat")
putTextByte(0x69D8DC, "Glide")
putTextByte(0x69D8FC, "Float")
putTextByte(0x69D91C, "Grip")

seek(0x69D78C)
//GFX X positions
dw 0xEF //Thorns Icon
dw 0x93 //Sand Icon
dw 0xC0 //Snow Icon

seek(0x69D93C)
//Text X positions
dw 0x0102 //Thorns
dw 0xA6 //Sand
dw 0xD3 //Snow

//Open World Camera Modes
putTextByte(0x69AB60, "Camera:")
putTextByte(0x69AB6C, "Normal")
putTextByte(0x69AB80, "Away")
putTextByte(0x69AB94, "Above")
putTextByte(0x69ABA8, "Fixed")
putTextByte(0x69ABBC, "Side")
putTextByte(0x69ABD0, "Behind")
putTextByte(0x69ABE4, "Model")

seek(0x67EB1A)
//Move X position of "Camera:"
dh 0x0074

//Open World 1
//Limited chars before it crashes
//ブロックが1つも使われていません
putTextASCII(0x691190, "There are no blocks.")
//このブロックの組み合わせではすすめません
putTextASCII(0x6911C0, "This combination may not work.")
//このブロックの配置ではすすまない事があります
putTextASCII(0x6911F0, "This combination may not work.")

//ごちゅうい
putTextASCII(0x69E2D0, "WARNING")
//ごちゅうい
putTextASCII(0x69E2DC, "WARNING")

//A block has been damaged! RAM 80515A40 - NDD 0x69E480
//One of the blocks RAM 80515A6C
//has been destroyed RAM 80515A7C
//<CENTER><FONT SIZE=+1><FONT COLOR=#FFCF9F>
putTextASCII(0x69E480, "<CENTER><FONT COLOR=#FFCF9F>")
seek(0x66AAFA)
  dh ((open1_oneblock >> 16) + 1)
seek(0x66AAFE)
  dh open1_oneblock
seek(0x66AB0A)
  dh ((open1_destroyed >> 16) + 1)
seek(0x66AB0E)
  dh open1_destroyed

//OPEN WORLD 2 RAM 805162F0 - NDD 0x69ED30
seek(0x69ED30)
base 0x805162F0
open2_itemfound1: //805162F0
//<CENTER><FONT COLOR=#DC9600>
  putTextASCIInoSeek("<CENTER>You got <FONT COLOR=#DC9600>")
open2_itemfound2: //80516310
//</FONT>を見つけた！<BR>
  putTextASCIInoSeek("</FONT> !<BR>")
open2_newline: //80516328
//<BR>
  putTextASCIInoSeek("<BR>")
open2_endcenter1: //80516330
//</CENTER>
open2_endcenter2: //8051633C
//</CENTER>
  putTextASCIInoSeek("</CENTER>")
open2_breadnote: //80516348
//食パンに角張った字が書いてある！<BR>… … …
  putTextASCIInoSeek("A note is written on this bread!<BR>...")
open2_ground: //80516378
//"<FONT COLOR=#4F9FDC>コノ チジョウ ニハ<BR>
  putTextASCIInoSeek("<FONT COLOR=#4F9FDC>On this land,<BR>")
open2_air: //805163A4
//"<FONT COLOR=#4F9FDC>コノ クウチュウ ニハ<BR>
  putTextASCIInoSeek("<FONT COLOR=#4F9FDC>In the skies,<BR>")
open2_after: //805163D4
//アト <FONT COLOR=#DC4F00>
  putTextASCIInoSeek("there are <FONT COLOR=#DC4F00>")
open2_decimal: //805163F0
//%d
  putTextASCIInoSeek("%d")
open2_thisblockis: //805163F4
//コ</FONT>ノ ブロックガ<BR>アリマス</FONT>"
  putTextASCIInoSeek("</FONT> blocks left.</FONT>")
open2_noblockanymore: //80516420
//ブロックハ モウアリマセン。</FONT>"
  putTextASCIInoSeek("there are no blocks<BR>to be found anymore.</FONT>")

seek(0x684A12)
  dh (open2_itemfound1)
seek(0x684A42)
  dh (open2_itemfound2)
seek(0x684A7A)
  dh (open2_newline)
seek(0x684AA2)
  dh (open2_endcenter1)
seek(0x684AB2)
  dh (open2_endcenter2)
seek(0x684B0E)
  dh (open2_breadnote)
seek(0x684B2E)
  dh (open2_ground)
seek(0x684B4E)
  dh (open2_air)
seek(0x684B6A)
  dh (open2_after)
seek(0x684B7A)
  dh (open2_decimal)
seek(0x684B9A)
  dh (open2_thisblockis)
seek(0x684BB2)
  dh (open2_noblockanymore)

//OPEN WORLD 3 Menu - RAM 80516510 - NDD 0x69EF50
seek(0x69EF50)
base 0x80516510
open3_nopowerblock: //80516510
// <BR><CENTER><FONT COLOR=#DC6464>どうりょくブロックはありません</FONT></CENTER>
  putTextASCIInoSeek(" <BR><CENTER><FONT COLOR=#DC6464>There is no power block.</FONT></CENTER>")
open3_powerblock: //80516560
// <BR><CENTER>★<FONT COLOR=#DC9600>どうりょくブロックのヒミツ</FONT>★</CENTER>
  putTextASCIInoSeeknoEnd(" <BR><CENTER>")
  dh 0x819A //Star
  putTextASCIInoSeeknoEnd("<FONT COLOR=#DC9600> Secrets of Power Blocks </FONT>")
  dh 0x819A //Star
  putTextASCIInoSeek("</CENTER>")
//No need to change the others this is small enough

seek(0x68C9B2)
  dh (open3_nopowerblock)
seek(0x68C9DA)
  dh (open3_powerblock)

//OPEN WORLD 4 - Item List? - RAM 80516670 - NDD 0x69F0B0
seek(0x69F0B0)
base 0x80516670
//Power Blocks
open4_001:
//エラー
  putTextASCIInoSeek("Error")
open4_002:
//うきわ
  putTextASCIInoSeek("Lifesaver")
open4_003:
//せんたい
  putTextASCIInoSeek("Ship")
open4_004:
//ひこうせん
  putTextASCIInoSeek("Airship")
open4_005:
//てづくりのハネ
  putTextASCIInoSeek("Handmade Wing")
open4_006:
//ひこうきのハネ
  putTextASCIInoSeek("Airplane Wing")
open4_007:
//ロボットのハネ
  putTextASCIInoSeek("Robot Wing")
open4_008:
//せいぎょそうち
  putTextASCIInoSeek("Controller")
open4_009:
//だんせいのあし
  putTextASCIInoSeek("Male Feet")
open4_010:
//じょせいのあし
  putTextASCIInoSeek("Female Feet")
open4_011:
//ロボットのあし
  putTextASCIInoSeek("Robot Feet")
open4_012:
//ゾウのあし
  putTextASCIInoSeek("Elephant Feet")
open4_013:
//イヌのあし
  putTextASCIInoSeek("Dog Feet")
open4_014:
//カメのあし
  putTextASCIInoSeek("Turtle Feet")
open4_015:
//エラー２７
  putTextASCIInoSeek("Error 27")
open4_016:
//じてんしゃのタイヤ
  putTextASCIInoSeek("Bicycle Wheel")
open4_017:
//おもちゃのタイヤ
  putTextASCIInoSeek("Toy Wheel")
open4_018:
//しゃりん
  putTextASCIInoSeek("Wheel")
open4_019:
//こうそくタイヤ
  putTextASCIInoSeek("Speed Wheel")
open4_020:
//アヒルのあし
  putTextASCIInoSeek("Duck Feet")
open4_021:
//カエルのあし
  putTextASCIInoSeek("Frog Feet")
open4_022:
//すいしゃ
  putTextASCIInoSeek("Water Mill")
open4_023:
//メタルベルト
  putTextASCIInoSeek("Metal Belt")
open4_024:
//エラー４２
  putTextASCIInoSeek("Error 42")
open4_025:
//キョウリュウのあし
  putTextASCIInoSeek("Dino Feet")
open4_026:
//トリのあし
  putTextASCIInoSeek("Bird Feet")
open4_027:
//エラー４５
  putTextASCIInoSeek("Error 45")
open4_028:
//ムシのあし
  putTextASCIInoSeek("Ant Feet")
open4_029:
//エビのあし
  putTextASCIInoSeek("Shrimp Feet")
open4_030:
//オタマジャクシのしっぽ
  putTextASCIInoSeek("Tadpole Tail")
open4_031:
//ウミガメのあし
  putTextASCIInoSeek("Sea Turtle Foot")
open4_032:
//サカナのおびれ
  putTextASCIInoSeek("Tail Fin")
open4_033:
//サカナのむなびれ
  putTextASCIInoSeek("Pectoral Fin")
open4_034:
//スクリュー
  putTextASCIInoSeek("Water Propeller")
open4_035:
//こうそくスクリュー
  putTextASCIInoSeek("Speed Water Propeller")
open4_036:
//エラー５７
  putTextASCIInoSeek("Error 57")
open4_037:
//チョウのハネ
  putTextASCIInoSeek("Butterfly Wing")
open4_038:
//トンボのハネ
  putTextASCIInoSeek("Dragonfly Wing")
open4_039:
//トリのハネ
  putTextASCIInoSeek("Bird Wing")
open4_040:
//キョウリュウのハネ
  putTextASCIInoSeek("Dino Wing")
open4_041:
//エラー６５
  putTextASCIInoSeek("Error 65")
open4_042:
//エラー６６
  putTextASCIInoSeek("Error 66")
open4_043:
//エラー６７
  putTextASCIInoSeek("Error 67")
open4_044:
//プロペラ
  putTextASCIInoSeek("Propeller")
open4_045:
//こうそくプロペラ
  putTextASCIInoSeek("Speed Propeller")
open4_046:
//ジェット
  putTextASCIInoSeek("Jet")
open4_047:
//スーパージェット
  putTextASCIInoSeek("Super Jet")
open4_048:
//パワーエンジン
  putTextASCIInoSeek("Power Engine")
open4_049:
//スピードエンジン
  putTextASCIInoSeek("Speed Engine")
open4_050:
//パワースター
  putTextASCIInoSeek("Power Star")

//? Blocks RAM 80516958
open4_051:
//バイクパーツ１
  putTextASCIInoSeek("Bike Part 1")
open4_052:
//バイクパーツ２
  putTextASCIInoSeek("Bike Part 2")
open4_053:
//バイクパーツ３
  putTextASCIInoSeek("Bike Part 3")
open4_054:
//バイクパーツ４
  putTextASCIInoSeek("Bike Part 4")
open4_055:
//バイクパーツ５
  putTextASCIInoSeek("Bike Part 5")
open4_056:
//バイクパーツ６
  putTextASCIInoSeek("Bike Part 6")
open4_057:
//バイクパーツ７
  putTextASCIInoSeek("Bike Part 7")
open4_058:
//バンザーイ
  putTextASCIInoSeek("Hurray")
open4_059:
//シャトル
  putTextASCIInoSeek("Shuttle")
open4_060:
//ウニ
  putTextASCIInoSeek("Sea Urchin")
open4_061:
//アンモナイト
  putTextASCIInoSeek("Ammonite")
open4_062:
//イチゴ
  putTextASCIInoSeek("Strawberry")
open4_063:
//ハーブ
  putTextASCIInoSeek("Herb")
open4_064:
//うでたて
  putTextASCIInoSeek("Pushups")
open4_065:
//クリスタル１
  putTextASCIInoSeek("Crystal 1")
open4_066:
//クリスタル２
  putTextASCIInoSeek("Crystal 2")
open4_067:
//クリスタル３
  putTextASCIInoSeek("Crystal 3")
open4_068:
//クリスタル４
  putTextASCIInoSeek("Crystal 4")
open4_069:
//クリスタル５
  putTextASCIInoSeek("Crystal 5")
open4_070:
//クリスタル６
  putTextASCIInoSeek("Crystal 6")
open4_071:
//クリスタル７
  putTextASCIInoSeek("Crystal 7")
open4_072:
//あわ
  putTextASCIInoSeek("Bubbles")
open4_073:
//プラズマ
  putTextASCIInoSeek("Plasma")
open4_074:
//ばくはつ
  putTextASCIInoSeek("Explosion")
open4_075:
//ピカピカ
  putTextASCIInoSeek("Shining")
open4_076:
//けむり
  putTextASCIInoSeek("Smoke")
open4_077:
//ほのお
  putTextASCIInoSeek("Flame")
open4_078:
//チカチカ
  putTextASCIInoSeek("Twinkling")

//Descriptions - RAM 80516ACC
//Power Blocks
open4desc_001:
//こりゃダメです
  putTextASCIInoSeek("This is useless.")
open4desc_002:
//水に浮きます
open4desc_003:
//水に浮きます
  putTextASCIInoSeek("It floats on water.")
open4desc_004:
//どこでも浮きます
  putTextASCIInoSeek("It floats anywhere.")
open4desc_005:
//かっくうや飛行に使います
open4desc_006:
//かっくうや飛行に使います
open4desc_007:
//かっくうや飛行に使います
  putTextASCIInoSeek("Use it for flight and gliding.")
open4desc_008:
//向いた方に進むようになります
  putTextASCIInoSeek("You can move to any direction.")
open4desc_009:
//速く歩けます
open4desc_013:
//速く歩けます
open4desc_026:
//速く歩けます
  putTextASCIInoSeek("You can walk faster.")
open4desc_010:
//ラブリーに歩けます
  putTextASCIInoSeek("You can walk like a lovely person.")
open4desc_011:
//とても速く歩けます
open4desc_012:
//とても速く歩けます
  putTextASCIInoSeek("You can walk very fast.")
open4desc_014:
//歩けます
  putTextASCIInoSeek("You can walk.")
open4desc_015:
//エラー２７
  putTextASCIInoSeek("Error 27")
open4desc_016:
//走れます
  putTextASCIInoSeek("You can drive.")
open4desc_017:
//速く走れます
  putTextASCIInoSeek("You can drive faster.")
open4desc_018:
//高速で走れます
  putTextASCIInoSeek("You can drive very fast.")
open4desc_019:
//超高速で走れます
  putTextASCIInoSeek("You can drive at high speeds.")
open4desc_020:
//地上と水上を歩けます
  putTextASCIInoSeek("You can walk on land & on water.")
open4desc_021:
//歩いたり泳いだり、はねたりします
  putTextASCIInoSeek("Walk, Swim, and Splash!")
open4desc_022:
//地上と水上を走れます
  putTextASCIInoSeek("Travel on land and on water.")
open4desc_023:
//坂や悪路を走れます
  putTextASCIInoSeek("Travel uphill and bad roads.")
open4desc_024:
//エラー４２
  putTextASCIInoSeek("Error 42")
open4desc_025:
//坂を登れます
  putTextASCIInoSeek("You can climb hills.")
open4desc_027:
//エラー４５
  putTextASCIInoSeek("Error 45")
open4desc_028:
//カベにはりついて歩けます
open4desc_029:
//カベにはりついて歩けます
  putTextASCIInoSeek("You can walk on walls.")
open4desc_030:
//泳げます
open4desc_032:
//泳げます
open4desc_033:
//泳げます
  putTextASCIInoSeek("You can swim.")
open4desc_031:
//歩いたり泳いだりします
  putTextASCIInoSeek("You can walk and swim.")
open4desc_034:
//水中を進みます
  putTextASCIInoSeek("You can swim underwater.")
open4desc_035:
//速く水中を進みます
  putTextASCIInoSeek("You can swim faster underwater.")
open4desc_036:
//エラー５７
  putTextASCIInoSeek("Error 57")
open4desc_037:
//空が飛べます
open4desc_038:
//空が飛べます
open4desc_039:
//空が飛べます
open4desc_040:
//空が飛べます
  putTextASCIInoSeek("You can fly into the sky.")
open4desc_041:
//エラー６５
  putTextASCIInoSeek("Error 65")
open4desc_042:
//エラー６６
  putTextASCIInoSeek("Error 66")
open4desc_043:
//エラー６７
  putTextASCIInoSeek("Error 67")
open4desc_044:
//速く飛べます
  putTextASCIInoSeek("You can fly faster.")
open4desc_045:
//とても速く飛べます
  putTextASCIInoSeek("You can fly very fast.")
open4desc_046:
//超高速で飛べます
  putTextASCIInoSeek("You can fly at high speeds.")
open4desc_047:
//超超高速で飛べます
  putTextASCIInoSeek("You can fly at ultra speeds.")
open4desc_048:
//機械の坂登りパワーが最高になります
  putTextASCIInoSeek("You can power up the machine.")
open4desc_049:
//機械の速度が最高になります
  putTextASCIInoSeek("You can speed up the machine.")
open4desc_050:
//全ての性能が最高になります
  putTextASCIInoSeek("Push everything to its limits!")

//No descriptions for ? Blocks
open4desc_051:
open4desc_052:
open4desc_053:
open4desc_054:
open4desc_055:
open4desc_056:
open4desc_057:
open4desc_058:
open4desc_059:
open4desc_060:
open4desc_061:
open4desc_062:
open4desc_063:
open4desc_064:
open4desc_065:
open4desc_066:
open4desc_067:
open4desc_068:
open4desc_069:
open4desc_070:
open4desc_071:
open4desc_072:
open4desc_073:
open4desc_074:
open4desc_075:
open4desc_076:
open4desc_077:
open4desc_078:
  putTextASCIInoSeek(" ")

//Pause Descriptions RAM 80516EF8
//Power Blocks
open4pdesc_001:
//無
  putTextASCIInoSeek("Nothing.")
open4pdesc_002:
//海水浴の友
  putTextASCIInoSeek("The best friend for bathing.")
open4pdesc_003:
//鉄なのに浮くのは不思議ですね
  putTextASCIInoSeek("A miracle that it floats.")
open4pdesc_004:
//天空の果てを目指せ！
  putTextASCIInoSeek("Reach for the stars!")
open4pdesc_005:
//…タレスタで見たことある…？
  putTextASCIInoSeek("...Have you seen a talent with this?")
open4pdesc_006:
//空への招待券
  putTextASCIInoSeek("An invitation to the sky.")
open4pdesc_007:
//21世紀の科学の結晶
  putTextASCIInoSeek("The science of the 21st century.")
open4pdesc_008:
//すべるところでべんりです
  putTextASCIInoSeek("Useful in slippery places.")
open4pdesc_009:
//ズボンの下にはびっしりスネ毛
  putTextASCIInoSeek("There's hair under the pants.")
open4pdesc_010:
//マニアなら押さえておきたい一品
open4pdesc_011:
//マニアなら押さえておきたい一品
  putTextASCIInoSeek("You'd want to keep this.")
open4pdesc_012:
//ゾウのわりには小さいですね
  putTextASCIInoSeek("It is rather small for the elephant.")
open4pdesc_013:
//たぶん忠実です
  putTextASCIInoSeek("This is probably faithful.")
open4pdesc_014:
//遅そうですけど
  putTextASCIInoSeek("It is rather slow.")
open4pdesc_015:
//エラー２７
  putTextASCIInoSeek("Error 27")
open4pdesc_016:
//自転車のようなおもむき
  putTextASCIInoSeek("It has a nice bicycle feel.")
open4pdesc_017:
//オーソドックスなスタイル
  putTextASCIInoSeek("This is pretty orthodox.")
open4pdesc_018:
//サウンドが力強いです
  putTextASCIInoSeek("The sound is powerful.")
open4pdesc_019:
//地上最速です
  putTextASCIInoSeek("The fastest wheels on land.")
open4pdesc_020:
//TPOに合わせて使い分けましょう
  putTextASCIInoSeek("Use it at the right place.")
open4pdesc_021:
//ジャンプ大好き、止まらない
  putTextASCIInoSeek("Can't stop jumping!")
open4pdesc_022:
//水陸両用、アウトドア向け
  putTextASCIInoSeek("Multi-purpose for outdoor use.")
open4pdesc_023:
//鋼鉄のミリョクがつまっています
  putTextASCIInoSeek("This steel cannot be matched.")
open4pdesc_024:
//エラー４２
  putTextASCIInoSeek("Error 42")
open4pdesc_025:
//白身のような味わい
  putTextASCIInoSeek("It tastes like meat.")
open4pdesc_026:
//カラアゲにすると美味
  putTextASCIInoSeek("Deep-fried, it's delicious!")
open4pdesc_027:
//エラー４５
  putTextASCIInoSeek("Error 45")
open4pdesc_028:
//気持ち悪いけどおいしいらしい
  putTextASCIInoSeek("...it kind of looks tasty.")
open4pdesc_029:
//ちょっと固くて食べにくい
  putTextASCIInoSeek("It is a bit tough to eat.")
open4pdesc_030:
//はかない子ども時代のシンボル
  putTextASCIInoSeek("The symbol of childhood.")
open4pdesc_031:
//飛びそうで飛ばないじれったい一品
  putTextASCIInoSeek("It's vexing that it cannot fly.")
open4pdesc_032:
//あげて食べるとカルシウムたっぷり
open4pdesc_033:
//あげて食べるとカルシウムたっぷり
  putTextASCIInoSeek("It's full of calcium.")
open4pdesc_034:
//水中での定番
  putTextASCIInoSeek("A classic to use underwater.")
open4pdesc_035:
//水中での大定番
  putTextASCIInoSeek("A bigger classic to use underwater.")
open4pdesc_036:
//エラー５７
  putTextASCIInoSeek("Error 57")
open4pdesc_037:
//メルヘンチックな空の旅に
  putTextASCIInoSeek("Fly like in a fairy tale.")
open4pdesc_038:
//赤く塗れば赤トンボ？
  putTextASCIInoSeek("Paint it red, like a red dragonfly?")
open4pdesc_039:
//空の定番アイテム
  putTextASCIInoSeek("The classic of the sky.")
open4pdesc_040:
//モンスターな感じ
  putTextASCIInoSeek("Feels like a monster.")
open4pdesc_041:
//エラー６５
  putTextASCIInoSeek("Error 65")
open4pdesc_042:
//エラー６６
  putTextASCIInoSeek("Error 66")
open4pdesc_043:
//エラー６７
  putTextASCIInoSeek("Error 67")
open4pdesc_044:
//空からの景色を楽しもう
  putTextASCIInoSeek("Enjoy the view from the sky.")
open4pdesc_045:
//大空からの景色を楽しもう
  putTextASCIInoSeek("Enjoy the larger view from the sky.")
open4pdesc_046:
//プロペラとの差は歴然！
  putTextASCIInoSeek("This makes the difference!")
open4pdesc_047:
//宇宙最速！世界の彼方を目指せ！
  putTextASCIInoSeek("The fastest! Go beyond this world!")
open4pdesc_048:
//だけど生き物には効きません
open4pdesc_049:
//だけど生き物には効きません
  putTextASCIInoSeek("It does not work for living things.")
open4pdesc_050:
//どんなモデルも最強最高に！
  putTextASCIInoSeek("Any model are now the strongest!")

//? Blocks
open4pdesc_051:
//スポークです
  putTextASCIInoSeek("It's a spoke.")
open4pdesc_052:
//フレームです
  putTextASCIInoSeek("It's a frame.")
open4pdesc_053:
//ライトです
  putTextASCIInoSeek("It's a light.")
open4pdesc_054:
//タンクです
  putTextASCIInoSeek("It's a tank.")
open4pdesc_055:
//マフラーです
  putTextASCIInoSeek("It's a muffler.")
open4pdesc_056:
//ギアボックスです
  putTextASCIInoSeek("It's a gearbox.")
open4pdesc_057:
//シートです
  putTextASCIInoSeek("It's a seat.")
open4pdesc_058:
//よろこんでるみたいです
  putTextASCIInoSeek("He seems happy.")
open4pdesc_059:
//わりとナイスな飛行機です
  putTextASCIInoSeek("A relatively good airplane.")
open4pdesc_060:
//痛そうですね
  putTextASCIInoSeek("It looks painful.")
open4pdesc_061:
//古代のロマン
  putTextASCIInoSeek("Ancient romance.")
open4pdesc_062:
//よく熟してます
  putTextASCIInoSeek("Craving for it.")
open4pdesc_063:
//ハーブの香りが疲れをいやす…かも
  putTextASCIInoSeek("The smell may cure fatigue.")
open4pdesc_064:
//がんばってるみたいです
  putTextASCIInoSeek("He is doing his best.")
open4pdesc_065:
//謎の球体
  putTextASCIInoSeek("A mysterious sphere.")
open4pdesc_066:
//だがし屋にありそう
  putTextASCIInoSeek("You can find it in a candy shop.")
open4pdesc_067:
//底のないキューブ
  putTextASCIInoSeek("Cube without a bottom.")
open4pdesc_068:
//永遠のかがやき
  putTextASCIInoSeek("Eternally shining.")
open4pdesc_069:
//神秘のエンスイ
  putTextASCIInoSeek("A mysterious cone.")
open4pdesc_070:
//秘密のチューブ
  putTextASCIInoSeek("The secret of the tube.")
open4pdesc_071:
//水面のゆらめき
  putTextASCIInoSeek("The surface of the water.")
open4pdesc_072:
//ぶくぶくぶくっ
  putTextASCIInoSeek("It's boiling.")
open4pdesc_073:
//びびびびびびっ
  putTextASCIInoSeek("It's buzzing.")
open4pdesc_074:
//ばばばばばばっ
  putTextASCIInoSeek("Ka-boom!")
open4pdesc_075:
//ぴかぴかぴかっ
  putTextASCIInoSeek("It's shiny.")
open4pdesc_076:
//もくもくもくっ
  putTextASCIInoSeek("It's smoky.")
open4pdesc_077:
//めらめらめらっ
  putTextASCIInoSeek("It's crackling.")
open4pdesc_078:
//ちかちかちかっ
  putTextASCIInoSeek("It's twinkling.")

//Easter Eggs - RAM 80517580
open4easteregg_001:
//痛い
open4easteregg_002:
//痛い
open4easteregg_003:
//痛い
open4easteregg_004:
//痛い
open4easteregg_005:
//痛い
  putTextSJISnoSeek("Ouch")
open4easteregg_006:
//痛いよ兄さん
  putTextSJISnoSeek("It hurts")
open4easteregg_007:
//ひどいよ兄さん
  putTextSJISnoSeek("It is awful")
open4easteregg_008:
//何するんだよ兄さん
  putTextSJISnoSeek("What will you do?")
open4easteregg_009:
//やめてよ姉さん
  putTextSJISnoSeek("Stop it")
open4easteregg_010:
//さわんないでよ姉さん
  putTextSJISnoSeek("Do not panic")
open4easteregg_011:
//あぁん
  putTextSJISnoSeek("Oh")
open4easteregg_012:
//いったあい
  putTextSJISnoSeek("Love")
open4easteregg_013:
//いやぁん
  putTextSJISnoSeek("Ahh")
open4easteregg_014:
//フンガ｜
  putTextSJISnoSeek("Hunger")
open4easteregg_015:
//ゴゴゴゴ
  putTextSJISnoSeek("Whirr")
open4easteregg_016:
//ぶら｜ん
  putTextSJISnoSeek("Dang")
open4easteregg_017:
//しっぽく
  putTextSJISnoSeek("Shoo")
open4easteregg_018:
//オコジョ
  putTextSJISnoSeek("Ermine")
open4easteregg_019:
//目玉焼き
  putTextSJISnoSeek("Fried")
open4easteregg_020:
//チクワ
  putTextSJISnoSeek("Fish")
open4easteregg_021:
//うふふっ♪
  putTextSJISnoSeek("Hehehe")
open4easteregg_022:
//あははっ！妖精さん！
  putTextSJISnoSeek("Haha!Fairies!")
open4easteregg_023:
//白馬の王子様は今どこに？
  putTextSJISnoSeek("Where is the prince charming?")
open4easteregg_024:
//うふふふふふふふふふふふふふふっ
  putTextSJISnoSeek("Hehehehehehehehe")
open4easteregg_025:
//むにゃむにゃケ｜キもう食べれない
  putTextSJISnoSeek("Eating the cake")
open4easteregg_026:
//痛いじゃないですか
  putTextSJISnoSeek("Does it hurt?")
open4easteregg_027:
//やめてください
  putTextSJISnoSeek("Please stop")
open4easteregg_028:
//訴えますよ
  putTextSJISnoSeek("Appealing")
open4easteregg_029:
//痛ぇンだよコラァ！
  putTextSJISnoSeek("Hey it hurts!")
open4easteregg_030:
//どこ見て歩いてやがる！
  putTextSJISnoSeek("Walking around")
open4easteregg_031:
//骨折り損のくたびれもうけ
  putTextSJISnoSeek("You are wasting your time")
open4easteregg_032:
//泣きっ面にハチ
  putTextSJISnoSeek("Crying")
open4easteregg_033:
//犬も歩けば棒に当たる
  putTextSJISnoSeek("You will not be so lucky")
open4easteregg_034:
//うしろのしょうめんだあれ
  putTextSJISnoSeek("Behind the scenes")
open4easteregg_035:
//欲しがりませんタスマニア
  putTextSJISnoSeek("Do not want Tasmania")
open4easteregg_036:
//よだれ
  putTextSJISnoSeek("Drool")
open4easteregg_037:
//わきげ
  putTextSJISnoSeek("Careless")
open4easteregg_038:
//ねあせ
  putTextSJISnoSeek("Night Sweat")
open4easteregg_039:
//くびれ
  putTextSJISnoSeek("Narrow")
open4easteregg_040:
//うなじ
  putTextSJISnoSeek("Sea Route")
open4easteregg_041:
//ボンジュ｜ルマドモワゼル
  putTextSJISnoSeek("Bonjour Mademoiselle")
open4easteregg_042:
//ケスクセ？
  putTextSJISnoSeek("Erase")
open4easteregg_043:
//アビアント｜
  putTextSJISnoSeek("Ambient")
open4easteregg_044:
//ボンソワ｜ルムッシュウ
  putTextSJISnoSeek("Bonjour Monsieur")
open4easteregg_045:
//ジュテ｜ムモワオシ
  putTextSJISnoSeek("Je t'aime moi|aussi")

//Toasters RAM 80517860
open4toast01_1:
//食パンになにか書いてある！<BR>… … …
open4toast02_1:
//食パンになにか書いてある！<BR>… … …
open4toast03_1:
//食パンになにか書いてある！<BR>… … …
open4toast04_1:
//食パンになにか書いてある！<BR>… … …
open4toast05_1:
//食パンになにか書いてある！<BR>… … …
open4toast06_1:
//食パンになにか書いてある！<BR>… … …
open4toast07_1:
//食パンになにか書いてある！<BR>… … …
open4toast08_1:
//食パンになにか書いてある！<BR>… … …
open4toast09_1:
//食パンになにか書いてある！<BR>… … …
open4toast10_1:
//食パンになにか書いてある！<BR>… … …
open4toast11_1:
//食パンになにか書いてある！<BR>… … …
open4toast12_1:
//食パンになにか書いてある！<BR>… … …
open4toast13_1:
//食パンになにか書いてある！<BR>… … …
open4toast14_1:
//食パンになにか書いてある！<BR>… … …
open4toast15_1:
//食パンになにか書いてある！<BR>… … …
open4toast16_1:
//食パンになにか書いてある！<BR>… … …
open4toast17_1:
//食パンになにか書いてある！<BR>… … …
open4toast18_1:
//食パンになにか書いてある！<BR>… … …
open4toast19_1:
//食パンになにか書いてある！<BR>… … …
open4toast20_1:
//食パンになにか書いてある！<BR>… … …
open4toast21_1:
//食パンになにか書いてある！<BR>… … …
open4toast22_1:
//食パンになにか書いてある！<BR>… … …
open4toast23_1:
//食パンになにか書いてある！<BR>… … …
open4toast24_1:
//食パンになにか書いてある！<BR>… … …
open4toast25_1:
//食パンになにか書いてある！<BR>… … …
open4toast26_1:
//食パンになにか書いてある！<BR>… … …
  putTextASCIInoSeek("Something is written on this bread!<BR>...")
open4toast01_2:
//"<FONT COLOR=#DC9F4F>どうも、食パン屋です。<BR>よろしく</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Greetings, this is the bakery.<BR>Nice to meet you.</FONT>")
open4toast01_3:
//"<FONT COLOR=#DC9F4F>「じっけんワールド」のあちこちに<BR>トースターを置き続けて50年、<BR>シンライとジッセキの食パンです</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>For 50 years, we have been<BR>placing these toasters in this world.<BR>We bake the bread you can trust.</FONT>")
open4toast01_4:
//"<FONT COLOR=#DC9F4F>どの食パンにも<BR>店主が愛情こめてテツヤで考えた<BR>最高の<FONT COLOR=#DC4F00><FONT SIZE=4>ヒント</FONT></FONT>が書かれています</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>I have put my mind and<BR>love into making bread.<BR>The best <FONT COLOR=#DC4F00>hints</FONT> have been written.</FONT>")
open4toast01_5:
//"<FONT COLOR=#DC9F4F>何しろ愛情でテツヤで最高ですので、<BR>道中お見つけになられましたら<BR>ぜひお立ちよりの上ごらん下さい</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>If you happen to see us,<BR>please come in and<BR>take a look.</FONT>")
open4toast01_6:
//"<FONT COLOR=#DC9F4F>もちろん、当店の食パンは<BR>すべて無添加無漂白ですので<BR>奥様も大安心です</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Of course, all of our breads are<BR>additive-free and the crumbs<BR>are soft.</FONT>")

open4toast02_2:
//"<FONT COLOR=#DC9F4F>なぜかモデルがまっすぐ走らない…<BR>そんな経験、ありませんか？</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Sometimes the model does<BR>not travel straight...<BR>Ever had that happen to you?</FONT>")
open4toast02_3:
//"<FONT COLOR=#DC9F4F>なんと「じっけんワールド」では、<BR><FONT COLOR=#DC4F00><FONT SIZE=4>左右対称</FONT></FONT>にブロックを組むと、<BR>モデルが安定するのです</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>In this world, if you build<BR>the blocks <FONT COLOR=#DC4F00><FONT SIZE=4>symmetrically</FONT></FONT>,<BR>the model will stabilize.</FONT>")
open4toast02_4:
//"<FONT COLOR=#DC9F4F>理由？　　　　　　<BR>そんなの知りません。<BR>大宇宙の法則とでも言いましょうか…</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Why?<BR>I don't know. Perhaps it is just<BR>the laws of the universe.</FONT>")
open4toast02_5:
//"<FONT COLOR=#DC9F4F>ここだけの話、<BR><FONT COLOR=#DC4F00><FONT SIZE=4>はんてんコピー</FONT></FONT>を使えば<BR>わりと対称にしやすいらしいです</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Just between you and me, using<BR><FONT COLOR=#DC4F00><FONT SIZE=4>Mirror Copy</FONT></FONT> may be the easy<BR>way to build symmetrical models.</FONT>")
open4toast02_6:
//"<FONT COLOR=#DC9F4F><FONT COLOR=#DC4F00><FONT SIZE=4>はんてんコピー</FONT></FONT>なら<BR>どうりょくきりかえもカッコよく<BR>なりますし、オススメです</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F><FONT COLOR=#DC4F00><FONT SIZE=4>Mirror Copy</FONT></FONT> would be more<BR>effective for power blocks as well.</FONT>")

open4toast03_2:
//"<FONT COLOR=#DC9F4F>なぜかモデルが速く走らない…<BR>そんななやみ、ありませんか？</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Sometimes the model is just<BR>not fast enough...<BR>That can be bothersome.</FONT>")
open4toast03_3:
//"<FONT COLOR=#DC9F4F>なんと「じっけんワールド」では、<BR>地面近くにあるブロックが<BR><FONT COLOR=#DC4F00>こすれて遅くなる</FONT>事があるのです</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>In this world, blocks that<BR>are near the ground may<BR><FONT COLOR=#DC4F00>get rubbed and slow down</FONT>.</FONT>")
open4toast03_4:
//"<FONT COLOR=#DC9F4F>地面についていないように見えても<BR>実は重みで沈んでこすれている！<BR>そんな<FONT COLOR=#DC4F00>サギのような</FONT>話があります</FONT>"</FONT>
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>It may seem like it doesn't<BR>touch the ground, but its<BR><FONT COLOR=#DC4F00>weight may sink it down</FONT>.</FONT>")
open4toast03_5:
//"<FONT COLOR=#DC9F4F>もちろんわたくしどもは断固として<BR>そのような不条理と戦って行きたい<BR>ところですが</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Of course, you would want to<BR>get rid of that problem.</FONT>")
open4toast03_6:
//"<FONT COLOR=#DC9F4F>そのような事は大変かったりいので<BR><FONT COLOR=#DC4F00>どうりょくブロックを下の方につける</FONT><BR>などしていただけないでしょうか？</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Such things are heavy,<BR>could you <FONT COLOR=#DC4F00>attach a power block<BR>at the bottom of it</FONT>?</FONT>")
open4toast03_7:
//"<FONT COLOR=#DC9F4F>要は<FONT COLOR=#DC4F00>どうりょくじゃないブロックが<BR>地面から浮けばいい</FONT>んだし…</FONT>"</FONT>
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>The point is, anything that's<BR><FONT COLOR=#DC4F00>not a power block</FONT> should<BR>not touch the ground.</FONT>")

open4toast04_2:
//"<FONT COLOR=#DC9F4F>なぜか<FONT COLOR=#CFCFCF>Ｚボタン</FONT>が他のモードと<BR>ちがう機能になっている…<BR>そんな事に気がついてませんか？</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>You may have noticed that<BR>the <FONT COLOR=#CFCFCF>Z Button</FONT> performs a different<BR>function from the other modes...</FONT>")
open4toast04_3:
//"<FONT COLOR=#DC9F4F>なんと「じっけんワールド」では<BR><FONT COLOR=#CFCFCF>Ｚボタン</FONT>を押すと<BR><FONT COLOR=#DC4F00>カメラがモデルの後ろにまわる</FONT>んです</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Pressing the <FONT COLOR=#CFCFCF>Z Button</FONT> will cause<BR><FONT COLOR=#DC4F00>the camera to move<BR>behind the model</FONT>.</FONT>")
open4toast04_4:
//"<FONT COLOR=#DC9F4F>何でも、遠い遠い国の習慣だとか…<BR>「オプション」の設定を無視するとは<BR>なかなか強引な習慣ですね</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>It is what it is in this world.<BR>Ignoring what you have set in the<BR>Options menu could be a problem.</FONT>")
open4toast04_5:
//"<FONT COLOR=#DC9F4F>まあ、早くなれてしまうのが<BR>よろしいかと思います</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>You will get used to it<BR>before you know it.</FONT>")

open4toast05_2:
//"<FONT COLOR=#DC9F4F>これは「じっけんワールド」<BR>初心者のための<BR>初心者食パンです。</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>This is the beginner's bread of<BR>this world.</FONT>")
open4toast05_3:
//"<FONT COLOR=#DC9F4F>たっぷり文章を書いておきましたので<BR>タルくて読みたくねえって方には<BR><FONT COLOR=#2FDF2F>Ｂボタン</FONT>キャンセルをオススメします</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>I have a lot to talk about,<BR>so if you don't want to hear,<BR>press the <FONT COLOR=#2FDF2F>B Button</FONT> to stop.</FONT>")
open4toast05_4:
//"<FONT COLOR=#DC9F4F>さて、「じっけんワールド」では<BR>覚えきれないほど<FONT SIZE=1>かもしれないくらい</FONT><BR>いろいろなブロックが落ちています</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>In this world, <FONT SIZE=1>if I remember correctly,</FONT><BR>many blocks have fallen.</FONT>")
open4toast05_5:
//"<FONT COLOR=#DC9F4F>そのうちの<FONT COLOR=#DC4F00>どうりょくブロック</FONT>は<BR>「じっけんワールド」で<FONT COLOR=#DC4F00>動く</FONT>ための<BR>重要なブロックであったりもします</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Among them are the <FONT COLOR=#DC4F00>power blocks</FONT>.<BR>To get around in this world,<BR><FONT COLOR=#DC4F00>these blocks are essential</FONT>.</FONT>")
open4toast05_6:
//"<FONT COLOR=#DC9F4F>ブロックごとにいろんな能力があり<BR>そのちがいは<FONT COLOR=#DC4F00>スタートボタン</FONT>で<BR>確認できます</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>These blocks have various abilities.<BR>You can check them out by<BR>pressing the <FONT COLOR=#DC4F00>START Button</FONT>.</FONT>")
open4toast05_7:
//"<FONT COLOR=#DC9F4F>新しくブロックを手にいれたら<BR>「くみたてる」で組み立てて<BR>動きを見てみるのがいいでしょう</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>When you pick up a new block,<BR><FONT COLOR=#DC4F00>assemble</FONT> it on your model,<BR>and look at the results.</FONT>")
open4toast05_8:
//"<FONT COLOR=#DC9F4F>組み立てる時は<BR>ブロックの向きに注意して下さい。<BR>すすむ方向にえいきょうします</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>When you are assembling,<BR>pay close attention to the<BR>orientation of the block.</FONT>")
open4toast05_9:
//"<FONT COLOR=#DC9F4F>ふつうはブロックを呼び出した時の<BR>向きのままで大丈夫なんですけどね</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Usually when you call in the block,<BR>its orientation should be all right.</FONT>")
open4toast05_10:
//"<FONT COLOR=#DC9F4F>それでは、良い旅を</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>With all that in mind,<BR>have a nice trip!</FONT>")

open4toast06_2:
//"<FONT COLOR=#DC9F4F>最初になやむのが、<BR>[遅くなってすすめないよ～]<BR>というところだと思います</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>You may have this problem:<BR>[I am slowing down!]</FONT>")
open4toast06_3:
//"<FONT COLOR=#DC9F4F><FONT COLOR=#FFFFCF>砂</FONT>や<FONT COLOR=#FFFFFF>雪</FONT>以外で遅くなっちゃうときは<BR>坂に負けていてのぼれていない、<BR>という事が考えられます</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>If it isn't because of <FONT COLOR=#FFFFCF>sand</FONT> or <FONT COLOR=#FFFFFF>snow</FONT>,<BR>you may be losing momentum<BR>because of a slope.</FONT>")
open4toast06_4:
//"<FONT COLOR=#DC9F4F><FONT COLOR=#DC4F00>のぼれる坂の角度はブロックごとに<BR>ちがう</FONT>ので、強そうなどうりょくを<BR>探してみて下さい</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F><FONT COLOR=#DC4F00>The angle of the slope<BR>that a block can climb</FONT> is<BR>different for each.</FONT>")
open4toast06_5:
//"<FONT COLOR=#DC9F4F>また、<BR>[ジャンプだと届かないよ～]<BR>というところもあるかと思います</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>This problem may also occur:<BR>[My jump doesn't reach!]</FONT>")
open4toast06_6:
//"<FONT COLOR=#DC9F4F>そんな時は<BR>足のブロックを使ってみて下さい。<BR><FONT COLOR=#DC4F00>足なら高くジャンプできます</FONT></FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>In that case, use a foot block.<BR><FONT COLOR=#DC4F00>Feet makes you jump higher</FONT>.</FONT>")

open4toast07_2:
//"<FONT COLOR=#DC9F4F>各所にそびえ立つ謎のパネル…<BR>その正体は誰にも知られる事なく<BR>訪れる人々を見守っています</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Mysterious panels have been<BR>rising all around the world.<BR>No one knows what they are.</FONT>")
open4toast07_3:
//"<FONT COLOR=#DC9F4F>しかし、ひとたびさわろうものなら<BR>たちまち作動し<BR>さわった者に謎の力を与えてくれます</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>They give mysterious powers<BR>to anybody who touches them<BR>immediately.</FONT>")
open4toast07_4:
//"<FONT COLOR=#DC9F4F><FONT COLOR=#2FBFDF>青い羽根が描かれたパネル</FONT>は<BR>ダッシュのパネル</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F><FONT COLOR=#2FBFDF>Panels with a blue feather</FONT><BR>are Dash Panels.</FONT>")
open4toast07_5:
//"<FONT COLOR=#DC9F4F><FONT COLOR=#FF6F2F>赤いカエルが描かれたパネル</FONT>は<BR>ジャンプのパネル</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F><FONT COLOR=#FF6F2F>Panels with a red frog</FONT><BR>are Jump Panels.</FONT>")
open4toast07_6:
//"<FONT COLOR=#DC9F4F>どちらもさわったしゅんかんに<BR>スピードアップさせてくれます</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Both will speed you up<BR>once you touch them.</FONT>")
open4toast07_7:
//"<FONT COLOR=#DC9F4F>ぶつかる直前に<BR><FONT COLOR=#2F2FDF>Ａボタン</FONT>でジャンプすると<BR>高くとぶことができたりもします</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>If you jump with the <FONT COLOR=#2F2FDF>A Button</FONT><BR>just before hitting it,<BR>you will go even higher.</FONT>")

open4toast08_2:
//"<FONT COLOR=#DC9F4F>この先にある<BR><FONT COLOR=#DC4F00>せいぎょそうち</FONT>というブロック…</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Soon, you will find<BR>a block called <FONT COLOR=#DC4F00>Controller</FONT>.</FONT>")
open4toast08_3:
//"<FONT COLOR=#DC9F4F>向いた方向に進む事ができ<BR>たとえ空中やつるつるの場所でも<BR>自由に曲がる事が出来るシロモノです</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>You can freely turn with it,<BR>even on slippery grounds<BR>or in the air.</FONT>")
open4toast08_4:
//"<FONT COLOR=#DC9F4F>どんな場所でも<BR>進行方向を変える事ができるので<BR>ブロック集めにはかかせません</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>You can change directions to<BR>anywhere you want, it makes<BR>collecting blocks much easier.</FONT>")
open4toast08_5:
//"<FONT COLOR=#DC9F4F>でも、逆にまっすぐすすみたい時には<BR>ジャマだったりするので<BR>世の中うまくいかねえってな感じです</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>However, going straight forward<BR>may feel a lot different.</FONT>")

open4toast09_2:
//"<FONT COLOR=#DC9F4F>「じっけんワールド」には<BR>道行くお客様方をジャマする<BR>大小の生き物がいたりします</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>In this world, there are<BR>small and large creatures<BR>who may get in your way.</FONT>")
open4toast09_3:
//"<FONT COLOR=#DC9F4F><FONT COLOR=#DC4F00>大きいソイツ</FONT>は<BR>ブロックが大好きで愛しちゃってて<BR>思わず食べてしまう事があります</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F><FONT COLOR=#DC4F00>The big ones</FONT> loves blocks<BR>so much,<BR>they are hungry for those.</FONT>")
open4toast09_4:
//"<FONT COLOR=#DC9F4F>しかもその時、重要なブロックから<BR>食べていくのですから<BR>なかなかグルメだと言えます</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>They are quite the gourmet,<BR>and will eat away<BR>your most important blocks.</FONT>")
open4toast09_5:
//"<FONT COLOR=#DC9F4F><FONT COLOR=#DC4F00>小さいソイツ</FONT>は<BR>近づくお客様方に<BR>愛の体当たりをくらわせます</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F><FONT COLOR=#DC4F00>The small ones</FONT> loves<BR>ramming into people.</FONT>")
open4toast09_6:
//"<FONT COLOR=#DC9F4F>めったに誰も来ないから<BR>さびしいんでしょうね…。<BR>まあ、メイワクな話ですけど</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>We don't get a lot of visitors here,<BR>so they're quite lonely.</FONT>")
open4toast09_7:
//"<FONT COLOR=#DC9F4F>このあわれな生き物たちを<BR>愛と友情の「じっけんワールド」では<BR>当然ながらホゴする事になっています</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>In love of this world,<BR>those silly creatures are protected.</FONT>")
open4toast09_8:
//"<FONT COLOR=#DC9F4F>訪れるお客様方に<BR>キガイを与えたとしても、決して<BR>ハンゲキなさらないで下さい</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>When you are in danger,<BR>please don't fight them.</FONT>")
open4toast09_9:
//"<FONT COLOR=#DC9F4F>というか、<BR>ハンゲキする方法はないんですけど…<BR>…ね</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Perhaps I should rather say,<BR>it's impossible to strike back.</FONT>")

open4toast10_2:
//"<FONT COLOR=#DC9F4F>人はよく[形ある物はいつかこわれる]<BR>などと言って<BR>物がこわれた時のいいわけをします</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>People often have this problem:<BR>[My blocks are broken!]<BR>Here are the possible reasons.</FONT>")
open4toast10_3:
//"<FONT COLOR=#DC9F4F>当然ながら、それはモデルにおいても<BR>例外ではありません</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Of course, even in the model,<BR>there's no exception.</FONT>")
open4toast10_4:
//"<FONT COLOR=#DC9F4F>強いしょうげきを与えると<BR>ブロックがばくはつしてしまうことが<BR>あります</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>On strong impact,<BR>your blocks may explode.</FONT>")
open4toast10_5:
//"<FONT COLOR=#DC9F4F>スピードがベラボーに速くなったら<BR>地面やカベにぶつからないように<BR>注意しましょう</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>On very high speeds,<BR>avoid hitting the ground<BR>or the walls.</FONT>")
open4toast10_6:
//"<FONT COLOR=#DC9F4F>でも、リトライすれば直っちゃうので<BR>わりと注意しなくていいような<BR>気もします</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>If it happens, just <FONT COLOR=#DC4F00>retry</FONT>,<BR>your blocks will be all patched up.</FONT>")
open4toast10_7:
//"<FONT COLOR=#DC9F4F>ちなみに、<FONT COLOR=#DC4F00>ぶつかるしゅんかんに<BR>ある事をすれば</FONT>、ブロックを<BR>こわさずにすむなんて話もあります</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>But I have heard that if <FONT COLOR=#DC4F00>you do<BR>something just right when you get<BR>hit</FONT>, nothing will break.</FONT>")

open4toast11_2:
//"<FONT COLOR=#DC9F4F>古代の神秘、ピラミッドです</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>The ancient mystery,<BR>the pyramid.</FONT>")
open4toast11_3:
//"<FONT COLOR=#DC9F4F>[空から飛んで出入りしていた]<BR>などという言い伝えが残っています</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>The legends say it was<BR>flying in the sky.</FONT>")
open4toast11_4:
//"<FONT COLOR=#DC9F4F>また、<FONT COLOR=#DC4F00>入り口は隠されている</FONT>らしく<BR>その内部は謎につつまれています</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Also, <FONT COLOR=#DC4F00>the entrance seems to be<BR>hidden.</FONT> What is inside is<BR>shrouded in mystery.</FONT>")

open4toast12_2:
//"<FONT COLOR=#DC9F4F>このトースターの横にそびえ立つ<BR>茶色のなんだかわけわかんねえコレ、<BR>じつはカエルの塔って言います</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Next to the toaster, there's that<BR>light brown tower looking thing.<BR>It is said to be a Frog Tower.</FONT>")
open4toast12_3:
//"<FONT COLOR=#DC9F4F>意味ありげに置いてあるナア、<BR>と思ったアナタは鋭い！<BR>もちろん意味アリアリです</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>I'm thinking there's a<BR>meaning to this.<BR>There must be a meaning.</FONT>")
open4toast12_4:
//"<FONT COLOR=#DC9F4F>むろん、なぜカエルであるのかとか<BR>誰がこんなモノを建てたのかとか<BR>いろいろギモンはつきませんが</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Why is it a frog?<BR>Who built such a thing?<BR>There's only so much questions.</FONT>")
open4toast12_5:
//"<FONT COLOR=#DC9F4F>今日のところは[この塔は<BR>いろんな目印になってるんだヨ]<BR>といった事だけ覚えておいて下さい</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>For now, you just need<BR>to remember that<BR>this tower is a landmark.</FONT>")

open4toast13_2:
//"<FONT COLOR=#DC9F4F>これは「じっけんワールド」<BR>初心者のための<BR>初心者食パンです。</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>This is the beginner's bread of<BR>this world.</FONT>")
open4toast13_3:
//"<FONT COLOR=#DC9F4F>たっぷり文章を書いておきましたので<BR>ウザくて読みたくねえって方には<BR><FONT COLOR=#2FDF2F>Ｂボタン</FONT>キャンセルをオススメします</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>I have a lot to talk about,<BR>so if you don't want to hear,<BR>press the <FONT COLOR=#2FDF2F>B Button</FONT> to stop.</FONT>")
open4toast13_4:
//"<FONT COLOR=#DC9F4F>さて、「じっけんワールド」には<BR>観光したくなるほど<FONT SIZE=1>かどうかわかりませんが</FONT><BR>いろんな場所があります</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>I don't know how much<BR>you like exploring, but this world<BR>has various places to go to.</FONT>")
open4toast13_5:
//"<FONT COLOR=#DC9F4F>そのうち地面が<BR><FONT COLOR=#FFFFCF>砂</FONT>・<FONT COLOR=#FFFFFF>雪</FONT>・<FONT COLOR=#FFAFFF>トゲ</FONT>になっている場所は<BR>要注意です</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>There are places with <FONT COLOR=#FFFFCF>sand</FONT>, <FONT COLOR=#FFFFFF>snow</FONT><BR>and <FONT COLOR=#FFAFFF>thorny</FONT> grounds, so be careful.</FONT>")
open4toast13_6:
//"<FONT COLOR=#DC9F4F>なんと<FONT COLOR=#FFFFCF>砂</FONT>や<FONT COLOR=#FFFFFF>雪</FONT>や<FONT COLOR=#FFAFFF>トゲ</FONT>の上は<BR>限られたどうりょくブロックでしか<BR>進むことができないのです</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Only few power blocks works<BR>on <FONT COLOR=#FFFFCF>sand</FONT>, <FONT COLOR=#FFFFFF>snow</FONT> and <FONT COLOR=#FFAFFF>thorns</FONT>.</FONT>")
open4toast13_7:
//"<FONT COLOR=#DC9F4F>また、つるつるとすべって<BR>全くコントロールがきかなくなる<BR><FONT COLOR=#AFFFFF>氷</FONT>・<FONT COLOR=#AFAFAF>鉄</FONT>などにも気をつけて下さい</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Watch out for <FONT COLOR=#AFFFFF>ice</FONT>, <FONT COLOR=#AFAFAF>iron</FONT> and more,<BR>or you will lose control and slip.</FONT>")
open4toast13_8:
//"<FONT COLOR=#DC9F4F>[な～んか前にすすまないなあ？]<BR>とか思った時は<BR>ブロックと地面をチェックしましょう</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>[I cannot proceed any further.]<BR>Check the ground and<BR>the blocks you have.</FONT>")
open4toast13_9:
//"<FONT COLOR=#DC9F4F>また、いろんな所にあるカベにも<BR>注意したほうがいいでしょう</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>I recommend also<BR>checking the walls.</FONT>")
open4toast13_10:
//"<FONT COLOR=#DC9F4F>[な～んかカベがジャマだなあ？]<BR>とか思った時は<BR>カベを<FONT COLOR=#DC4F00>手当たりしだいさわって</FONT>下さい</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>[Something's wrong with the wall.]<BR>If you suspect something is weird,<BR>try touching the wall.</FONT>")
open4toast13_11:
//"<FONT COLOR=#DC9F4F>さわるとなんと！こいつぁオドロキ！<BR>みたいな変化のある<BR>カベもありますヨ</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Touch it and... surprise!<BR>It's like something's changing...</FONT>")
open4toast13_12:
//"<FONT COLOR=#DC9F4F>それでは、良い旅を</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>With all that in mind,<BR>have a nice trip!</FONT>")

open4toast14_2:
//"<FONT COLOR=#DC9F4F>地上のブロックを取るたびに<BR>ぐんぐん伸びる<BR>不思議で巨大な柱…</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Every time you find a block,<BR>a mysterious pillar grows...</FONT>")
open4toast14_3:
//"<FONT COLOR=#DC9F4F>その柱の役目は<BR>上を見ればおわかりのように<BR>地上と空とを結ぶ事なのです</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>The role of the pillar is to<BR>connect the land and the sky.</FONT>")
open4toast14_4:
//"<FONT COLOR=#DC9F4F>この空への柱は<BR><FONT COLOR=#DC4F00>ある数のブロックを取り終えると<BR>空に届く</FONT>ようになっています</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Once you have enough blocks,<BR>the pillar will reach the sky.</FONT>")
open4toast14_5:
//"<FONT COLOR=#DC9F4F>まあ、それを使わなくても<BR>飛んで空へ行くことも<BR>できるんですけどね</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Well... Even without the pillar,<BR>you can still fly into the sky.</FONT>")
open4toast14_6:
//"<FONT COLOR=#DC9F4F>古い設備は新しい発明によって<BR>使われなくなる…<BR>歴史の必然です</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Old equipment will always<BR>be replaced by newer ones.<BR>It is inevitable.</FONT>")
open4toast14_7:
//"<FONT COLOR=#DC9F4F>しかし、あなたはその古さに<BR><FONT SIZE=6>ロマン</FONT>を感じませんか？</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Isn't this<BR><FONT SIZE=6>romantic?</FONT></FONT>")
open4toast14_8:
//"<FONT COLOR=#DC9F4F>感じた方はぜひのぼって行って下さい<BR>きっとあなたの望む世界が<BR>待っていますから…</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Feel free to leave when you want.<BR>Surely the world you want<BR>will be waiting for you.</FONT>")

open4toast15_2:
//"<FONT COLOR=#DC9F4F>画面左上のレーダーに<BR>ポツリポツリとあらわれる<BR>わりとうっとうしい点…</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>On the top-left of the screen,<BR>there's a radar. Dots will appear<BR>relative to your position.</FONT>")
open4toast15_3:
//"<FONT COLOR=#DC9F4F>これは実は<FONT COLOR=#DC4F00>出入り口</FONT>と<FONT COLOR=#DC4F00>ブロック</FONT>の<BR>位置を示しています</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>It shows the location of <FONT COLOR=#DC4F00>entrances</FONT><BR>and <FONT COLOR=#DC4F00>blocks</FONT>.</FONT>")
open4toast15_4:
//"<FONT COLOR=#DC9F4F><FONT COLOR=#8F8F8F>黒い点</FONT>は出入り口<BR><FONT COLOR=#DF2F2F>赤い点</FONT>はお客様より上にあるブロック<BR><FONT COLOR=#2F2FDF>青い点</FONT>は下にあるブロックです</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F><FONT COLOR=#8F8F8F>Black dots</FONT> are entrances and exits.<BR><FONT COLOR=#DF2F2F>Red dots</FONT> are blocks above you.<BR><FONT COLOR=#2F2FDF>Blue dots</FONT> are blocks below you.</FONT>")
open4toast15_5:
//"<FONT COLOR=#DC9F4F>建物の中のブロックまでは<BR>表示されないので<BR>ご注意ください</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Please note that blocks are<BR>not displayed in buildings.</FONT>")
open4toast15_6:
//"<FONT COLOR=#DC9F4F>あとこれはヒミツなんですが…<BR>レーダーなどの計器は<BR><FONT COLOR=#CFCFCF>Ｌボタン</FONT>で出したり消したりできます</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Here's a secret...<BR>You can put out the radar and<BR>other gauges with the <FONT COLOR=#CFCFCF>L Button</FONT>.</FONT>")

open4toast16_2:
//"<FONT COLOR=#DC9F4F>この世界にただ一つ、<BR>たった一つ、<BR>本当に一つだけ…</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Only one in this world,<BR>only one,<BR>really the only one.</FONT>")
open4toast16_3:
//"<FONT COLOR=#DC9F4F>夜にならないと見えない、<BR>透明な通路があります</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>There is a transparent passage<BR>that can only be seen<BR>at night.</FONT>")
open4toast16_4:
//"<FONT COLOR=#DC9F4F>なにしろ一つだけなので<BR>必見です。<BR>ぜひ探してでもごらん下さい</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Because there is only one,<BR>you must see it...<BR>By all means, please look for it.</FONT>")

open4toast17_2:
//"<FONT COLOR=#DC9F4F>空を飛んでいて<BR>なぜか高度が上がらなくなる…<BR>そんな覚え、ありませんか？</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Flying into the sky,<BR>until the altitude does not rise...<BR>It happened to you, isn't it?</FONT>")
open4toast17_3:
//"<FONT COLOR=#DC9F4F>実は「じっけんワールド」では<BR><FONT COLOR=#DC4F00>空を飛ぶブロックごとに<BR>飛べる高さの限界がある</FONT>んです</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>In this world, for <FONT COLOR=#DC4F00>each block<BR>that can fly</FONT>, there's a limit<BR>of height that it can reach.</FONT>")
open4toast17_4:
//"<FONT COLOR=#DC9F4F>高く飛びたくてしょうがねえ方は<BR>ぜひともさらに高性能のブロックを<BR>お探しください</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>If you want to go higher,<BR>look for more powerful blocks.</FONT>")
open4toast17_5:
//"<FONT COLOR=#DC9F4F>…ついでに<BR>書かせていただきますと、</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>...While I'm at it,<BR>as I take pleasure in writing this,</FONT>")
open4toast17_6:
//"<FONT COLOR=#DC9F4F>わたくし食パン屋の店主は<BR>この食パンを最後に<BR>修行の旅に出させていただきます</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>I am the owner of the bakery.<BR>This bread will be the last one<BR>as I'm going on a journey.</FONT>")
open4toast17_7:
//"<FONT COLOR=#DC9F4F>今までの当店の食パンのヒントが<BR>あなたの旅の助けになっていれば<BR>これ以上の幸せはありません</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>If my bread hints have helped you<BR>on your journey,<BR>I cannot be happier.</FONT>")
open4toast17_8:
//"<FONT COLOR=#DC9F4F>本当にありがとうございました<BR>なお、行き先はヒミツです</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>I present my sincere thanks to you.<BR>My destination is a secret.</FONT>")

open4toast18_2:
//"<FONT COLOR=#DC9F4F>公園と言えばすべり台、<BR>「じっけんワールド」と言っても<BR>すべり台です</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Remember park slides?<BR>In this world, while we're<BR>talking about slides...</FONT>")
open4toast18_3:
//"<FONT COLOR=#DC9F4F>人生のように<BR>すべり出したら止まりません。<BR>最初に入るときの向きが大事です</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>When you slide, you cannot stop.<BR>The direction as you enter is<BR>very important.</FONT>")
open4toast18_4:
//"<FONT COLOR=#DC9F4F><FONT COLOR=#DC4F00>せいぎょそうち</FONT>を使っていれば、<BR>すべりながら曲がることが出来るので<BR>わりとラクかもしれません</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>If you use the <FONT COLOR=#DC4F00>Controller</FONT>,<BR>you can turn while sliding,<BR>it might be a little easier.</FONT>")

open4toast19_2:
//"<FONT COLOR=#DC9F4F>ここの食パンと言えばヒント、<BR>ここのピラミッドと言えば湿気です</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Speaking of Bread Hints here,<BR>the Pyramid here is pretty humid.</FONT>")
open4toast19_3:
//"<FONT COLOR=#DC9F4F>このピラミッドの中は湿気のため<BR>いまいち機械がまともに動きません</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Because of the humidity,<BR>gauges are going haywire.</FONT>")
open4toast19_4:
//"<FONT COLOR=#DC9F4F>そのため高度の表示がこわれたり<BR>空を飛ぶブロックの性能が落ちたりと<BR>イヤーンな感じですが</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>The altitude display is broken,<BR>flying blocks drops in<BR>performance...</FONT>")
open4toast19_5:
//"<FONT COLOR=#DC9F4F>ブロックがこわれたりする<BR>わけではないので<BR>そんなに困る事もないかと思います</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>There's nothing to worry about,<BR>the blocks are not breaking.</FONT>")

open4toast20_2:
//"<FONT COLOR=#EF9FBF>どーも、食パン屋です。<BR>よろしくっ！</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>This is the bakery.<BR>Nice to meet you!</FONT>")
open4toast20_3:
//"<FONT COLOR=#EF9FBF>えっとですね、店主の兄さんが<BR>旅に出ちゃったので、わたくしが<BR>代わりをやることにしましたっ！</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>The owner is my older brother.<BR>Since he is gone on a journey,<BR>I'm taking his place for now.</FONT>")
open4toast20_4:
//"<FONT COLOR=#EF9FBF>それでですね、わたくしの食パンには<BR>兄さんにソンケイのネンをこめて<BR>顔のもようを焼いてみましたっ！</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>That's right,<BR>in reverence to my older brother,<BR>I've burned his face on the bread.</FONT>")
open4toast20_5:
//"<FONT COLOR=#EF9FBF>ステキですよねー。<BR>ちなみに双子だから、<BR>わたくしの顔もこんな感じですっ！</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>Isn't that nice?<BR>By the way, we're twins,<BR>so my face is like this too!</FONT>")
open4toast20_6:
//"<FONT COLOR=#EF9FBF>でもですね、顔のもようがあっても<BR>当店の食パンは無添加無漂白で<BR>とにかく大安心っ！</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>Even with this face,<BR>our bread is additive-free<BR>so this is still safe!</FONT>")

open4toast21_2:
//"<FONT COLOR=#EF9FBF>えっとですね、そっちにあるみたいな<BR>せまくて長いところをすすむときは、</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>It looks like you're standing<BR>to a long and thin passageway.</FONT>")
open4toast21_3:
//"<FONT COLOR=#EF9FBF><FONT COLOR=#CFCFCF>Ｒボタン</FONT>でですね、<BR>自動車のマークにきりかえておくと<BR>いい感じみたいですっ！</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>With the <FONT COLOR=#CFCFCF>R Button</FONT>,<BR>you can change into a car,<BR>it feels so good!</FONT>")

open4toast22_2:
//"<FONT COLOR=#EF9FBF>えっとですね、この部屋は<BR>テッペンにある部屋だけあって<BR>いいブロックがあるそうなんですっ！</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>This room is the<BR>only room at the top.<BR>I've heard of a nice block in there!</FONT>")
open4toast22_3:
//"<FONT COLOR=#EF9FBF>でもですね、そういうブロックは<BR>イジワルな場所にかくしてあったり<BR>するそうですっ！</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>But the block seems<BR>to be hidden in a nasty place!</FONT>")
open4toast22_4:
//"<FONT COLOR=#EF9FBF>だからですね、ちがうもようの<BR>カベとかには例によって<BR>どんどんぶつかってみましょっ！</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>There are different<BR>patterns of walls.<BR>Let's bump into those!</FONT>")

open4toast23_2:
//"<FONT COLOR=#EF9FBF>えっとですね、空を飛ぶときには<BR>たぶん羽根をつけて<BR>いると思いますけども、</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>Well... If you want to fly...<BR>You may think putting on wings<BR>might be a good idea,</FONT>")
open4toast23_3:
//"<FONT COLOR=#EF9FBF>時にはですね、つけていない方が<BR>すすみやすい事があるんですっ！</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>But, perhaps...<BR>there's something easier to use.</FONT>")
open4toast23_4:
//"<FONT COLOR=#EF9FBF>それはですね、まっすぐ上に<BR>行きたい時とかなんですっ！</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>Sometimes, you just want<BR>to go straight up, right?</FONT>")
open4toast23_5:
//"<FONT COLOR=#EF9FBF>これはですね、羽根をつけると<BR>落ちるのも上にすすむのも<BR>遅くなっちゃうせいなんですっ！</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>That is, if you put wings,<BR>they can slow you down.</FONT>")
open4toast23_6:
//"<FONT COLOR=#EF9FBF>だからですね、ヘリコプターのように<BR>どうりょくのすすむ向きを上にして<BR>羽根をつけないようにすれば、</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>Maybe, you could go upwards,<BR>with some kind of force,<BR>like an helicopter.</FONT>")
open4toast23_7:
//"<FONT COLOR=#EF9FBF>意外とですね、羽根があるモデルより<BR>すすみやすいかもしれないですっ！</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>It's amazing,<BR>how easier it may be<BR>compared to a model with wings!</FONT>")

open4toast24_2:
//"<FONT COLOR=#EF9FBF>えっとですね、パワースターって<BR>全部のブロックが<BR>何倍にも強くなる気がしますが、</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>Well, it looks like the Power Star<BR>is making all the blocks<BR>much stronger.</FONT>")
open4toast24_3:
//"<FONT COLOR=#EF9FBF>そうじゃないのもあってですね、<BR>例えば最初から最強のブロックは<BR>全然変わんなかったりしますっ！</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>But there are a few that<BR>won't change, like the strongest<BR>blocks to begin with.</FONT>")
open4toast24_4:
//"<FONT COLOR=#EF9FBF>これはですね、<BR>エンジンにも言えるので<BR>カンちがいしないでくださいねっ！</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>Don't compare it to engines.<BR>They're different.</FONT>")
open4toast24_5:
//"<FONT COLOR=#EF9FBF>ついでに書くとですね、<BR>わたくしも兄さんに続いて<BR>旅に出ることにしましたっ！</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>As I am writing this,<BR>I have decided to go on a journey,<BR>like my older brother!</FONT>")
open4toast24_6:
//"<FONT COLOR=#EF9FBF>なのでですね、<BR>これが最後の食パンです。<BR>今までありがとうございましたっ！</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>So, this is my last bread.<BR>Thank you very much!</FONT>")
open4toast24_7:
//"<FONT COLOR=#EF9FBF>せっかくなのでですね、<BR>ヒント食パンらしく<BR>行き先のヒントも書いちゃいますっ！</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>It's big news,<BR>but typical of bread hints,<BR>I'll write hints of our destinations!</FONT>")
open4toast24_8:
//"<FONT COLOR=#EF9FBF>えっとですね、<BR>兄さんは遠いところで<BR>わたくしは高いところですっ！</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>Well,<BR>my older brother is very far away,<BR>while I am at a very high place!</FONT>")
open4toast24_9:
//"<FONT COLOR=#EF9FBF>キョウミがあったらですね、<BR>来てくださーいっ！</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>If you are interested,<BR>please come!</FONT>")

open4toast25_2:
//"<FONT COLOR=#DC9F4F>どうも、食パン屋です。</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Greetings, this is the baker.</FONT>")
open4toast25_3:
//"<FONT COLOR=#DC9F4F>わたくしここで修行をしているうちに<BR>いつの間にか…<BR>自分がブロックになっていました</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>I did not realize<BR>as I was training here...<BR>I became a block.</FONT>")
open4toast25_4:
//"<FONT COLOR=#DC9F4F>お客様へのご奉仕と思うと、<BR>喜ばしい限りです。<BR>どうぞお使い下さい</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>I would be glad if you think<BR>I am useful. Please go ahead<BR>and take me with you.</FONT>")

open4toast26_2:
//"<FONT COLOR=#EF9FBF>どーも、食パン屋ですっ！</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>Hey! This is the baker.</FONT>")
open4toast26_3:
//"<FONT COLOR=#EF9FBF>えっとですね、わたくしここで<BR>いっしょうけんめい<BR>修行してたら、</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>Well, I have been training<BR>hard in this place.</FONT>")
open4toast26_4:
//"<FONT COLOR=#EF9FBF>気がつくとですね、わたくし<BR>ブロックに変身しちゃってましたっ！</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>And then suddenly,<BR>I noticed I was transformed<BR>into a block!</FONT>")
open4toast26_5:
//"<FONT COLOR=#EF9FBF>これほどですね、お客様のために<BR>なれる事は他にありませんっ！</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>Until now, I haven't been<BR>doing anything for the customers!</FONT>")
open4toast26_6:
//"<FONT COLOR=#EF9FBF>だからですね、使って下さいねっ！</FONT>"
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>That's why,<BR>please take me with you!</FONT>")

open4_place01:
//虚無空間
  putTextASCIInoSeek("EMPTY")
open4_place02:
//は じ め タ ー ミ ナ ル
  putTextASCIInoSeek("STARTING TERMINAL")
open4_place03:
//ポ リ ゴ ネ シ ア
  putTextASCIInoSeek("POLYGONECIA")
open4_place04:
//空 中 庭 園 ポ リ ゴ ナ ー
  putTextASCIInoSeek("SKY GARDENS POLYGONA")
open4_place05:
//す べ り す べ り
  putTextASCIInoSeek("SLIPPERY SLIDE")
open4_place06:
//鋼 鉄 動 力 神 殿
  putTextASCIInoSeek("STEEL TEMPLE")
open4_place07:
//節 足 ピ ラ ミ ッ ド
  putTextASCIInoSeek("THE PYRAMID")
open4_place08:
//ひ ろ ち ゃ ん 穴
  putTextASCIInoSeek("HERO'S HOLE")
open4_place09:
//中 枢 フ ェ ノ ミ ナ ン
  putTextASCIInoSeek("CENTRAL PHENOMENIN")
open4_place10:
//ア ク ア リ ウ ム な 午 後
  putTextASCIInoSeek("AQUARIUM AFTERNOON")
open4_place11:
//辺 境 イ ン フ ェ ル ノ
  putTextASCIInoSeek("FRONTIER INFERNO")
open4_place12:
//高 高 度 パ ラ デ ィ ソ
  putTextASCIInoSeek("HIGH ALTITUDE PARADISO")

//There are lots of extra space to use.
open1_oneblock:
//ブロックの1つ
  putTextASCIInoSeek("One of the blocks")
open1_destroyed:
//</FONT></FONT>が 破損！</CENTER>
  putTextASCIInoSeek("</FONT> is broken!</CENTER>")

  
//Pointers
seek(0x69D9A0)
//Names
//Power Blocks
dw open4_001, open4_002, open4_003, open4_004, open4_005, open4_006, open4_007
dw open4_008, open4_009, open4_010, open4_011, open4_012, open4_013, open4_014
dw open4_015, open4_016, open4_017, open4_018, open4_019, open4_020, open4_021
dw open4_022, open4_023, open4_024, open4_025, open4_026, open4_027, open4_028
dw open4_029, open4_030, open4_031, open4_032, open4_033, open4_034, open4_035
dw open4_036, open4_037, open4_038, open4_039, open4_040, open4_041, open4_042
dw open4_043, open4_044, open4_045, open4_046, open4_047, open4_048, open4_049
dw open4_050

//? Blocks
dw open4_051, open4_052, open4_053, open4_054, open4_055, open4_056, open4_057
dw open4_058, open4_059, open4_060, open4_061, open4_062, open4_063, open4_064
dw open4_065, open4_066, open4_067, open4_068, open4_069, open4_070, open4_071
dw open4_072, open4_073, open4_074, open4_075, open4_076, open4_077, open4_078

//Descriptions
//Power Blocks
dw open4desc_001, open4desc_002, open4desc_003, open4desc_004, open4desc_005, open4desc_006, open4desc_007
dw open4desc_008, open4desc_009, open4desc_010, open4desc_011, open4desc_012, open4desc_013, open4desc_014
dw open4desc_015, open4desc_016, open4desc_017, open4desc_018, open4desc_019, open4desc_020, open4desc_021
dw open4desc_022, open4desc_023, open4desc_024, open4desc_025, open4desc_026, open4desc_027, open4desc_028
dw open4desc_029, open4desc_030, open4desc_031, open4desc_032, open4desc_033, open4desc_034, open4desc_035
dw open4desc_036, open4desc_037, open4desc_038, open4desc_039, open4desc_040, open4desc_041, open4desc_042
dw open4desc_043, open4desc_044, open4desc_045, open4desc_046, open4desc_047, open4desc_048, open4desc_049
dw open4desc_050

//? Blocks
dw open4desc_051, open4desc_052, open4desc_053, open4desc_054, open4desc_055, open4desc_056, open4desc_057
dw open4desc_058, open4desc_059, open4desc_060, open4desc_061, open4desc_062, open4desc_063, open4desc_064
dw open4desc_065, open4desc_066, open4desc_067, open4desc_068, open4desc_069, open4desc_070, open4desc_071
dw open4desc_072, open4desc_073, open4desc_074, open4desc_075, open4desc_076, open4desc_077, open4desc_078

//Pause Descriptions
//Power Blocks
dw open4pdesc_001, open4pdesc_002, open4pdesc_003, open4pdesc_004, open4pdesc_005, open4pdesc_006, open4pdesc_007
dw open4pdesc_008, open4pdesc_009, open4pdesc_010, open4pdesc_011, open4pdesc_012, open4pdesc_013, open4pdesc_014
dw open4pdesc_015, open4pdesc_016, open4pdesc_017, open4pdesc_018, open4pdesc_019, open4pdesc_020, open4pdesc_021
dw open4pdesc_022, open4pdesc_023, open4pdesc_024, open4pdesc_025, open4pdesc_026, open4pdesc_027, open4pdesc_028
dw open4pdesc_029, open4pdesc_030, open4pdesc_031, open4pdesc_032, open4pdesc_033, open4pdesc_034, open4pdesc_035
dw open4pdesc_036, open4pdesc_037, open4pdesc_038, open4pdesc_039, open4pdesc_040, open4pdesc_041, open4pdesc_042
dw open4pdesc_043, open4pdesc_044, open4pdesc_045, open4pdesc_046, open4pdesc_047, open4pdesc_048, open4pdesc_049
dw open4pdesc_050

//? Blocks
dw open4pdesc_051, open4pdesc_052, open4pdesc_053, open4pdesc_054, open4pdesc_055, open4pdesc_056, open4pdesc_057
dw open4pdesc_058, open4pdesc_059, open4pdesc_060, open4pdesc_061, open4pdesc_062, open4pdesc_063, open4pdesc_064
dw open4pdesc_065, open4pdesc_066, open4pdesc_067, open4pdesc_068, open4pdesc_069, open4pdesc_070, open4pdesc_071
dw open4pdesc_072, open4pdesc_073, open4pdesc_074, open4pdesc_075, open4pdesc_076, open4pdesc_077, open4pdesc_078

//Easter Eggs
dw open4easteregg_001, open4easteregg_002, open4easteregg_003, open4easteregg_004, open4easteregg_005
dw open4easteregg_006, open4easteregg_007, open4easteregg_008, open4easteregg_009, open4easteregg_010
dw open4easteregg_011, open4easteregg_012, open4easteregg_013, open4easteregg_014, open4easteregg_015
dw open4easteregg_016, open4easteregg_017, open4easteregg_018, open4easteregg_019, open4easteregg_020
dw open4easteregg_021, open4easteregg_022, open4easteregg_023, open4easteregg_024, open4easteregg_025
dw open4easteregg_026, open4easteregg_027, open4easteregg_028, open4easteregg_029, open4easteregg_030
dw open4easteregg_031, open4easteregg_032, open4easteregg_033, open4easteregg_034, open4easteregg_035
dw open4easteregg_036, open4easteregg_037, open4easteregg_038, open4easteregg_039, open4easteregg_040
dw open4easteregg_041, open4easteregg_042, open4easteregg_043, open4easteregg_044, open4easteregg_045

//Toasters

dw open4toast01_1, open4toast01_2, open4toast01_3, open4toast01_4, open4toast01_5, open4toast01_6, 0
dw open4toast02_1, open4toast02_2, open4toast02_3, open4toast02_4, open4toast02_5, open4toast02_6, 0
dw open4toast03_1, open4toast03_2, open4toast03_3, open4toast03_4, open4toast03_5, open4toast03_6, open4toast03_7, 0
dw open4toast04_1, open4toast04_2, open4toast04_3, open4toast04_4, open4toast04_5, 0
dw open4toast05_1, open4toast05_2, open4toast05_3, open4toast05_4, open4toast05_5, open4toast05_6, open4toast05_7, open4toast05_8, open4toast05_9, open4toast05_10, 0
dw open4toast06_1, open4toast06_2, open4toast06_3, open4toast06_4, open4toast06_5, open4toast06_6, 0
dw open4toast07_1, open4toast07_2, open4toast07_3, open4toast07_4, open4toast07_5, open4toast07_6, open4toast07_7, 0
dw open4toast08_1, open4toast08_2, open4toast08_3, open4toast08_4, open4toast08_5, 0
dw open4toast09_1, open4toast09_2, open4toast09_3, open4toast09_4, open4toast09_5, open4toast09_6, open4toast09_7, open4toast09_8, open4toast09_9, 0
dw open4toast10_1, open4toast10_2, open4toast10_3, open4toast10_4, open4toast10_5, open4toast10_6, open4toast10_7, 0
dw open4toast11_1, open4toast11_2, open4toast11_3, open4toast11_4, 0
dw open4toast12_1, open4toast12_2, open4toast12_3, open4toast12_4, open4toast12_5, 0
dw open4toast13_1, open4toast13_2, open4toast13_3, open4toast13_4, open4toast13_5, open4toast13_6, open4toast13_7, open4toast13_8, open4toast13_9, open4toast13_10, open4toast13_11, open4toast13_12, 0
dw open4toast14_1, open4toast14_2, open4toast14_3, open4toast14_4, open4toast14_5, open4toast14_6, open4toast14_7, open4toast14_8, 0
dw open4toast15_1, open4toast15_2, open4toast15_3, open4toast15_4, open4toast15_5, open4toast15_6, 0
dw open4toast16_1, open4toast16_2, open4toast16_3, open4toast16_4, 0
dw open4toast17_1, open4toast17_2, open4toast17_3, open4toast17_4, open4toast17_5, open4toast17_6, open4toast17_7, open4toast17_8, 0
dw open4toast18_1, open4toast18_2, open4toast18_3, open4toast18_4, 0
dw open4toast19_1, open4toast19_2, open4toast19_3, open4toast19_4, open4toast19_5, 0
dw open4toast20_1, open4toast20_2, open4toast20_3, open4toast20_4, open4toast20_5, open4toast20_6, 0
dw open4toast21_1, open4toast21_2, open4toast21_3, 0
dw open4toast22_1, open4toast22_2, open4toast22_3, open4toast22_4, 0
dw open4toast23_1, open4toast23_2, open4toast23_3, open4toast23_4, open4toast23_5, open4toast23_6, open4toast23_7, 0
dw open4toast24_1, open4toast24_2, open4toast24_3, open4toast24_4, open4toast24_5, open4toast24_6, open4toast24_7, open4toast24_8, open4toast24_9, 0
dw open4toast25_1, open4toast25_2, open4toast25_3, open4toast25_4, 0
dw open4toast26_1, open4toast26_2, open4toast26_3, open4toast26_4, open4toast26_5, open4toast26_6, 0

//Places
dw open4_place01, open4_place02, open4_place03, open4_place04, open4_place05, open4_place06
dw open4_place07, open4_place08, open4_place09, open4_place10, open4_place11, open4_place12
