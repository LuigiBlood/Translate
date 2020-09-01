//Shuffle Text for Talent Information (Disk 0x930D10 / RAM 802ABB50)
//Code Overlay (Disk 0x9222A0 / RAM 8029D0E0)
outputGame()
seek(0x930D10)
base 0x802ABB50

//--Name
//Rules: Either (Prefix or Last Name or none) + First Name (always)
//IDs 0x000-0x02E (0001-0047) (Prefix)
//Male:   ID 0x000-0x026 (0001-0039)
//Female: ID 0x000-0x019 (0001-0026) & 0x027-0x02E (0040-0047)
//IDs 0x02F-0x0AB (0048-0172) (Last Name) (+Space)
//IDs 0x0AC-0x0ED (0173-0238) (First Name)
//Male:   ID 0x0AC-0x0DF (0173-0224) & 0x0EA-0x0EC (0235-0237)
//Female: ID 0x0AC-0x0C2 (0173-0195) & 0x0E0-0x0EA (0225-0235) & 0x0ED (0238)
talentshuffle_0001:
textEntryASCII0("The ")			//ザ・
talentshuffle_0002:
textEntryASCII0("Bull ")		//ブル
talentshuffle_0003:
textEntryASCII0("Mach ")		//マッハ
talentshuffle_0004:
textEntryASCII0("Serve ")		//サーブ
talentshuffle_0005:
textEntryASCII0("Drill ")		//ドリル
talentshuffle_0006:
textEntryASCII0("Magnum ")		//マグナム
talentshuffle_0007:
textEntryASCII0("Burstin' ")		//ピチピチ
talentshuffle_0008:
textEntryASCII0("Ballad ")		//バラード
talentshuffle_0009:
textEntryASCII0("Tiger ")		//タイガー
talentshuffle_0010:
textEntryASCII0("Jumbo ")		//ジャンボ
talentshuffle_0011:
textEntryASCII0("Wooper ")		//ウーパー
talentshuffle_0012:
textEntryASCII0("Ultra ")		//ウルトラ
talentshuffle_0013:
textEntryASCII0("Next ")		//ネクスト
talentshuffle_0014:
textEntryASCII0("Smackin' ")		//ペンペン
talentshuffle_0015:
textEntryASCII0("Doctor ")		//ドクター
talentshuffle_0016:
textEntryASCII0("Ice ")			//サモハン
talentshuffle_0017:
textEntryASCII0("Fire ")		//ファイヤー
talentshuffle_0018:
textEntryASCII0("Super ")		//スーパー★
talentshuffle_0019:
textEntryASCII0("Jackie ")		//ジャッキー
talentshuffle_0020:
textEntryASCII0("Jockey ")		//ジョッキー
talentshuffle_0021:
textEntryASCII0("Golden ")		//ゴールデン
talentshuffle_0022:
textEntryASCII0("Monster ")		//モンスター
talentshuffle_0023:
textEntryASCII0("Pudding ")		//プリン
talentshuffle_0024:
textEntryASCII0("Crusher ")		//クラッシャー
talentshuffle_0025:
textEntryASCII0("Submission ")		//サブミッション
talentshuffle_0026:
textEntryASCII0("Discount ")		//ディスカウント
talentshuffle_0027:
textEntryASCII0("Don ")			//ドン
talentshuffle_0028:
textEntryASCII0("Demon ")		//魔人
talentshuffle_0029:
textEntryASCII0("Mad ")			//マッド
talentshuffle_0030:
textEntryASCII0("Mr. ")			//Ｍｒ．
talentshuffle_0031:
textEntryASCII0("Tony ")		//トニー
talentshuffle_0032:
textEntryASCII0("Mike ")		//マイク
talentshuffle_0033:
textEntryASCII0("Mister ")		//ミスター
talentshuffle_0034:
textEntryASCII0("Champion ")		//シーゲル
talentshuffle_0035:
textEntryASCII0("Johnny ")		//ジョニー
talentshuffle_0036:
textEntryASCII0("Jack ")		//ジャック
talentshuffle_0037:
textEntryASCII0("Charlie ")		//チャーリー
talentshuffle_0038:
textEntryASCII0("Gotcha ")		//ヨッシャー
talentshuffle_0039:
textEntryASCII0("Giant ")		//ジャイアント
talentshuffle_0040:
textEntryASCII0("Mimi ")		//ミミ
talentshuffle_0041:
textEntryASCII0("Witch ")		//魔女
talentshuffle_0042:
textEntryASCII0("Madame ")		//マダム
talentshuffle_0043:
textEntryASCII0("Mommy ")		//マミー
talentshuffle_0044:
textEntryASCII0("Mrs. ")		//Ｍｒｓ．
talentshuffle_0045:
textEntryASCII0("Susan ")		//スーザン
talentshuffle_0046:
textEntryASCII0("Sailor ")		//セーラー
talentshuffle_0047:
textEntryASCII0("Miss. ")		//Ｍｉｓｓ．

talentshuffle_0048:
textEntryASCII0("East")			//東 (TODO)
talentshuffle_0049:
textEntryASCII0("Citrus")		//橘
talentshuffle_0050:
textEntryASCII0("Moat")			//堀
talentshuffle_0051:
textEntryASCII0("TODO")			//加藤
talentshuffle_0052:
textEntryASCII0("TODO")			//水野
talentshuffle_0053:
textEntryASCII0("TODO")			//鈴木
talentshuffle_0054:
textEntryASCII0("TODO")			//吉田
talentshuffle_0055:
textEntryASCII0("TODO")			//北川
talentshuffle_0056:
textEntryASCII0("TODO")			//高橋
talentshuffle_0057:
textEntryASCII0("TODO")			//江口
talentshuffle_0058:
textEntryASCII0("TODO")			//坂上
talentshuffle_0059:
textEntryASCII0("TODO")			//鬼塚
talentshuffle_0060:
textEntryASCII0("TODO")			//白鳥
talentshuffle_0061:
textEntryASCII0("TODO")			//山内
talentshuffle_0062:
textEntryASCII0("TODO")			//宮本
talentshuffle_0063:
textEntryASCII0("TODO")			//沢野
talentshuffle_0064:
textEntryASCII0("TODO")			//松岡
talentshuffle_0065:
textEntryASCII0("TODO")			//木村
talentshuffle_0066:
textEntryASCII0("TODO")			//矢田
talentshuffle_0067:
textEntryASCII0("TODO")			//井田
talentshuffle_0068:
textEntryASCII0("TODO")			//山下
talentshuffle_0069:
textEntryASCII0("TODO")			//俵石
talentshuffle_0070:
textEntryASCII0("TODO")			//河本
talentshuffle_0071:
textEntryASCII0("TODO")			//西村
talentshuffle_0072:
textEntryASCII0("TODO")			//小川
talentshuffle_0073:
textEntryASCII0("TODO")			//藤井
talentshuffle_0074:
textEntryASCII0("TODO")			//桑原
talentshuffle_0075:
textEntryASCII0("TODO")			//大西
talentshuffle_0076:
textEntryASCII0("TODO")			//松永
talentshuffle_0077:
textEntryASCII0("TODO")			//鎌田
talentshuffle_0078:
textEntryASCII0("TODO")			//成田
talentshuffle_0079:
textEntryASCII0("TODO")			//大坪
talentshuffle_0080:
textEntryASCII0("TODO")			//和田
talentshuffle_0081:
textEntryASCII0("TODO")			//早川
talentshuffle_0082:
textEntryASCII0("TODO")			//小林
talentshuffle_0083:
textEntryASCII0("TODO")			//森井
talentshuffle_0084:
textEntryASCII0("TODO")			//豊田
talentshuffle_0085:
textEntryASCII0("TODO")			//戸高
talentshuffle_0086:
textEntryASCII0("TODO")			//永田
talentshuffle_0087:
textEntryASCII0("TODO")			//峰岸
talentshuffle_0088:
textEntryASCII0("TODO")			//星
talentshuffle_0089:
textEntryASCII0("TODO")			//河合
talentshuffle_0090:
textEntryASCII0("TODO")			//川崎
talentshuffle_0091:
textEntryASCII0("TODO")			//木下
talentshuffle_0092:
textEntryASCII0("TODO")			//桑田
talentshuffle_0093:
textEntryASCII0("TODO")			//小西
talentshuffle_0094:
textEntryASCII0("TODO")			//近藤
talentshuffle_0095:
textEntryASCII0("TODO")			//斎藤
talentshuffle_0096:
textEntryASCII0("TODO")			//坂本
talentshuffle_0097:
textEntryASCII0("TODO")			//佐々木
talentshuffle_0098:
textEntryASCII0("TODO")			//佐藤
talentshuffle_0099:
textEntryASCII0("TODO")			//柴田
talentshuffle_0100:
textEntryASCII0("TODO")			//高木
talentshuffle_0101:
textEntryASCII0("TODO")			//富田
talentshuffle_0102:
textEntryASCII0("TODO")			//田中
talentshuffle_0103:
textEntryASCII0("TODO")			//谷口
talentshuffle_0104:
textEntryASCII0("TODO")			//中井
talentshuffle_0105:
textEntryASCII0("TODO")			//中西
talentshuffle_0106:
textEntryASCII0("TODO")			//中村
talentshuffle_0107:
textEntryASCII0("TODO")			//野田
talentshuffle_0108:
textEntryASCII0("TODO")			//千田
talentshuffle_0109:
textEntryASCII0("TODO")			//林
talentshuffle_0110:
textEntryASCII0("TODO")			//原
talentshuffle_0111:
textEntryASCII0("TODO")			//平野
talentshuffle_0112:
textEntryASCII0("TODO")			//谷脇
talentshuffle_0113:
textEntryASCII0("TODO")			//藤原
talentshuffle_0114:
textEntryASCII0("TODO")			//細川
talentshuffle_0115:
textEntryASCII0("TODO")			//前田
talentshuffle_0116:
textEntryASCII0("TODO")			//松田
talentshuffle_0117:
textEntryASCII0("TODO")			//松本
talentshuffle_0118:
textEntryASCII0("TODO")			//池側
talentshuffle_0119:
textEntryASCII0("TODO")			//村田
talentshuffle_0120:
textEntryASCII0("TODO")			//村上
talentshuffle_0121:
textEntryASCII0("TODO")			//森
talentshuffle_0122:
textEntryASCII0("TODO")			//森田
talentshuffle_0123:
textEntryASCII0("TODO")			//西口
talentshuffle_0124:
textEntryASCII0("TODO")			//山口
talentshuffle_0125:
textEntryASCII0("TODO")			//山崎
talentshuffle_0126:
textEntryASCII0("TODO")			//山田
talentshuffle_0127:
textEntryASCII0("TODO")			//山本
talentshuffle_0128:
textEntryASCII0("TODO")			//漢
talentshuffle_0129:
textEntryASCII0("TODO")			//李
talentshuffle_0130:
textEntryASCII0("TODO")			//孫
talentshuffle_0131:
textEntryASCII0("TODO")			//酒井
talentshuffle_0132:
textEntryASCII0("TODO")			//中野
talentshuffle_0133:
textEntryASCII0("TODO")			//野上
talentshuffle_0134:
textEntryASCII0("TODO")			//渡辺
talentshuffle_0135:
textEntryASCII0("TODO")			//長谷川
talentshuffle_0136:
textEntryASCII0("TODO")			//島田
talentshuffle_0137:
textEntryASCII0("TODO")			//大畑
talentshuffle_0138:
textEntryASCII0("TODO")			//渋谷
talentshuffle_0139:
textEntryASCII0("TODO")			//松浦
talentshuffle_0140:
textEntryASCII0("TODO")			//百瀬
talentshuffle_0141:
textEntryASCII0("TODO")			//島村
talentshuffle_0142:
textEntryASCII0("TODO")			//保志場
talentshuffle_0143:
textEntryASCII0("TODO")			//伊集院
talentshuffle_0144:
textEntryASCII0("TODO")			//神宮寺
talentshuffle_0145:
textEntryASCII0("TODO")			//五十嵐
talentshuffle_0146:
textEntryASCII0("TODO")			//井之上
talentshuffle_0147:
textEntryASCII0("TODO")			//青木
talentshuffle_0148:
textEntryASCII0("TODO")			//秋山
talentshuffle_0149:
textEntryASCII0("TODO")			//浅井
talentshuffle_0150:
textEntryASCII0("TODO")			//芦田
talentshuffle_0151:
textEntryASCII0("TODO")			//新井
talentshuffle_0152:
textEntryASCII0("TODO")			//荒川
talentshuffle_0153:
textEntryASCII0("TODO")			//安藤
talentshuffle_0154:
textEntryASCII0("TODO")			//飯田
talentshuffle_0155:
textEntryASCII0("TODO")			//池田
talentshuffle_0156:
textEntryASCII0("TODO")			//井上
talentshuffle_0157:
textEntryASCII0("TODO")			//石田
talentshuffle_0158:
textEntryASCII0("TODO")			//伊藤
talentshuffle_0159:
textEntryASCII0("TODO")			//今井
talentshuffle_0160:
textEntryASCII0("TODO")			//岩井
talentshuffle_0161:
textEntryASCII0("TODO")			//上田
talentshuffle_0162:
textEntryASCII0("TODO")			//宇野
talentshuffle_0163:
textEntryASCII0("TODO")			//大石
talentshuffle_0164:
textEntryASCII0("TODO")			//太田
talentshuffle_0165:
textEntryASCII0("TODO")			//岡田
talentshuffle_0166:
textEntryASCII0("TODO")			//奥村
talentshuffle_0167:
textEntryASCII0("TODO")			//小野
talentshuffle_0168:
textEntryASCII0("TODO")			//三浦
talentshuffle_0169:
textEntryASCII0("TODO")			//安田
talentshuffle_0170:
textEntryASCII0("TODO")			//福井
talentshuffle_0171:
textEntryASCII0("TODO")			//長嶋
talentshuffle_0172:
textEntryASCII0("TODO")			//竹内

talentshuffle_0173:
textEntryASCII0("Gold")			//金
talentshuffle_0174:
textEntryASCII0("Silver")		//銀
talentshuffle_0175:
textEntryASCII0("Shine")		//光
talentshuffle_0176:
textEntryASCII0("TODO3")		//様
talentshuffle_0177:
textEntryASCII0("TODO3")		//族
talentshuffle_0178:
textEntryASCII0("A")			//Ａ
talentshuffle_0179:
textEntryASCII0("Z")			//Ｚ
talentshuffle_0180:
textEntryASCII0("X")			//Ｘ
talentshuffle_0181:
textEntryASCII0("U3")			//Ｕ３
talentshuffle_0182:
textEntryASCII0("Doctor")		//博士
talentshuffle_0183:
textEntryASCII0("Masked")		//仮面
talentshuffle_0184:
textEntryASCII0("TODO3")		//浪花
talentshuffle_0185:
textEntryASCII0("Time")			//三世
talentshuffle_0186:
textEntryASCII0("8-bit")		//８ビット
talentshuffle_0187:
textEntryASCII0("Three")		//スリー
talentshuffle_0188:
textEntryASCII0("Seven")		//セブン
talentshuffle_0189:
textEntryASCII0("Nine")			//ナイン
talentshuffle_0190:
textEntryASCII0("TODO3")		//とろろ
talentshuffle_0191:
textEntryASCII0("16-bit")		//１６ビット
talentshuffle_0192:
textEntryASCII0("32-bit")		//３２ビット
talentshuffle_0193:
textEntryASCII0("64-bit")		//６４ビット
talentshuffle_0194:
textEntryASCII0("Sunday")		//サンデー
talentshuffle_0195:
textEntryASCII0("128-bit")		//１２８ビット
talentshuffle_0196:
textEntryASCII0("Energy")		//元気
talentshuffle_0197:
textEntryASCII0("Honk")			//ブー
talentshuffle_0198:
textEntryASCII0("TODO3")		//五郎
talentshuffle_0199:
textEntryASCII0("TODO3")		//八郎
talentshuffle_0200:
textEntryASCII0("Man")			//マン
talentshuffle_0201:
textEntryASCII0("TODO3")		//一郎
talentshuffle_0202:
textEntryASCII0("TODO3")		//二郎
talentshuffle_0203:
textEntryASCII0("TODO3")		//三郎
talentshuffle_0204:
textEntryASCII0("TODO3")		//大助
talentshuffle_0205:
textEntryASCII0("TODO3")		//泊山
talentshuffle_0206:
textEntryASCII0("Chief")		//親方
talentshuffle_0207:
textEntryASCII0("Mentor")		//師匠
talentshuffle_0208:
textEntryASCII0("General")		//将軍
talentshuffle_0209:
textEntryASCII0("Emperor")		//帝王
talentshuffle_0210:
textEntryASCII0("Teacher")		//先生
talentshuffle_0211:
textEntryASCII0("One")			//ワン
talentshuffle_0212:
textEntryASCII0("Dad")			//パパ
talentshuffle_0213:
textEntryASCII0("Mac")			//マック
talentshuffle_0214:
textEntryASCII0("Joe")			//ジョー
talentshuffle_0215:
textEntryASCII0("Start")		//はじめ
talentshuffle_0216:
textEntryASCII0("TODO3")		//金太郎
talentshuffle_0217:
textEntryASCII0("TODO3")		//権太郎
talentshuffle_0218:
textEntryASCII0("TODO3")		//よしお
talentshuffle_0219:
textEntryASCII0("Principal")		//学園長
talentshuffle_0220:
textEntryASCII0("Catch")		//カッチー
talentshuffle_0221:
textEntryASCII0("Zaurus")		//ザウルス
talentshuffle_0222:
textEntryASCII0("Rider")		//ライダー
talentshuffle_0223:
textEntryASCII0("Ryan")			//ライアン
talentshuffle_0224:
textEntryASCII0("Brian")		//ブライアン
talentshuffle_0225:
textEntryASCII0("Woman")		//南
talentshuffle_0226:
textEntryASCII0("Plum")			//ウメ
talentshuffle_0227:
textEntryASCII0("Mom")			//ママ
talentshuffle_0228:
textEntryASCII0("Naomi")		//ナオミ
talentshuffle_0229:
textEntryASCII0("Banana")		//バナナ
talentshuffle_0230:
textEntryASCII0("Peach")		//ピーチ
talentshuffle_0231:
textEntryASCII0("Lemon")		//レモン
talentshuffle_0232:
textEntryASCII0("Light")		//ひかり
talentshuffle_0233:
textEntryASCII0("Anna")			//アンナ
talentshuffle_0234:
textEntryASCII0("Choco")		//チョコ
talentshuffle_0235:
textEntryASCII0("TODO")			//ちゃん
talentshuffle_0236:
textEntryASCII0("Buddy")		//君
talentshuffle_0237:
textEntryASCII0("Junior")		//Ｊｒ
talentshuffle_0238:
textEntryASCII0("TODO3")		//さん

//--Job
//IDs 0x0EE-0x13B (0239-0316) (Prefix)
//IDs 0x13C-0x204 (0317-0517) (Jobs)
//Male:   ID 0x13C-0x1EF (0317-0496)
//Female: ID 0x13C-0x1E1 (0317-0482) & 0x1F0-0x204 (0497-0517)
talentshuffle_0239:
textEntryASCII0("Nocturnal ")		//夜の
talentshuffle_0240:
textEntryASCII0("Loving ")		//愛の
talentshuffle_0241:
textEntryASCII0("Self-made ")		//自称
talentshuffle_0242:
textEntryASCII0("Fake ")		//にせ
talentshuffle_0243:
textEntryASCII0("Goofy ")		//爆笑
talentshuffle_0244:
textEntryASCII0("Rookie ")		//新人
talentshuffle_0245:
textEntryASCII0("Enigmatic ")		//謎の
talentshuffle_0246:
textEntryASCII0("Evil ")		//悪の
talentshuffle_0247:
textEntryASCII0("Iron ")		//鉄の
talentshuffle_0248:
textEntryASCII0("Committed ")		//働く
talentshuffle_0249:
textEntryASCII0("Famous ")		//有名
talentshuffle_0250:
textEntryASCII0("Renowned ")		//著名
talentshuffle_0251:
textEntryASCII0("Wandering ")		//放浪
talentshuffle_0252:
textEntryASCII0("Laughing ")		//笑う
talentshuffle_0253:
textEntryASCII0("Strong ")		//強い
talentshuffle_0254:
textEntryASCII0("Fighting ")		//戦う
talentshuffle_0255:
textEntryASCII0("For now, ")		//いまは
talentshuffle_0256:
textEntryASCII0("Ex-")			//過去の
talentshuffle_0257:
textEntryASCII0("Future ")		//未来の
talentshuffle_0258:
textEntryASCII0("Feared ")		//恐怖の
talentshuffle_0259:
textEntryASCII0("Hellish ")		//地獄の
talentshuffle_0260:
textEntryASCII0("Legendary ")		//伝説の
talentshuffle_0261:
textEntryASCII0("Romantic ")		//お色気
talentshuffle_0262:
textEntryASCII0("Excelling ")		//優れた
talentshuffle_0263:
textEntryASCII0("Renegade ")		//正義の
talentshuffle_0264:
textEntryASCII0("Pro. ")		//プロの
talentshuffle_0265:
textEntryASCII0("Lively ")		//陽気な
talentshuffle_0266:
textEntryASCII0("Outsider ")		//場末の
talentshuffle_0267:
textEntryASCII0("Sober ")		//地味な
talentshuffle_0268:
textEntryASCII0("Scared ")		//こわい
talentshuffle_0269:
textEntryASCII0("Trainee ")		//見習い
talentshuffle_0270:
textEntryASCII0("Great ")		//浪速の
talentshuffle_0271:
textEntryASCII0("Crude ")		//下品な
talentshuffle_0272:
textEntryASCII0("Giant ")		//でかい
talentshuffle_0273:
textEntryASCII0("Classy ")		//お上品な
talentshuffle_0274:
textEntryASCII0("Sitting ")		//こしかけ
talentshuffle_0275:
textEntryASCII0("Naughty ")		//エッチな
talentshuffle_0276:
textEntryASCII0("Unpopular ")		//売れない
talentshuffle_0277:
textEntryASCII0("Ignored ")		//去年まで
talentshuffle_0278:
textEntryASCII0("Awkward ")		//不器用な
talentshuffle_0279:
textEntryASCII0("Slacker ")		//江戸っ子
talentshuffle_0280:
textEntryASCII0("Appealing ")		//カリスマ
talentshuffle_0281:
textEntryASCII0("Super ")		//スーパー
talentshuffle_0282:
textEntryASCII0("Active ")		//いけてる
talentshuffle_0283:
textEntryASCII0("Cute ")		//かわいい
talentshuffle_0284:
textEntryASCII0("Silent ")		//静かなる
talentshuffle_0285:
textEntryASCII0("Favorite ")		//売れっ子
talentshuffle_0286:
textEntryASCII0("Serious ")		//まじめな
talentshuffle_0287:
textEntryASCII0("Strange ")		//不思議な
talentshuffle_0288:
textEntryASCII0("Kind ")		//やさしい
talentshuffle_0289:
textEntryASCII0("Dangerous ")		//あぶない
talentshuffle_0290:
textEntryASCII0("Big ")			//ビッグな
talentshuffle_0291:
textEntryASCII0("Skilled ")		//やり手の
talentshuffle_0292:
textEntryASCII0("Dark ")		//さえない
talentshuffle_0293:
textEntryASCII0("Space ")		//異次元の
talentshuffle_0294:
textEntryASCII0("People's ")		//みんなの
talentshuffle_0295:
textEntryASCII0("Best ")		//日本一の
talentshuffle_0296:
textEntryASCII0("Greatest ")		//世界一の
talentshuffle_0297:
textEntryASCII0("Energetic ")		//ピチピチ
talentshuffle_0298:
textEntryASCII0("Sweet ")		//あま－い
talentshuffle_0299:
textEntryASCII0("Prime ")		//クラス１の
talentshuffle_0300:
textEntryASCII0("Slow ")		//時をかける
talentshuffle_0301:
textEntryASCII0("Chubby ")		//太った方の
talentshuffle_0302:
textEntryASCII0("Slim ")		//痩せた方の
talentshuffle_0303:
textEntryASCII0("Smooth ")		//かっこいい
talentshuffle_0304:
textEntryASCII0("Snazzy ")		//おしゃれな
talentshuffle_0305:
textEntryASCII0("Ugly ")		//かっこ悪い
talentshuffle_0306:
textEntryASCII0("Tiny ")		//ちっちゃい
talentshuffle_0307:
textEntryASCII0("Rich ")		//運転手付きの
talentshuffle_0308:
textEntryASCII0("Handsome ")		//ビジュアル系
talentshuffle_0309:
textEntryASCII0("Fuzzy ")		//毛むくじゃらな
talentshuffle_0310:
textEntryASCII0("Stylish ")		//スタイリッシュな
talentshuffle_0311:
textEntryASCII0("Gamer ")		//ゲーム
talentshuffle_0312:
textEntryASCII0("Hired ")		//雇われ
talentshuffle_0313:
textEntryASCII0("Infamous ")		//札付きの
talentshuffle_0314:
textEntryASCII0("Cheerful ")		//威勢のいい
talentshuffle_0315:
textEntryASCII0("Powerful ")		//威勢のわるい
talentshuffle_0316:
textEntryASCII0("Cool ")		//クールな

talentshuffle_0317:
textEntryASCII0("Boss")			//主
talentshuffle_0318:
textEntryASCII0("Loser")		//犬
talentshuffle_0319:
textEntryASCII0("DJ")			//ＤＪ
talentshuffle_0320:
textEntryASCII0("TODO")			//浪人
talentshuffle_0321:
textEntryASCII0("Master")		//駅長
talentshuffle_0322:
textEntryASCII0("Merchant")		//商人
talentshuffle_0323:
textEntryASCII0("TODO")			//無職
talentshuffle_0324:
textEntryASCII0("Poet")			//詩人
talentshuffle_0325:
textEntryASCII0("President")		//社長
talentshuffle_0326:
textEntryASCII0("Manager")		//部長
talentshuffle_0327:
textEntryASCII0("Director")		//専務
talentshuffle_0328:
textEntryASCII0("Chief")		//課長
talentshuffle_0329:
textEntryASCII0("Spirit")		//妖怪
talentshuffle_0330:
textEntryASCII0("TODO")			//番長
talentshuffle_0331:
textEntryASCII0("Leader")		//班長
talentshuffle_0332:
textEntryASCII0("Teacher")		//先生
talentshuffle_0333:
textEntryASCII0("Fisherman")		//漁師
talentshuffle_0334:
textEntryASCII0("Detective")		//探偵
talentshuffle_0335:
textEntryASCII0("Carpenter")		//大工
talentshuffle_0336:
textEntryASCII0("Florist")		//花屋さん
talentshuffle_0337:
textEntryASCII0("Performer")		//俳優
talentshuffle_0338:
textEntryASCII0("Knight")		//騎士
talentshuffle_0339:
textEntryASCII0("Singer")		//歌手
talentshuffle_0340:
textEntryASCII0("Interpreter")		//通訳
talentshuffle_0341:
textEntryASCII0("Writer")		//作家
talentshuffle_0342:
textEntryASCII0("Painter")		//画家
talentshuffle_0343:
textEntryASCII0("Artisan")		//職人
talentshuffle_0344:
textEntryASCII0("Voice Actor")		//声優
talentshuffle_0345:
textEntryASCII0("Hero")			//勇者
talentshuffle_0346:
textEntryASCII0("Ghost")		//幽霊
talentshuffle_0347:
textEntryASCII0("TODO")			//河童
talentshuffle_0348:
textEntryASCII0("Prodigy")		//神童
talentshuffle_0349:
textEntryASCII0("Master")		//達人
talentshuffle_0350:
textEntryASCII0("Baddie")		//悪者
talentshuffle_0351:
textEntryASCII0("Free Person")		//自由人
talentshuffle_0352:
textEntryASCII0("Novelist")		//小説家
talentshuffle_0353:
textEntryASCII0("Clown")		//道化師
talentshuffle_0354:
textEntryASCII0("Driver")		//運転手
talentshuffle_0355:
textEntryASCII0("TODO")			//電話番
talentshuffle_0356:
textEntryASCII0("Bouncer")		//用心棒
talentshuffle_0357:
textEntryASCII0("Accountant")		//会計士
talentshuffle_0358:
textEntryASCII0("Savior")		//救世主
talentshuffle_0359:
textEntryASCII0("Chairman")		//委員長
talentshuffle_0360:
textEntryASCII0("TODO")			//気功師
talentshuffle_0361:
textEntryASCII0("Comic")		//漫才師
talentshuffle_0362:
textEntryASCII0("Artist")		//漫画家
talentshuffle_0363:
textEntryASCII0("Policeman")		//警察官
talentshuffle_0364:
textEntryASCII0("TODO")			//金融業
talentshuffle_0365:
textEntryASCII0("Model")		//モデル
talentshuffle_0366:
textEntryASCII0("Lumberjack")		//きこり
talentshuffle_0367:
textEntryASCII0("TODO")			//佃煮屋さん
talentshuffle_0368:
textEntryASCII0("Hairdresser")		//美容師
talentshuffle_0369:
textEntryASCII0("TODO")			//金魚屋さん
talentshuffle_0370:
textEntryASCII0("Baker")		//パン屋さん
talentshuffle_0371:
textEntryASCII0("Cook")			//コック
talentshuffle_0372:
textEntryASCII0("Architect")		//建築家
talentshuffle_0373:
textEntryASCII0("Medium")		//占い師
talentshuffle_0374:
textEntryASCII0("TODO")			//田舎者
talentshuffle_0375:
textEntryASCII0("TODO")			//書道家
talentshuffle_0376:
textEntryASCII0("TODO")			//劇団員
talentshuffle_0377:
textEntryASCII0("TODO")			//小学生
talentshuffle_0378:
textEntryASCII0("TODO")			//中学生
talentshuffle_0379:
textEntryASCII0("TODO")			//高校生
talentshuffle_0380:
textEntryASCII0("TODO")			//大学生
talentshuffle_0381:
textEntryASCII0("Guard")		//警備員
talentshuffle_0382:
textEntryASCII0("TODO")			//劇団員
talentshuffle_0383:
textEntryASCII0("Nerd")			//おたく
talentshuffle_0384:
textEntryASCII0("Psychic")		//霊能者
talentshuffle_0385:
textEntryASCII0("Chef")			//料理人
talentshuffle_0386:
textEntryASCII0("Warrior")		//戦闘員
talentshuffle_0387:
textEntryASCII0("Alien")		//宇宙人
talentshuffle_0388:
textEntryASCII0("Zombie")		//ゾンビ
talentshuffle_0389:
textEntryASCII0("TODO")			//背後霊
talentshuffle_0390:
textEntryASCII0("Courier")		//宅配人
talentshuffle_0391:
textEntryASCII0("Politician")		//政治家
talentshuffle_0392:
textEntryASCII0("TODO")			//牛どん屋さん
talentshuffle_0393:
textEntryASCII0("Fighter")		//格闘家
talentshuffle_0394:
textEntryASCII0("Scout")		//スカウト
talentshuffle_0395:
textEntryASCII0("TODO")			//予備校生
talentshuffle_0396:
textEntryASCII0("Idol")			//アイドル
talentshuffle_0397:
textEntryASCII0("Hustler")		//ハスラー
talentshuffle_0398:
textEntryASCII0("Shaman")		//祈とう師
talentshuffle_0399:
textEntryASCII0("Minister")		//総理大臣
talentshuffle_0400:
textEntryASCII0("Rapper")		//ラッパ－
talentshuffle_0401:
textEntryASCII0("Wrestler")		//レスラー
talentshuffle_0402:
textEntryASCII0("Dancer")		//ダンサー
talentshuffle_0403:
textEntryASCII0("TODO")			//だんご屋さん
talentshuffle_0404:
textEntryASCII0("TODO")			//広告関係
talentshuffle_0405:
textEntryASCII0("TODO")			//うなぎ屋さん
talentshuffle_0406:
textEntryASCII0("TODO")			//とうふ屋さん
talentshuffle_0407:
textEntryASCII0("TODO")			//不動産屋さん
talentshuffle_0408:
textEntryASCII0("TODO")			//めがね屋さん
talentshuffle_0409:
textEntryASCII0("TODO")			//駄菓子屋さん
talentshuffle_0410:
textEntryASCII0("TODO")			//大学教授
talentshuffle_0411:
textEntryASCII0("TODO")			//カレー屋さん
talentshuffle_0412:
textEntryASCII0("TODO")			//ボクサー
talentshuffle_0413:
textEntryASCII0("TODO")			//大道芸人
talentshuffle_0414:
textEntryASCII0("TODO")			//幼稚園児
talentshuffle_0415:
textEntryASCII0("TODO")			//お医者さん
talentshuffle_0416:
textEntryASCII0("TODO")			//絵本作家
talentshuffle_0417:
textEntryASCII0("TODO")			//社長秘書
talentshuffle_0418:
textEntryASCII0("TODO")			//妖精
talentshuffle_0419:
textEntryASCII0("Hero")			//ヒーロー
talentshuffle_0420:
textEntryASCII0("TODO")			//人造人間
talentshuffle_0421:
textEntryASCII0("TODO")			//暴れん坊
talentshuffle_0422:
textEntryASCII0("TODO")			//野球選手
talentshuffle_0423:
textEntryASCII0("TODO")			//デザイナー
talentshuffle_0424:
textEntryASCII0("TODO")			//タコ焼き屋さん
talentshuffle_0425:
textEntryASCII0("TODO")			//軍事評論家
talentshuffle_0426:
textEntryASCII0("TODO")			//カメラマン
talentshuffle_0427:
textEntryASCII0("TODO")			//雑誌編集者
talentshuffle_0428:
textEntryASCII0("TODO")			//古着屋さん
talentshuffle_0429:
textEntryASCII0("TODO")			//雑貨屋さん
talentshuffle_0430:
textEntryASCII0("TODO")			//経済評論家
talentshuffle_0431:
textEntryASCII0("TODO")			//大学助教授
talentshuffle_0432:
textEntryASCII0("TODO")			//スナイパー
talentshuffle_0433:
textEntryASCII0("TODO")			//地方公務員
talentshuffle_0434:
textEntryASCII0("TODO")			//アルバイト
talentshuffle_0435:
textEntryASCII0("TODO")			//すいか売り
talentshuffle_0436:
textEntryASCII0("TODO")			//保険外交員
talentshuffle_0437:
textEntryASCII0("TODO")			//サーファー
talentshuffle_0438:
textEntryASCII0("TODO")			//世紀末覇者
talentshuffle_0439:
textEntryASCII0("TODO")			//フリーター
talentshuffle_0440:
textEntryASCII0("TODO")			//なんでも屋さん
talentshuffle_0441:
textEntryASCII0("TODO")			//さんぱつ屋さん
talentshuffle_0442:
textEntryASCII0("TODO")			//カメラマン
talentshuffle_0443:
textEntryASCII0("TODO")			//パイロット
talentshuffle_0444:
textEntryASCII0("TODO")			//宇宙飛行士
talentshuffle_0445:
textEntryASCII0("TODO")			//やきいも屋さん
talentshuffle_0446:
textEntryASCII0("TODO")			//サラリーマン
talentshuffle_0447:
textEntryASCII0("TODO")			//バーテンダー
talentshuffle_0448:
textEntryASCII0("TODO")			//アナウンサー
talentshuffle_0449:
textEntryASCII0("TODO")			//プログラマー
talentshuffle_0450:
textEntryASCII0("TODO")			//お好み焼き屋さん
talentshuffle_0451:
textEntryASCII0("TODO")			//コンビニ店員
talentshuffle_0452:
textEntryASCII0("TODO")			//スタントマン
talentshuffle_0453:
textEntryASCII0("TODO")			//アンドロイド
talentshuffle_0454:
textEntryASCII0("TODO")			//スポーツマン
talentshuffle_0455:
textEntryASCII0("TODO")			//サッカー選手
talentshuffle_0456:
textEntryASCII0("TODO")			//ディレクター
talentshuffle_0457:
textEntryASCII0("TODO")			//ＣＧクリエーター
talentshuffle_0458:
textEntryASCII0("TODO")			//超常現象研究家
talentshuffle_0459:
textEntryASCII0("TODO")			//パソコン販売員
talentshuffle_0460:
textEntryASCII0("TODO")			//お笑いタレント
talentshuffle_0461:
textEntryASCII0("TODO")			//コピーライター
talentshuffle_0462:
textEntryASCII0("TODO")			//ゴルファー
talentshuffle_0463:
textEntryASCII0("TODO")			//地球防衛軍隊長
talentshuffle_0464:
textEntryASCII0("TODO")			//地球防衛軍隊員
talentshuffle_0465:
textEntryASCII0("TODO")			//コメンテーター
talentshuffle_0466:
textEntryASCII0("TODO")			//シャンソン歌手
talentshuffle_0467:
textEntryASCII0("TODO")			//エステティシャン
talentshuffle_0468:
textEntryASCII0("TODO")			//中古車ディーラー
talentshuffle_0469:
textEntryASCII0("TODO")			//インストラクター
talentshuffle_0470:
textEntryASCII0("TODO")			//イラストレーター
talentshuffle_0471:
textEntryASCII0("TODO")			//ボーカル
talentshuffle_0472:
textEntryASCII0("TODO")			//マラソンランナー
talentshuffle_0473:
textEntryASCII0("TODO")			//タイムスリッパー
talentshuffle_0474:
textEntryASCII0("TODO")			//タクシードライバー
talentshuffle_0475:
textEntryASCII0("TODO")			//ツアーコンダクター
talentshuffle_0476:
textEntryASCII0("TODO")			//ファッションモデル
talentshuffle_0477:
textEntryASCII0("TODO")			//ラーメン屋さん
talentshuffle_0478:
textEntryASCII0("TODO")			//王子さま
talentshuffle_0479:
textEntryASCII0("TODO")			//お姫さま
talentshuffle_0480:
textEntryASCII0("TODO")			//伝道師
talentshuffle_0481:
textEntryASCII0("TODO")			//神様
talentshuffle_0482:
textEntryASCII0("TODO")			//将軍
talentshuffle_0483:
textEntryASCII0("TODO")			//軍曹
talentshuffle_0484:
textEntryASCII0("TODO")			//力士
talentshuffle_0485:
textEntryASCII0("TODO")			//国王
talentshuffle_0486:
textEntryASCII0("TODO")			//魔王
talentshuffle_0487:
textEntryASCII0("TODO")			//パパ
talentshuffle_0488:
textEntryASCII0("TODO")			//神父
talentshuffle_0489:
textEntryASCII0("TODO")			//王様
talentshuffle_0490:
textEntryASCII0("TODO")			//武士
talentshuffle_0491:
textEntryASCII0("TODO")			//王子
talentshuffle_0492:
textEntryASCII0("TODO")			//板前
talentshuffle_0493:
textEntryASCII0("TODO")			//ボス
talentshuffle_0494:
textEntryASCII0("TODO")			//おやじ
talentshuffle_0495:
textEntryASCII0("TODO")			//アーミー
talentshuffle_0496:
textEntryASCII0("TODO")			//青年実業家
talentshuffle_0497:
textEntryASCII0("Office Lady")		//ＯＬ
talentshuffle_0498:
textEntryASCII0("Queen")		//女王
talentshuffle_0499:
textEntryASCII0("Housewife")		//主婦
talentshuffle_0500:
textEntryASCII0("Mother")		//ママ
talentshuffle_0501:
textEntryASCII0("TODO")			//美人
talentshuffle_0502:
textEntryASCII0("TODO")			//婦人
talentshuffle_0503:
textEntryASCII0("TODO")			//女優
talentshuffle_0504:
textEntryASCII0("TODO")			//マダム
talentshuffle_0505:
textEntryASCII0("TODO")			//看護婦
talentshuffle_0506:
textEntryASCII0("TODO")			//おばさん
talentshuffle_0507:
textEntryASCII0("TODO")			//チーママ
talentshuffle_0508:
textEntryASCII0("TODO")			//女子高生
talentshuffle_0509:
textEntryASCII0("TODO")			//マドンナ
talentshuffle_0510:
textEntryASCII0("TODO")			//女子大生
talentshuffle_0511:
textEntryASCII0("TODO")			//コギャル
talentshuffle_0512:
textEntryASCII0("TODO")			//保母さん
talentshuffle_0513:
textEntryASCII0("TODO")			//家事手伝い
talentshuffle_0514:
textEntryASCII0("Ballerina")		//バレリーナ
talentshuffle_0515:
textEntryASCII0("Hostess")		//女将
talentshuffle_0516:
textEntryASCII0("Waitress")		//ウェイトレス
talentshuffle_0517:
textEntryASCII0("Mannequin")		//ハウスマヌカン

//--Catchphrases
//IDs 0x205-0x24C (0518-0589)
talentshuffle_0518:
textEntryASCII0("Tweet!")		//ぴよ
talentshuffle_0519:
textEntryASCII0("Expected...")		//流石
talentshuffle_0520:
textEntryASCII0("I have cash.")		//現金
talentshuffle_0521:
textEntryASCII0("I am number one!")	//一番
talentshuffle_0522:
textEntryASCII0("I am the best!")	//１等
talentshuffle_0523:
textEntryASCII0("The special prize!")	//特賞
talentshuffle_0524:
textEntryASCII0("Classy")		//特級
talentshuffle_0525:
textEntryASCII0("The new style!")	//新型
talentshuffle_0526:
textEntryASCII0("The wrath of the sky")	//天罰
talentshuffle_0527:
textEntryASCII0("It's fate.")		//運命
talentshuffle_0528:
textEntryASCII0("Fresh!")		//新鮮
talentshuffle_0529:
textEntryASCII0("Burp!")		//げっぷ
talentshuffle_0530:
textEntryASCII0("Why?!")		//なぜ？
talentshuffle_0531:
textEntryASCII0("Woof!")		//わんっ
talentshuffle_0532:
textEntryASCII0("Baa!")			//メェ～
talentshuffle_0533:
textEntryASCII0("To bed!")		//ふとん
talentshuffle_0534:
textEntryASCII0("Banana!")		//バナナ
talentshuffle_0535:
textEntryASCII0("I'm sorry!")		//ごめん
talentshuffle_0536:
textEntryASCII0("Once upon a time...")	//今は昔
talentshuffle_0537:
textEntryASCII0("Eggplants!")		//なすび
talentshuffle_0538:
textEntryASCII0("I have a theory.")	//結果論
talentshuffle_0539:
textEntryASCII0("Dried out.")		//ドライ
talentshuffle_0540:
textEntryASCII0("A substitute.")	//さぶー
talentshuffle_0541:
textEntryASCII0("A discount!")		//安売り
talentshuffle_0542:
textEntryASCII0("I'll call someone.")	//電話して
talentshuffle_0543:
textEntryASCII0("Great!")		//グレイト
talentshuffle_0544:
textEntryASCII0("That's flattening.")	//ぺったん
talentshuffle_0545:
textEntryASCII0("I wanna go home.")	//帰りたい
talentshuffle_0546:
textEntryASCII0("No way!")		//かなしー
talentshuffle_0547:
textEntryASCII0("What time is it?!")	//今何時！
talentshuffle_0548:
textEntryASCII0("Hooray!")		//やったね
talentshuffle_0549:
textEntryASCII0("Aiya!")		//アイヤー
talentshuffle_0550:
textEntryASCII0("Achoo!")		//アチョ－
talentshuffle_0551:
textEntryASCII0("Argh!")		//ブリブリ
talentshuffle_0552:
textEntryASCII0("Mad!")			//グキッ！
talentshuffle_0553:
textEntryASCII0("Happy go lucky")	//盆と正月
talentshuffle_0554:
textEntryASCII0("Ehhh?!")		//ええか？
talentshuffle_0555:
textEntryASCII0("It's sunny today!")	//ピーカン
talentshuffle_0556:
textEntryASCII0("TODO")			//ゲジゲジ
talentshuffle_0557:
textEntryASCII0("That's a bad idea!")	//だめねん
talentshuffle_0558:
textEntryASCII0("Number 1")		//Ｎｏ．１
talentshuffle_0559:
textEntryASCII0("Stay strong!")		//滋養強壮
talentshuffle_0560:
textEntryASCII0("Do it with gusto!")	//モリモリ
talentshuffle_0561:
textEntryASCII0("Business is great!")	//商売繁盛
talentshuffle_0562:
textEntryASCII0("Oh my!")		//神さま！
talentshuffle_0563:
textEntryASCII0("Hey!")			//おーい！
talentshuffle_0564:
textEntryASCII0("Rotating Slash!")	//回転斬り！
talentshuffle_0565:
textEntryASCII0("Why not?")		//どうして？
talentshuffle_0566:
textEntryASCII0("I'm listening!")	//聞いてるー
talentshuffle_0567:
textEntryASCII0("I like that!")		//好きやねん
talentshuffle_0568:
textEntryASCII0("The fastest machine!")	//最速マシン
talentshuffle_0569:
textEntryASCII0("1st & 2nd place!")	//一着・二着
talentshuffle_0570:
textEntryASCII0("Stubborn")		//じゃじゃ馬
talentshuffle_0571:
textEntryASCII0("Curry & Rice")		//カレーライス
talentshuffle_0572:
textEntryASCII0("Thank you very much!")	//どうもどうも
talentshuffle_0573:
textEntryASCII0("No. 1 in the world!")	//よっ！日本一
talentshuffle_0574:
textEntryASCII0("Sleeps a lot.")	//睡眠たっぷり
talentshuffle_0575:
textEntryASCII0("Dreams")		//夢・ドリーム
talentshuffle_0576:
textEntryASCII0("You're kidding me.")	//なんでやねん
talentshuffle_0577:
textEntryASCII0("Boom!")		//どっか～ん！
talentshuffle_0578:
textEntryASCII0("TODO")			//チュドーン！
talentshuffle_0579:
textEntryASCII0("TODO")			//ヤム！ヤム！
talentshuffle_0580:
textEntryASCII0("Never changes.")	//変わりません
talentshuffle_0581:
textEntryASCII0("A lightning flash!")	//稲妻チョップ！
talentshuffle_0582:
textEntryASCII0("Bad service")		//出血大サービス
talentshuffle_0583:
textEntryASCII0("Cheap")		//うまい！安い！
talentshuffle_0584:
textEntryASCII0("Thankful")		//ごっつぁんです。
talentshuffle_0585:
textEntryASCII0("Bon appetit!")		//いただきま～す。
talentshuffle_0586:
textEntryASCII0("Pitcher Change!")	//ピッチャー交代！
talentshuffle_0587:
textEntryASCII0("Cheap!")		//安いよ！安いよ！
talentshuffle_0588:
textEntryASCII0("Get out and buy.")	//出ます。出します。
talentshuffle_0589:
textEntryASCII0("Guts! Youth!")		//ガッツ・根性・青春


//--Free Space 1 / Birthplace (ID 0x24D / 0590)
//IDs 0x24E-0x261 / 0591-0610 (Start)
//IDs 0x262-0x2E2 / 0611-0739 (Main)
//IDs 0x2E3-0x2EE / 0740-0751 (End)
talentshuffle_0590:
textEntryASCII0("Birthplace: ")		//出身地／
talentshuffle_0591:
textEntryASCII0("Rainy ")		//雨の
talentshuffle_0592:
textEntryASCII0("Ancient ")		//古都
talentshuffle_0593:
textEntryASCII0("Night ")		//夜の
talentshuffle_0594:
textEntryASCII0("Foggy ")		//霧の
talentshuffle_0595:
textEntryASCII0("Captivating ")		//魅惑の
talentshuffle_0596:
textEntryASCII0("Famous ")		//有名な
talentshuffle_0597:
textEntryASCII0("Precious ")		//貴重な
talentshuffle_0598:
textEntryASCII0("Lovely ")		//素敵な
talentshuffle_0599:
textEntryASCII0("Sunny ")		//晴れた
talentshuffle_0600:
textEntryASCII0("Blossomed ")		//華の
talentshuffle_0601:
textEntryASCII0("Charming ")		//魅力の
talentshuffle_0602:
textEntryASCII0("Famous ")		//有名な
talentshuffle_0603:
textEntryASCII0("Bright ")		//明るい
talentshuffle_0604:
textEntryASCII0("Beautiful ")		//きれいな
talentshuffle_0605:
textEntryASCII0("The best ")		//世界一の
talentshuffle_0606:
textEntryASCII0("Dawn ")		//夜明けの
talentshuffle_0607:
textEntryASCII0("Busy ")		//にぎやかな
talentshuffle_0608:
textEntryASCII0("Rare ")		//めずらしい
talentshuffle_0609:
textEntryASCII0("Great ")		//素晴らしい
talentshuffle_0610:
textEntryASCII0("Nostalgic ")		//なつかしの

talentshuffle_0611:
textEntryASCII0("Mountain")		//山
talentshuffle_0612:
textEntryASCII0("River")		//川
talentshuffle_0613:
textEntryASCII0("Rainbow")		//虹
talentshuffle_0614:
textEntryASCII0("Forest")		//竹林
talentshuffle_0615:
textEntryASCII0("Snow Country")		//雪国
talentshuffle_0616:
textEntryASCII0("Southern Country")	//南国
talentshuffle_0617:
textEntryASCII0("Planet")		//惑星
talentshuffle_0618:
textEntryASCII0("Fishing Village")	//漁村
talentshuffle_0619:
textEntryASCII0("Farm Village")		//農村
talentshuffle_0620:
textEntryASCII0("Mountain Village")	//山村
talentshuffle_0621:
textEntryASCII0("Graveyard")		//墓地
talentshuffle_0622:
textEntryASCII0("Universe")		//宇宙
talentshuffle_0623:
textEntryASCII0("Underwater")		//水中
talentshuffle_0624:
textEntryASCII0("Ranch")		//牧場
talentshuffle_0625:
textEntryASCII0("Movie Theater")	//映画館
talentshuffle_0626:
textEntryASCII0("Dream Island")		//夢の島
talentshuffle_0627:
textEntryASCII0("Under the Bridge")	//橋の下
talentshuffle_0628:
textEntryASCII0("Race Track")		//競馬場
talentshuffle_0629:
textEntryASCII0("Tatami")		//四畳半
talentshuffle_0630:
textEntryASCII0("Zoo")			//動物園
talentshuffle_0631:
textEntryASCII0("Aquarium")		//水族館
talentshuffle_0632:
textEntryASCII0("Stratosphere")		//成層圏
talentshuffle_0633:
textEntryASCII0("Skyscraper")		//摩天楼
talentshuffle_0634:
textEntryASCII0("Heaven")		//雲の上
talentshuffle_0635:
textEntryASCII0("Stable")		//馬小屋
talentshuffle_0636:
textEntryASCII0("Hot Spring Town")	//温泉街
talentshuffle_0637:
textEntryASCII0("Tourist Spot")		//観光地
talentshuffle_0638:
textEntryASCII0("Safety Zone")		//安全地帯
talentshuffle_0639:
textEntryASCII0("Tunnel")		//トンネル
talentshuffle_0640:
textEntryASCII0("Construction Site")	//工事現場
talentshuffle_0641:
textEntryASCII0("Coral Reef")		//サンゴ礁
talentshuffle_0642:
textEntryASCII0("Tundra")		//ツンドラ
talentshuffle_0643:
textEntryASCII0("Below the Equator")	//赤道直下
talentshuffle_0644:
textEntryASCII0("Remote Island")	//離れ小島
talentshuffle_0645:
textEntryASCII0("Cabbage Field")	//キャベツ畑
talentshuffle_0646:
textEntryASCII0("Jungle")		//ジャングル
talentshuffle_0647:
textEntryASCII0("Factory")		//半導体工場
talentshuffle_0648:
textEntryASCII0("Pyramid")		//ピラミッド
talentshuffle_0649:
textEntryASCII0("300m Underground")	//地下３００Ｍ
talentshuffle_0650:
textEntryASCII0("Demon's Land")		//魔の三角地帯
talentshuffle_0651:
textEntryASCII0("Inside the TV")	//ブラウン管の中
talentshuffle_0652:
textEntryASCII0("From a naive mind")	//あなたの純真な心
talentshuffle_0653:
textEntryASCII0("Olympics")		//オリンピック予定地
talentshuffle_0654:
textEntryASCII0("Deserted Island")	//無人島
talentshuffle_0655:
textEntryASCII0("Moon")			//月
talentshuffle_0656:
textEntryASCII0("Osaka")		//大阪府
talentshuffle_0657:
textEntryASCII0("Kyoto")		//京都府
talentshuffle_0658:
textEntryASCII0("Tokyo")		//東京都
talentshuffle_0659:
textEntryASCII0("Harajuku")		//原宿
talentshuffle_0660:
textEntryASCII0("Paris")		//パリ
talentshuffle_0661:
textEntryASCII0("Beijing")		//北京
talentshuffle_0662:
textEntryASCII0("Aomori")		//青森県
talentshuffle_0663:
textEntryASCII0("Okinawa")		//沖縄県
talentshuffle_0664:
textEntryASCII0("Antarctica")		//南極
talentshuffle_0665:
textEntryASCII0("Yokohama")		//横浜
talentshuffle_0666:
textEntryASCII0("Kobe")			//神戸
talentshuffle_0667:
textEntryASCII0("Shonan")		//湘南
talentshuffle_0668:
textEntryASCII0("Kyushu")		//九州
talentshuffle_0669:
textEntryASCII0("Sun")			//太陽
talentshuffle_0670:
textEntryASCII0("Earth")		//地球
talentshuffle_0671:
textEntryASCII0("Tokyo Bay")		//東京湾
talentshuffle_0672:
textEntryASCII0("Ancient Kyoto")	//平安京
talentshuffle_0673:
textEntryASCII0("Pluto")		//冥王星
talentshuffle_0674:
textEntryASCII0("Guam")			//グアム
talentshuffle_0675:
textEntryASCII0("Hawaii")		//ハワイ
talentshuffle_0676:
textEntryASCII0("Lake Biwa")		//琵琶湖
talentshuffle_0677:
textEntryASCII0("Lake Akan")		//阿寒湖
talentshuffle_0678:
textEntryASCII0("Mount Fuji")		//富士山
talentshuffle_0679:
textEntryASCII0("Galaxy")		//銀河系
talentshuffle_0680:
textEntryASCII0("Mu Continent")		//ムー大陸
talentshuffle_0681:
textEntryASCII0("Tibet")		//チベット
talentshuffle_0682:
textEntryASCII0("Amazon River")		//アマゾン
talentshuffle_0683:
textEntryASCII0("London")		//ロンドン
talentshuffle_0684:
textEntryASCII0("Egypt")		//エジプト
talentshuffle_0685:
textEntryASCII0("Nile River")		//ナイル川
talentshuffle_0686:
textEntryASCII0("Himalaya")		//ヒマラヤ
talentshuffle_0687:
textEntryASCII0("Hong Kong")		//ホンコン
talentshuffle_0688:
textEntryASCII0("Gobi Desert")		//ゴビ砂漠
talentshuffle_0689:
textEntryASCII0("Mu Continent")		//ムー大陸
talentshuffle_0690:
textEntryASCII0("Italy")		//イタリア
talentshuffle_0691:
textEntryASCII0("Sahara Desert")	//サハラ砂漠
talentshuffle_0692:
textEntryASCII0("Texas")		//テキサス州
talentshuffle_0693:
textEntryASCII0("Vatican City")		//バチカン市国
talentshuffle_0694:
textEntryASCII0("West Indies")		//西インド諸島
talentshuffle_0695:
textEntryASCII0("Hailar Region")	//ハイラル地方
talentshuffle_0696:
textEntryASCII0("New York")		//ニューヨーク
talentshuffle_0697:
textEntryASCII0("Madagascar")		//マダガスカル島
talentshuffle_0698:
textEntryASCII0("Hokkaido")		//北海道
talentshuffle_0699:
textEntryASCII0("Iwate")		//岩手県
talentshuffle_0700:
textEntryASCII0("Akita")		//秋田県
talentshuffle_0701:
textEntryASCII0("Niigata")		//新潟県
talentshuffle_0702:
textEntryASCII0("Miyagi")		//宮城県
talentshuffle_0703:
textEntryASCII0("Fukushima")		//福島県
talentshuffle_0704:
textEntryASCII0("Tochigi")		//栃木県
talentshuffle_0705:
textEntryASCII0("Gunma")		//群馬県
talentshuffle_0706:
textEntryASCII0("Chiba")		//千葉県
talentshuffle_0707:
textEntryASCII0("Saitama")		//埼玉県
talentshuffle_0708:
textEntryASCII0("Yamanashi")		//山梨県
talentshuffle_0709:
textEntryASCII0("Kanagawa")		//神奈川県
talentshuffle_0710:
textEntryASCII0("Shizuoka")		//静岡県
talentshuffle_0711:
textEntryASCII0("Mie")			//三重県
talentshuffle_0712:
textEntryASCII0("Nagano")		//長野県
talentshuffle_0713:
textEntryASCII0("Nara")			//奈良県
talentshuffle_0714:
textEntryASCII0("Fukui")		//福井県
talentshuffle_0715:
textEntryASCII0("Shiga")		//滋賀県
talentshuffle_0716:
textEntryASCII0("Gifu")			//岐阜県
talentshuffle_0717:
textEntryASCII0("Aichi")		//愛知県
talentshuffle_0718:
textEntryASCII0("Wakayama")		//和歌山県
talentshuffle_0719:
textEntryASCII0("Hyogo")		//兵庫県
talentshuffle_0720:
textEntryASCII0("Tottori")		//鳥取県
talentshuffle_0721:
textEntryASCII0("Okayama")		//岡山県
talentshuffle_0722:
textEntryASCII0("Shimane")		//島根県
talentshuffle_0723:
textEntryASCII0("Hiroshima")		//広島県
talentshuffle_0724:
textEntryASCII0("Yamaguchi")		//山口県
talentshuffle_0725:
textEntryASCII0("Kagawa")		//香川県
talentshuffle_0726:
textEntryASCII0("Tokushima")		//徳島県
talentshuffle_0727:
textEntryASCII0("Kochi")		//高知県
talentshuffle_0728:
textEntryASCII0("Ehime")		//愛媛県
talentshuffle_0729:
textEntryASCII0("Fukuoka")		//福岡県
talentshuffle_0730:
textEntryASCII0("Oita")			//大分県
talentshuffle_0731:
textEntryASCII0("Kumamoto")		//熊本県
talentshuffle_0732:
textEntryASCII0("Saga")			//佐賀県
talentshuffle_0733:
textEntryASCII0("Nagasaki")		//長崎県
talentshuffle_0734:
textEntryASCII0("Miyazaki")		//宮崎県
talentshuffle_0735:
textEntryASCII0("Kagoshima")		//鹿児島県
talentshuffle_0736:
textEntryASCII0("Ishikawa")		//石川県
talentshuffle_0737:
textEntryASCII0("Ibaraki")		//茨城県
talentshuffle_0738:
textEntryASCII0("Toyama")		//富山県
talentshuffle_0739:
textEntryASCII0("Yamagata")		//山形県

talentshuffle_0740:
textEntryASCII0("Outskirts")		//の外れ
talentshuffle_0741:
textEntryASCII0("Center")		//のド真中
talentshuffle_0742:
textEntryASCII0("City")			//の中心地
talentshuffle_0743:
textEntryASCII0("Other Side")		//の向こう
talentshuffle_0744:
textEntryASCII0("Beyond")		//のかなた
talentshuffle_0745:
textEntryASCII0("Corner")		//のすみっこ
talentshuffle_0746:
textEntryASCII0("Edge")			//のはしっこ
talentshuffle_0747:
textEntryASCII0("Corner")		//のかたすみ
talentshuffle_0748:
textEntryASCII0("North")		//の北
talentshuffle_0749:
textEntryASCII0("South")		//の南
talentshuffle_0750:
textEntryASCII0("East")			//の東
talentshuffle_0751:
textEntryASCII0("West")			//の西


//--Free Space 2 / Hobbies & Skills (ID 0x2EF / 0752)
//IDs 0x2F0-0x2F4 / 0753-0757 (Prefix)
//IDs 0x2F5-0x33A / 0758-0827 (Name)
//IDs 0x33B-0x341 / 0828-0834 (Suffix)
talentshuffle_0752:
textEntryASCII0("Hobbies: ")		//趣味・特技／
talentshuffle_0753:
textEntryASCII0("Secret ")		//ヒミツの
talentshuffle_0754:
textEntryASCII0("Mysterious ")		//謎の
talentshuffle_0755:
textEntryASCII0("Strange ")		//不思議な
talentshuffle_0756:
textEntryASCII0("Special ")		//スペシャル
talentshuffle_0757:
textEntryASCII0("Miraculous ")		//ミラクル

talentshuffle_0758:
textEntryASCII0("Baseball")		//野球
talentshuffle_0759:
textEntryASCII0("Language")		//英語
talentshuffle_0760:
textEntryASCII0("Travel")		//旅行
talentshuffle_0761:
textEntryASCII0("Books")		//読書
talentshuffle_0762:
textEntryASCII0("Ceremony")		//茶道
talentshuffle_0763:
textEntryASCII0("Writing")		//読書
talentshuffle_0764:
textEntryASCII0("Napping")		//昼寝
talentshuffle_0765:
textEntryASCII0("Kissing")		//キス
talentshuffle_0766:
textEntryASCII0("Space")		//ぼけ
talentshuffle_0767:
textEntryASCII0("Martial Art")		//空手
talentshuffle_0768:
textEntryASCII0("Kendo")		//剣道
talentshuffle_0769:
textEntryASCII0("Fortune Telling")	//占い
talentshuffle_0770:
textEntryASCII0("Mahjong")		//麻雀
talentshuffle_0771:
textEntryASCII0("Silence")		//沈黙
talentshuffle_0772:
textEntryASCII0("Disguise")		//変装
talentshuffle_0773:
textEntryASCII0("Somersault")		//前転
talentshuffle_0774:
textEntryASCII0("Handstand")		//逆立ち
talentshuffle_0775:
textEntryASCII0("Speed-eating")		//早食い
talentshuffle_0776:
textEntryASCII0("Plate-spinning")	//皿回し
talentshuffle_0777:
textEntryASCII0("Dozing")		//居眠り
talentshuffle_0778:
textEntryASCII0("Gambling")		//ギャンブル
talentshuffle_0779:
textEntryASCII0("Dressing")		//着付け
talentshuffle_0780:
textEntryASCII0("Comic")		//お笑い
talentshuffle_0781:
textEntryASCII0("Tennis")		//テニス
talentshuffle_0782:
textEntryASCII0("Photography")		//カメラ
talentshuffle_0783:
textEntryASCII0("Fishing")		//海づり
talentshuffle_0784:
textEntryASCII0("Throwing")		//投げ技
talentshuffle_0785:
textEntryASCII0("Meditation")		//深呼吸
talentshuffle_0786:
textEntryASCII0("Imitation")		//ものまね
talentshuffle_0787:
textEntryASCII0("Food")			//食べ歩き
talentshuffle_0788:
textEntryASCII0("Bass Fishing")		//バス釣り
talentshuffle_0789:
textEntryASCII0("Stamp")		//切手収集
talentshuffle_0790:
textEntryASCII0("Driving")		//ドライブ
talentshuffle_0791:
textEntryASCII0("Camping")		//キャンプ
talentshuffle_0792:
textEntryASCII0("Digger")		//つっこみ
talentshuffle_0793:
textEntryASCII0("Soccer")		//サッカー
talentshuffle_0794:
textEntryASCII0("Mathematics")		//あやとり
talentshuffle_0795:
textEntryASCII0("Rapping")		//しりとり
talentshuffle_0796:
textEntryASCII0("Poker")		//ポーカー
talentshuffle_0797:
textEntryASCII0("Slot Machines")	//パチンコ
talentshuffle_0798:
textEntryASCII0("LOVE")			//ＬＯＶＥ
talentshuffle_0799:
textEntryASCII0("Gymnastics")		//逆上がり
talentshuffle_0800:
textEntryASCII0("Clicking")		//クリック
talentshuffle_0801:
textEntryASCII0("Hiking")		//ひっつく
talentshuffle_0802:
textEntryASCII0("Talking")		//しゃべり
talentshuffle_0803:
textEntryASCII0("Marathon")		//マラソン
talentshuffle_0804:
textEntryASCII0("Dashing")		//ダッシュ
talentshuffle_0805:
textEntryASCII0("Plants")		//盆栽いじり
talentshuffle_0806:
textEntryASCII0("Push-ups")		//腕立て伏せ
talentshuffle_0807:
textEntryASCII0("Origami")		//遅刻・早退
talentshuffle_0808:
textEntryASCII0("Nintendo")		//ファミコン
talentshuffle_0809:
textEntryASCII0("Cleaning")		//掃除・洗濯
talentshuffle_0810:
textEntryASCII0("Bruteforcing")		//ちからずく
talentshuffle_0811:
textEntryASCII0("Snacking")		//つまみ食い
talentshuffle_0812:
textEntryASCII0("Scooping")		//金魚すくい
talentshuffle_0813:
textEntryASCII0("Helper")		//すくい投げ
talentshuffle_0814:
textEntryASCII0("Lariat")		//ラリアット
talentshuffle_0815:
textEntryASCII0("Rock-Paper-Scissors")	//じゃんけん
talentshuffle_0816:
textEntryASCII0("Massage")		//マッサージ
talentshuffle_0817:
textEntryASCII0("Video Games")		//テレビゲーム
talentshuffle_0818:
textEntryASCII0("Movie Rentals")	//ビデオレンタル
talentshuffle_0819:
textEntryASCII0("Skydiving")		//スカイダイビング
talentshuffle_0820:
textEntryASCII0("Brain Teasers")	//ブレーンバスター
talentshuffle_0821:
textEntryASCII0("Web Browsing")		//ネットサーフィン
talentshuffle_0822:
textEntryASCII0("Surfing")		//サーフィン
talentshuffle_0823:
textEntryASCII0("Internet")		//インターネット
talentshuffle_0824:
textEntryASCII0("Dancing")		//ダンス
talentshuffle_0825:
textEntryASCII0("Ballroom Dancing")	//社交ダンス
talentshuffle_0826:
textEntryASCII0("Lyrics")		//作詞
talentshuffle_0827:
textEntryASCII0("Composition")		//作曲

talentshuffle_0828:
textEntryASCII0(" Student")		//の解説
talentshuffle_0829:
textEntryASCII0(" Researcher")		//の研究
talentshuffle_0830:
textEntryASCII0(" Learner")		//の練習
talentshuffle_0831:
textEntryASCII0(" Fan")			//の鑑賞
talentshuffle_0832:
textEntryASCII0(" Collector")		//の収集
talentshuffle_0833:
textEntryASCII0(" Skeptic")		//の計画
talentshuffle_0834:
textEntryASCII0(" Expert")		//の特訓


//--Free Space 3 / Precious Treasure (ID 0x342 / 0835)
//IDs 0x343-0x350 / 0836-0849 (Adjective)
//IDs 0x351-0x39B / 0850-0924 (Name)
talentshuffle_0835:
textEntryASCII0("Treasure: ")		//大切な宝物／
talentshuffle_0836:
textEntryASCII0("Royal ")		//高級
talentshuffle_0837:
textEntryASCII0("Rare ")		//レアな
talentshuffle_0838:
textEntryASCII0("Cute ")		//かわいい
talentshuffle_0839:
textEntryASCII0("Pretty ")		//きれいな
talentshuffle_0840:
textEntryASCII0("Dangerous ")		//あぶない
talentshuffle_0841:
textEntryASCII0("Big ")			//おおきな
talentshuffle_0842:
textEntryASCII0("Little ")		//ちいさな
talentshuffle_0843:
textEntryASCII0("Cool ")		//かっこいい
talentshuffle_0844:
textEntryASCII0("Precious ")		//おしゃれな
talentshuffle_0845:
textEntryASCII0("Stylish ")		//スタイリッシュな
talentshuffle_0846:
textEntryASCII0("Super ")		//超
talentshuffle_0847:
textEntryASCII0("Brand New ")		//みごとな
talentshuffle_0848:
textEntryASCII0("Secondhand ")		//すばらしい
talentshuffle_0849:
textEntryASCII0("Elegant ")		//立派な

talentshuffle_0850:
textEntryASCII0("Money")		//お金
talentshuffle_0851:
textEntryASCII0("Movie")		//映画
talentshuffle_0852:
textEntryASCII0("Film")			//日本映画
talentshuffle_0853:
textEntryASCII0("Comic")		//マンガ
talentshuffle_0854:
textEntryASCII0("Cartoon")		//アニメ
talentshuffle_0855:
textEntryASCII0("Car")			//外車
talentshuffle_0856:
textEntryASCII0("Automobile")		//アメ車
talentshuffle_0857:
textEntryASCII0("Jetski")		//中古車
talentshuffle_0858:
textEntryASCII0("Boat")			//スーパーカー
talentshuffle_0859:
textEntryASCII0("Plane")		//クルマ
talentshuffle_0860:
textEntryASCII0("Bike")			//バイク
talentshuffle_0861:
textEntryASCII0("Mountain Bike")	//ＭＴＢ
talentshuffle_0862:
textEntryASCII0("Game Boy")		//初代ゲームボーイ
talentshuffle_0863:
textEntryASCII0("Virtual Boy")		//バーチャルボーイ
talentshuffle_0864:
textEntryASCII0("Harmonica")		//ハーモニカ
talentshuffle_0865:
textEntryASCII0("Ocarina")		//オカリナ
talentshuffle_0866:
textEntryASCII0("Guitar")		//ギター
talentshuffle_0867:
textEntryASCII0("Trumpet")		//トランペット
talentshuffle_0868:
textEntryASCII0("Piano")		//ピアノ
talentshuffle_0869:
textEntryASCII0("Chopstick")		//切れはし
talentshuffle_0870:
textEntryASCII0("Newspaper")		//スポーツ新聞
talentshuffle_0871:
textEntryASCII0("Magazine")		//週刊誌
talentshuffle_0872:
textEntryASCII0("Nunchaku")		//ヌンチャク
talentshuffle_0873:
textEntryASCII0("Thing")		//レアもの
talentshuffle_0874:
textEntryASCII0("Jewel")		//宝石
talentshuffle_0875:
textEntryASCII0("Ring")			//指輪
talentshuffle_0876:
textEntryASCII0("Necklace")		//ネックレス
talentshuffle_0877:
textEntryASCII0("Furniture")		//家具
talentshuffle_0878:
textEntryASCII0("Plush Doll")		//ぬいぐるみ
talentshuffle_0879:
textEntryASCII0("Figure")		//フィギュア
talentshuffle_0880:
textEntryASCII0("Computer")		//パソコン
talentshuffle_0881:
textEntryASCII0("TV set")		//テレビ
talentshuffle_0882:
textEntryASCII0("Stereo")		//ステレオ
talentshuffle_0883:
textEntryASCII0("Radio")		//ラジオ
talentshuffle_0884:
textEntryASCII0("Mobile Phone")		//携帯電話
talentshuffle_0885:
textEntryASCII0("Compact Disc")		//ＣＤ
talentshuffle_0886:
textEntryASCII0("Floppy Disk")		//ＭＤ
talentshuffle_0887:
textEntryASCII0("Record")		//レコード
talentshuffle_0888:
textEntryASCII0("Clothes")		//洋服
talentshuffle_0889:
textEntryASCII0("Shoes")		//靴
talentshuffle_0890:
textEntryASCII0("Roses")		//バラの花
talentshuffle_0891:
textEntryASCII0("Perfume")		//香水
talentshuffle_0892:
textEntryASCII0("Makeup")		//化粧水
talentshuffle_0893:
textEntryASCII0("Manicure")		//マニキュア
talentshuffle_0894:
textEntryASCII0("Lipstick")		//口紅
talentshuffle_0895:
textEntryASCII0("Branded Goods")	//ブランド品
talentshuffle_0896:
textEntryASCII0("Watch")		//腕時計
talentshuffle_0897:
textEntryASCII0("Ticket")		//チケット
talentshuffle_0898:
textEntryASCII0("Microwave Oven")	//電子レンジ
talentshuffle_0899:
textEntryASCII0("Dog")			//イヌ
talentshuffle_0900:
textEntryASCII0("Cat")			//ネコ
talentshuffle_0901:
textEntryASCII0("Monkey")		//サル
talentshuffle_0902:
textEntryASCII0("Cow")			//ウシ
talentshuffle_0903:
textEntryASCII0("Pig")			//ブタ
talentshuffle_0904:
textEntryASCII0("Squirrel")		//リス
talentshuffle_0905:
textEntryASCII0("Horse")		//ウマ
talentshuffle_0906:
textEntryASCII0("Snake")		//ヘビ
talentshuffle_0907:
textEntryASCII0("Turtle")		//カメ
talentshuffle_0908:
textEntryASCII0("Frog")			//カエル
talentshuffle_0909:
textEntryASCII0("Lizard")		//トカゲ
talentshuffle_0910:
textEntryASCII0("Rabbit")		//ウサギ
talentshuffle_0911:
textEntryASCII0("Penguin")		//ペンギン
talentshuffle_0912:
textEntryASCII0("Owl")			//フクロウ
talentshuffle_0913:
textEntryASCII0("Koala")		//コアラ
talentshuffle_0914:
textEntryASCII0("Panda")		//パンダ
talentshuffle_0915:
textEntryASCII0("Goldfish")		//金魚
talentshuffle_0916:
textEntryASCII0("Fishing Rod")		//釣りざお
talentshuffle_0917:
textEntryASCII0("Lure")			//ルアー
talentshuffle_0918:
textEntryASCII0("Card")			//カード
talentshuffle_0919:
textEntryASCII0("Sofa")			//ソファー
talentshuffle_0920:
textEntryASCII0("Bed")			//ベッド
talentshuffle_0921:
textEntryASCII0("Pencil")		//えんぴつ
talentshuffle_0922:
textEntryASCII0("Eraser")		//消しゴム
talentshuffle_0923:
textEntryASCII0("Wallet")		//財布
talentshuffle_0924:
textEntryASCII0("Ball")			//ボール


//--Free Space 4 / Favorite Food (ID 0x39C / 0925)
//IDs 0x39D-0x3B4 / 0926-0949 (Adjective)
//IDs 0x3B5-0x3E5 / 0950-0998 (Name)
//IDs 0x3E6-0x3FA / 0999-1019 (Kind)
talentshuffle_0925:
textEntryASCII0("Fav. Food: ")		//大好物／
talentshuffle_0926:
textEntryASCII0("Royal ")		//高級
talentshuffle_0927:
textEntryASCII0("Chilly ")		//冷し
talentshuffle_0928:
textEntryASCII0("Fresh ")		//新鮮な
talentshuffle_0929:
textEntryASCII0("Small ")		//お子様
talentshuffle_0930:
textEntryASCII0("Double ")		//ダブル
talentshuffle_0931:
textEntryASCII0("Vanilla ")		//バニラ
talentshuffle_0932:
textEntryASCII0("Triple ")		//トリプル
talentshuffle_0933:
textEntryASCII0("Plain ")		//ふつうの
talentshuffle_0934:
textEntryASCII0("Sweet ")		//あまーい
talentshuffle_0935:
textEntryASCII0("Spicy ")		//からーい
talentshuffle_0936:
textEntryASCII0("Bitter ")		//しぶーい
talentshuffle_0937:
textEntryASCII0("Tasty ")		//おいしい
talentshuffle_0938:
textEntryASCII0("Boiled ")		//よくある
talentshuffle_0939:
textEntryASCII0("Curry ")		//すっぱい
talentshuffle_0940:
textEntryASCII0("Steamed ")		//フレッシュ
talentshuffle_0941:
textEntryASCII0("Shiny ")		//ピチピチな
talentshuffle_0942:
textEntryASCII0("Tender ")		//プリプリな
talentshuffle_0943:
textEntryASCII0("Special ")		//スペシャル
talentshuffle_0944:
textEntryASCII0("3 minute ")		//３分で出来る
talentshuffle_0945:
textEntryASCII0("Instant ")		//インスタント
talentshuffle_0946:
textEntryASCII0("Unspeakable ")		//何ともいえない味の
talentshuffle_0947:
textEntryASCII0("Mixed ")		//まぜ
talentshuffle_0948:
textEntryASCII0("Hot ")			//ホット
talentshuffle_0949:
textEntryASCII0("Jelly ")		//究極の

talentshuffle_0950:
textEntryASCII0("Milk")			//牛乳
talentshuffle_0951:
textEntryASCII0("Salmon")		//紅茶
talentshuffle_0952:
textEntryASCII0("Pizza")		//ピザ
talentshuffle_0953:
textEntryASCII0("Tea")			//お茶
talentshuffle_0954:
textEntryASCII0("Hamburger")		//弁当
talentshuffle_0955:
textEntryASCII0("Liquor")		//酒かす
talentshuffle_0956:
textEntryASCII0("Tuna")			//中トロ
talentshuffle_0957:
textEntryASCII0("Cheese")		//チーズ
talentshuffle_0958:
textEntryASCII0("Butter")		//バター
talentshuffle_0959:
textEntryASCII0("Apple")		//おでん
talentshuffle_0960:
textEntryASCII0("Barbecue")		//焼き肉
talentshuffle_0961:
textEntryASCII0("Sandwich")		//きつね
talentshuffle_0962:
textEntryASCII0("Pasta")		//たぬき
talentshuffle_0963:
textEntryASCII0("Bean")			//日本酒
talentshuffle_0964:
textEntryASCII0("Red Wine")		//赤ワイン
talentshuffle_0965:
textEntryASCII0("White Wine")		//白ワイン
talentshuffle_0966:
textEntryASCII0("Cocktail")		//カクテル
talentshuffle_0967:
textEntryASCII0("Fish")			//ふぐ料理
talentshuffle_0968:
textEntryASCII0("Garlic")		//にんにく
talentshuffle_0969:
textEntryASCII0("Carrot")		//なっとう
talentshuffle_0970:
textEntryASCII0("Dumplings")		//タコ焼き
talentshuffle_0971:
textEntryASCII0("Crab")			//かにスキ
talentshuffle_0972:
textEntryASCII0("Steak")		//ステーキ
talentshuffle_0973:
textEntryASCII0("Eggs")			//目玉焼き
talentshuffle_0974:
textEntryASCII0("Rice Ball")		//おにぎり
talentshuffle_0975:
textEntryASCII0("Salmon")		//うな重
talentshuffle_0976:
textEntryASCII0("Soup")			//おしるこ
talentshuffle_0977:
textEntryASCII0("Bread")		//あんぱん
talentshuffle_0978:
textEntryASCII0("Pork")			//お茶漬け
talentshuffle_0979:
textEntryASCII0("Chicken")		//とんカツ
talentshuffle_0980:
textEntryASCII0("Mayonnaise")		//マヨネーズ
talentshuffle_0981:
textEntryASCII0("Chef's Cooking")	//シェフの味
talentshuffle_0982:
textEntryASCII0("Home Cooking")		//男の手料理
talentshuffle_0983:
textEntryASCII0("Yogurt")		//ヨーグルト
talentshuffle_0984:
textEntryASCII0("Whisky")		//ウイスキー
talentshuffle_0985:
textEntryASCII0("Chestnut")		//マロンケーキ
talentshuffle_0986:
textEntryASCII0("Chocolate")		//チョコレート
talentshuffle_0987:
textEntryASCII0("Baguette")		//フランスパン
talentshuffle_0988:
textEntryASCII0("Mom's Cooking")	//おふくろの味
talentshuffle_0989:
textEntryASCII0("Caramel")		//白玉ぜんざい
talentshuffle_0990:
textEntryASCII0("Doughnut")		//クリームぱん
talentshuffle_0991:
textEntryASCII0("Pancake")		//ホットケーキ
talentshuffle_0992:
textEntryASCII0("Ice Cream")		//アイスクリーム
talentshuffle_0993:
textEntryASCII0("Cream Puff")		//シュークリーム
talentshuffle_0994:
textEntryASCII0("French Fries")		//ソフトクリーム
talentshuffle_0995:
textEntryASCII0("Meat & Spaghetti")	//ミートスパゲッティ
talentshuffle_0996:
textEntryASCII0("Rice")			//ごはん
talentshuffle_0997:
textEntryASCII0("Meat Bun")		//にくまん
talentshuffle_0998:
textEntryASCII0("Candy")		//あんまん

talentshuffle_0999:
textEntryASCII0(" Special")		//定食
talentshuffle_1000:
textEntryASCII0(" Cake")		//御膳
talentshuffle_1001:
textEntryASCII0(" in a pot")		//なべ
talentshuffle_1002:
textEntryASCII0(" Meal")		//そば
talentshuffle_1003:
textEntryASCII0(" (Rare)")		//（松）
talentshuffle_1004:
textEntryASCII0(" (Medium Rare)")	//（竹）
talentshuffle_1005:
textEntryASCII0(" with Ketchup")	//（梅）
talentshuffle_1006:
textEntryASCII0(" Lunch")		//ランチ
talentshuffle_1007:
textEntryASCII0(" Course")		//コース
talentshuffle_1008:
textEntryASCII0(" Set")			//セット
talentshuffle_1009:
textEntryASCII0(" Pie")			//うどん
talentshuffle_1010:
textEntryASCII0(" Soup")		//カレー
talentshuffle_1011:
textEntryASCII0(" Juice")		//ジュース
talentshuffle_1012:
textEntryASCII0(" Ramen")		//ラーメン
talentshuffle_1013:
textEntryASCII0(" Coffee")		//コーヒー
talentshuffle_1014:
textEntryASCII0(" Series")		//シリーズ
talentshuffle_1015:
textEntryASCII0(" (Sour)")		//焼きソバ
talentshuffle_1016:
textEntryASCII0(" (Dry)")		//（辛口）
talentshuffle_1017:
textEntryASCII0(" (Sweet)")		//（甘口）
talentshuffle_1018:
textEntryASCII0(" (Hot)")		//（激辛）
talentshuffle_1019:
textEntryASCII0(" (Spicy)")		//（中辛）

//Special Messages (MM/DD)
//01/01 - New Year
//  ★Ａ ＨＡＰＰＹ ＮＥＷ ＹＥＡＲ ！★
//      今年も「タレントスタジオ」で
//        よいお年をお迎えください。
//            スタッフ一同より
talentshuffle_1020:
textEntryASCII0("A Happy New Year!")
talentshuffle_1021:
textEntryASCII0("Have fun with Talent Studio")
talentshuffle_1022:
textEntryASCII0("for the next year!")
talentshuffle_1023:
textEntryASCII0("From all the staff.")
//12/24 & 12/25 - Christmas Day
//        ★メリークリスマス！！★
//      この「タレントスタジオ」が
//        あなたへの贈り物です。
//            スタッフ一同より
talentshuffle_1024:
textEntryASCII0("Merry Christmas!!")
talentshuffle_1025:
textEntryASCII0("Talent Studio is our")
talentshuffle_1026:
textEntryASCII0("gift to you.")
talentshuffle_1027:
textEntryASCII0("From all the staff.")
//02/14 & 03/14 - Valentines' Day & White Day
//        ★あなたに愛を込めて！★
//      この「タレントスタジオ」が
//          私たちの愛の証です。
//            スタッフ一同より
talentshuffle_1028:
textEntryASCII0("With love!")
talentshuffle_1029:
textEntryASCII0("Talent Studio is the proof")
talentshuffle_1030:
textEntryASCII0("of my love.")
talentshuffle_1031:
textEntryASCII0("From all the staff.")
//11/03 - Autumn of Art
//          ★芸術の秋です！！★
//      この「タレントスタジオ」で
//    あなたもアーティストの仲間入り。
//            スタッフ一同より
talentshuffle_1032:
textEntryASCII0("TODO")
talentshuffle_1033:
textEntryASCII0("TODO")
talentshuffle_1034:
textEntryASCII0("TODO")
talentshuffle_1035:
textEntryASCII0("From all the staff.")

//Pointers
seek(0x92FCE0)

//Function 802A89DC
dw (talentshuffle_0001),(talentshuffle_0002),(talentshuffle_0003),(talentshuffle_0004),(talentshuffle_0005),(talentshuffle_0006),(talentshuffle_0007),(talentshuffle_0008),(talentshuffle_0009),(talentshuffle_0010),(talentshuffle_0011),(talentshuffle_0012),(talentshuffle_0013),(talentshuffle_0014),(talentshuffle_0015),(talentshuffle_0016),(talentshuffle_0017),(talentshuffle_0018),(talentshuffle_0019),(talentshuffle_0020)
dw (talentshuffle_0021),(talentshuffle_0022),(talentshuffle_0023),(talentshuffle_0024),(talentshuffle_0025),(talentshuffle_0026),(talentshuffle_0027),(talentshuffle_0028),(talentshuffle_0029),(talentshuffle_0030),(talentshuffle_0031),(talentshuffle_0032),(talentshuffle_0033),(talentshuffle_0034),(talentshuffle_0035),(talentshuffle_0036),(talentshuffle_0037),(talentshuffle_0038),(talentshuffle_0039),(talentshuffle_0040)
dw (talentshuffle_0041),(talentshuffle_0042),(talentshuffle_0043),(talentshuffle_0044),(talentshuffle_0045),(talentshuffle_0046),(talentshuffle_0047),(talentshuffle_0048),(talentshuffle_0049),(talentshuffle_0050),(talentshuffle_0051),(talentshuffle_0052),(talentshuffle_0053),(talentshuffle_0054),(talentshuffle_0055),(talentshuffle_0056),(talentshuffle_0057),(talentshuffle_0058),(talentshuffle_0059),(talentshuffle_0060)
dw (talentshuffle_0061),(talentshuffle_0062),(talentshuffle_0063),(talentshuffle_0064),(talentshuffle_0065),(talentshuffle_0066),(talentshuffle_0067),(talentshuffle_0068),(talentshuffle_0069),(talentshuffle_0070),(talentshuffle_0071),(talentshuffle_0072),(talentshuffle_0073),(talentshuffle_0074),(talentshuffle_0075),(talentshuffle_0076),(talentshuffle_0077),(talentshuffle_0078),(talentshuffle_0079),(talentshuffle_0080)
dw (talentshuffle_0081),(talentshuffle_0082),(talentshuffle_0083),(talentshuffle_0084),(talentshuffle_0085),(talentshuffle_0086),(talentshuffle_0087),(talentshuffle_0088),(talentshuffle_0089),(talentshuffle_0090),(talentshuffle_0091),(talentshuffle_0092),(talentshuffle_0093),(talentshuffle_0094),(talentshuffle_0095),(talentshuffle_0096),(talentshuffle_0097),(talentshuffle_0098),(talentshuffle_0099),(talentshuffle_0100)
dw (talentshuffle_0101),(talentshuffle_0102),(talentshuffle_0103),(talentshuffle_0104),(talentshuffle_0105),(talentshuffle_0106),(talentshuffle_0107),(talentshuffle_0108),(talentshuffle_0109),(talentshuffle_0110),(talentshuffle_0111),(talentshuffle_0112),(talentshuffle_0113),(talentshuffle_0114),(talentshuffle_0115),(talentshuffle_0116),(talentshuffle_0117),(talentshuffle_0118),(talentshuffle_0119),(talentshuffle_0120)
dw (talentshuffle_0121),(talentshuffle_0122),(talentshuffle_0123),(talentshuffle_0124),(talentshuffle_0125),(talentshuffle_0126),(talentshuffle_0127),(talentshuffle_0128),(talentshuffle_0129),(talentshuffle_0130),(talentshuffle_0131),(talentshuffle_0132),(talentshuffle_0133),(talentshuffle_0134),(talentshuffle_0135),(talentshuffle_0136),(talentshuffle_0137),(talentshuffle_0138),(talentshuffle_0139),(talentshuffle_0140)
dw (talentshuffle_0141),(talentshuffle_0142),(talentshuffle_0143),(talentshuffle_0144),(talentshuffle_0145),(talentshuffle_0146),(talentshuffle_0147),(talentshuffle_0148),(talentshuffle_0149),(talentshuffle_0150),(talentshuffle_0151),(talentshuffle_0152),(talentshuffle_0153),(talentshuffle_0154),(talentshuffle_0155),(talentshuffle_0156),(talentshuffle_0157),(talentshuffle_0158),(talentshuffle_0159),(talentshuffle_0160)
dw (talentshuffle_0161),(talentshuffle_0162),(talentshuffle_0163),(talentshuffle_0164),(talentshuffle_0165),(talentshuffle_0166),(talentshuffle_0167),(talentshuffle_0168),(talentshuffle_0169),(talentshuffle_0170),(talentshuffle_0171),(talentshuffle_0172),(talentshuffle_0173),(talentshuffle_0174),(talentshuffle_0175),(talentshuffle_0176),(talentshuffle_0177),(talentshuffle_0178),(talentshuffle_0179),(talentshuffle_0180)
dw (talentshuffle_0181),(talentshuffle_0182),(talentshuffle_0183),(talentshuffle_0184),(talentshuffle_0185),(talentshuffle_0186),(talentshuffle_0187),(talentshuffle_0188),(talentshuffle_0189),(talentshuffle_0190),(talentshuffle_0191),(talentshuffle_0192),(talentshuffle_0193),(talentshuffle_0194),(talentshuffle_0195),(talentshuffle_0196),(talentshuffle_0197),(talentshuffle_0198),(talentshuffle_0199),(talentshuffle_0200)
dw (talentshuffle_0201),(talentshuffle_0202),(talentshuffle_0203),(talentshuffle_0204),(talentshuffle_0205),(talentshuffle_0206),(talentshuffle_0207),(talentshuffle_0208),(talentshuffle_0209),(talentshuffle_0210),(talentshuffle_0211),(talentshuffle_0212),(talentshuffle_0213),(talentshuffle_0214),(talentshuffle_0215),(talentshuffle_0216),(talentshuffle_0217),(talentshuffle_0218),(talentshuffle_0219),(talentshuffle_0220)
dw (talentshuffle_0221),(talentshuffle_0222),(talentshuffle_0223),(talentshuffle_0224),(talentshuffle_0225),(talentshuffle_0226),(talentshuffle_0227),(talentshuffle_0228),(talentshuffle_0229),(talentshuffle_0230),(talentshuffle_0231),(talentshuffle_0232),(talentshuffle_0233),(talentshuffle_0234),(talentshuffle_0235),(talentshuffle_0236),(talentshuffle_0237),(talentshuffle_0238),(talentshuffle_0239),(talentshuffle_0240)
dw (talentshuffle_0241),(talentshuffle_0242),(talentshuffle_0243),(talentshuffle_0244),(talentshuffle_0245),(talentshuffle_0246),(talentshuffle_0247),(talentshuffle_0248),(talentshuffle_0249),(talentshuffle_0250),(talentshuffle_0251),(talentshuffle_0252),(talentshuffle_0253),(talentshuffle_0254),(talentshuffle_0255),(talentshuffle_0256),(talentshuffle_0257),(talentshuffle_0258),(talentshuffle_0259),(talentshuffle_0260)
dw (talentshuffle_0261),(talentshuffle_0262),(talentshuffle_0263),(talentshuffle_0264),(talentshuffle_0265),(talentshuffle_0266),(talentshuffle_0267),(talentshuffle_0268),(talentshuffle_0269),(talentshuffle_0270),(talentshuffle_0271),(talentshuffle_0272),(talentshuffle_0273),(talentshuffle_0274),(talentshuffle_0275),(talentshuffle_0276),(talentshuffle_0277),(talentshuffle_0278),(talentshuffle_0279),(talentshuffle_0280)
dw (talentshuffle_0281),(talentshuffle_0282),(talentshuffle_0283),(talentshuffle_0284),(talentshuffle_0285),(talentshuffle_0286),(talentshuffle_0287),(talentshuffle_0288),(talentshuffle_0289),(talentshuffle_0290),(talentshuffle_0291),(talentshuffle_0292),(talentshuffle_0293),(talentshuffle_0294),(talentshuffle_0295),(talentshuffle_0296),(talentshuffle_0297),(talentshuffle_0298),(talentshuffle_0299),(talentshuffle_0300)
dw (talentshuffle_0301),(talentshuffle_0302),(talentshuffle_0303),(talentshuffle_0304),(talentshuffle_0305),(talentshuffle_0306),(talentshuffle_0307),(talentshuffle_0308),(talentshuffle_0309),(talentshuffle_0310),(talentshuffle_0311),(talentshuffle_0312),(talentshuffle_0313),(talentshuffle_0314),(talentshuffle_0315),(talentshuffle_0316),(talentshuffle_0317),(talentshuffle_0318),(talentshuffle_0319),(talentshuffle_0320)
dw (talentshuffle_0321),(talentshuffle_0322),(talentshuffle_0323),(talentshuffle_0324),(talentshuffle_0325),(talentshuffle_0326),(talentshuffle_0327),(talentshuffle_0328),(talentshuffle_0329),(talentshuffle_0330),(talentshuffle_0331),(talentshuffle_0332),(talentshuffle_0333),(talentshuffle_0334),(talentshuffle_0335),(talentshuffle_0336),(talentshuffle_0337),(talentshuffle_0338),(talentshuffle_0339),(talentshuffle_0340)
dw (talentshuffle_0341),(talentshuffle_0342),(talentshuffle_0343),(talentshuffle_0344),(talentshuffle_0345),(talentshuffle_0346),(talentshuffle_0347),(talentshuffle_0348),(talentshuffle_0349),(talentshuffle_0350),(talentshuffle_0351),(talentshuffle_0352),(talentshuffle_0353),(talentshuffle_0354),(talentshuffle_0355),(talentshuffle_0356),(talentshuffle_0357),(talentshuffle_0358),(talentshuffle_0359),(talentshuffle_0360)
dw (talentshuffle_0361),(talentshuffle_0362),(talentshuffle_0363),(talentshuffle_0364),(talentshuffle_0365),(talentshuffle_0366),(talentshuffle_0367),(talentshuffle_0368),(talentshuffle_0369),(talentshuffle_0370),(talentshuffle_0371),(talentshuffle_0372),(talentshuffle_0373),(talentshuffle_0374),(talentshuffle_0375),(talentshuffle_0376),(talentshuffle_0377),(talentshuffle_0378),(talentshuffle_0379),(talentshuffle_0380)
dw (talentshuffle_0381),(talentshuffle_0382),(talentshuffle_0383),(talentshuffle_0384),(talentshuffle_0385),(talentshuffle_0386),(talentshuffle_0387),(talentshuffle_0388),(talentshuffle_0389),(talentshuffle_0390),(talentshuffle_0391),(talentshuffle_0392),(talentshuffle_0393),(talentshuffle_0394),(talentshuffle_0395),(talentshuffle_0396),(talentshuffle_0397),(talentshuffle_0398),(talentshuffle_0399),(talentshuffle_0400)
dw (talentshuffle_0401),(talentshuffle_0402),(talentshuffle_0403),(talentshuffle_0404),(talentshuffle_0405),(talentshuffle_0406),(talentshuffle_0407),(talentshuffle_0408),(talentshuffle_0409),(talentshuffle_0410),(talentshuffle_0411),(talentshuffle_0412),(talentshuffle_0413),(talentshuffle_0414),(talentshuffle_0415),(talentshuffle_0416),(talentshuffle_0417),(talentshuffle_0418),(talentshuffle_0419),(talentshuffle_0420)
dw (talentshuffle_0421),(talentshuffle_0422),(talentshuffle_0423),(talentshuffle_0424),(talentshuffle_0425),(talentshuffle_0426),(talentshuffle_0427),(talentshuffle_0428),(talentshuffle_0429),(talentshuffle_0430),(talentshuffle_0431),(talentshuffle_0432),(talentshuffle_0433),(talentshuffle_0434),(talentshuffle_0435),(talentshuffle_0436),(talentshuffle_0437),(talentshuffle_0438),(talentshuffle_0439),(talentshuffle_0440)
dw (talentshuffle_0441),(talentshuffle_0442),(talentshuffle_0443),(talentshuffle_0444),(talentshuffle_0445),(talentshuffle_0446),(talentshuffle_0447),(talentshuffle_0448),(talentshuffle_0449),(talentshuffle_0450),(talentshuffle_0451),(talentshuffle_0452),(talentshuffle_0453),(talentshuffle_0454),(talentshuffle_0455),(talentshuffle_0456),(talentshuffle_0457),(talentshuffle_0458),(talentshuffle_0459),(talentshuffle_0460)
dw (talentshuffle_0461),(talentshuffle_0462),(talentshuffle_0463),(talentshuffle_0464),(talentshuffle_0465),(talentshuffle_0466),(talentshuffle_0467),(talentshuffle_0468),(talentshuffle_0469),(talentshuffle_0470),(talentshuffle_0471),(talentshuffle_0472),(talentshuffle_0473),(talentshuffle_0474),(talentshuffle_0475),(talentshuffle_0476),(talentshuffle_0477),(talentshuffle_0478),(talentshuffle_0479),(talentshuffle_0480)
dw (talentshuffle_0481),(talentshuffle_0482),(talentshuffle_0483),(talentshuffle_0484),(talentshuffle_0485),(talentshuffle_0486),(talentshuffle_0487),(talentshuffle_0488),(talentshuffle_0489),(talentshuffle_0490),(talentshuffle_0491),(talentshuffle_0492),(talentshuffle_0493),(talentshuffle_0494),(talentshuffle_0495),(talentshuffle_0496),(talentshuffle_0497),(talentshuffle_0498),(talentshuffle_0499),(talentshuffle_0500)
dw (talentshuffle_0501),(talentshuffle_0502),(talentshuffle_0503),(talentshuffle_0504),(talentshuffle_0505),(talentshuffle_0506),(talentshuffle_0507),(talentshuffle_0508),(talentshuffle_0509),(talentshuffle_0510),(talentshuffle_0511),(talentshuffle_0512),(talentshuffle_0513),(talentshuffle_0514),(talentshuffle_0515),(talentshuffle_0516),(talentshuffle_0517),(talentshuffle_0518),(talentshuffle_0519),(talentshuffle_0520)
dw (talentshuffle_0521),(talentshuffle_0522),(talentshuffle_0523),(talentshuffle_0524),(talentshuffle_0525),(talentshuffle_0526),(talentshuffle_0527),(talentshuffle_0528),(talentshuffle_0529),(talentshuffle_0530),(talentshuffle_0531),(talentshuffle_0532),(talentshuffle_0533),(talentshuffle_0534),(talentshuffle_0535),(talentshuffle_0536),(talentshuffle_0537),(talentshuffle_0538),(talentshuffle_0539),(talentshuffle_0540)
dw (talentshuffle_0541),(talentshuffle_0542),(talentshuffle_0543),(talentshuffle_0544),(talentshuffle_0545),(talentshuffle_0546),(talentshuffle_0547),(talentshuffle_0548),(talentshuffle_0549),(talentshuffle_0550),(talentshuffle_0551),(talentshuffle_0552),(talentshuffle_0553),(talentshuffle_0554),(talentshuffle_0555),(talentshuffle_0556),(talentshuffle_0557),(talentshuffle_0558),(talentshuffle_0559),(talentshuffle_0560)
dw (talentshuffle_0561),(talentshuffle_0562),(talentshuffle_0563),(talentshuffle_0564),(talentshuffle_0565),(talentshuffle_0566),(talentshuffle_0567),(talentshuffle_0568),(talentshuffle_0569),(talentshuffle_0570),(talentshuffle_0571),(talentshuffle_0572),(talentshuffle_0573),(talentshuffle_0574),(talentshuffle_0575),(talentshuffle_0576),(talentshuffle_0577),(talentshuffle_0578),(talentshuffle_0579),(talentshuffle_0580)
dw (talentshuffle_0581),(talentshuffle_0582),(talentshuffle_0583),(talentshuffle_0584),(talentshuffle_0585),(talentshuffle_0586),(talentshuffle_0587),(talentshuffle_0588),(talentshuffle_0589),(talentshuffle_0590),(talentshuffle_0591),(talentshuffle_0592),(talentshuffle_0593),(talentshuffle_0594),(talentshuffle_0595),(talentshuffle_0596),(talentshuffle_0597),(talentshuffle_0598),(talentshuffle_0599),(talentshuffle_0600)
dw (talentshuffle_0601),(talentshuffle_0602),(talentshuffle_0603),(talentshuffle_0604),(talentshuffle_0605),(talentshuffle_0606),(talentshuffle_0607),(talentshuffle_0608),(talentshuffle_0609),(talentshuffle_0610),(talentshuffle_0611),(talentshuffle_0612),(talentshuffle_0613),(talentshuffle_0614),(talentshuffle_0615),(talentshuffle_0616),(talentshuffle_0617),(talentshuffle_0618),(talentshuffle_0619),(talentshuffle_0620)
dw (talentshuffle_0621),(talentshuffle_0622),(talentshuffle_0623),(talentshuffle_0624),(talentshuffle_0625),(talentshuffle_0626),(talentshuffle_0627),(talentshuffle_0628),(talentshuffle_0629),(talentshuffle_0630),(talentshuffle_0631),(talentshuffle_0632),(talentshuffle_0633),(talentshuffle_0634),(talentshuffle_0635),(talentshuffle_0636),(talentshuffle_0637),(talentshuffle_0638),(talentshuffle_0639),(talentshuffle_0640)
dw (talentshuffle_0641),(talentshuffle_0642),(talentshuffle_0643),(talentshuffle_0644),(talentshuffle_0645),(talentshuffle_0646),(talentshuffle_0647),(talentshuffle_0648),(talentshuffle_0649),(talentshuffle_0650),(talentshuffle_0651),(talentshuffle_0652),(talentshuffle_0653),(talentshuffle_0654),(talentshuffle_0655),(talentshuffle_0656),(talentshuffle_0657),(talentshuffle_0658),(talentshuffle_0659),(talentshuffle_0660)
dw (talentshuffle_0661),(talentshuffle_0662),(talentshuffle_0663),(talentshuffle_0664),(talentshuffle_0665),(talentshuffle_0666),(talentshuffle_0667),(talentshuffle_0668),(talentshuffle_0669),(talentshuffle_0670),(talentshuffle_0671),(talentshuffle_0672),(talentshuffle_0673),(talentshuffle_0674),(talentshuffle_0675),(talentshuffle_0676),(talentshuffle_0677),(talentshuffle_0678),(talentshuffle_0679),(talentshuffle_0680)
dw (talentshuffle_0681),(talentshuffle_0682),(talentshuffle_0683),(talentshuffle_0684),(talentshuffle_0685),(talentshuffle_0686),(talentshuffle_0687),(talentshuffle_0688),(talentshuffle_0689),(talentshuffle_0690),(talentshuffle_0691),(talentshuffle_0692),(talentshuffle_0693),(talentshuffle_0694),(talentshuffle_0695),(talentshuffle_0696),(talentshuffle_0697),(talentshuffle_0698),(talentshuffle_0699),(talentshuffle_0700)
dw (talentshuffle_0701),(talentshuffle_0702),(talentshuffle_0703),(talentshuffle_0704),(talentshuffle_0705),(talentshuffle_0706),(talentshuffle_0707),(talentshuffle_0708),(talentshuffle_0709),(talentshuffle_0710),(talentshuffle_0711),(talentshuffle_0712),(talentshuffle_0713),(talentshuffle_0714),(talentshuffle_0715),(talentshuffle_0716),(talentshuffle_0717),(talentshuffle_0718),(talentshuffle_0719),(talentshuffle_0720)
dw (talentshuffle_0721),(talentshuffle_0722),(talentshuffle_0723),(talentshuffle_0724),(talentshuffle_0725),(talentshuffle_0726),(talentshuffle_0727),(talentshuffle_0728),(talentshuffle_0729),(talentshuffle_0730),(talentshuffle_0731),(talentshuffle_0732),(talentshuffle_0733),(talentshuffle_0734),(talentshuffle_0735),(talentshuffle_0736),(talentshuffle_0737),(talentshuffle_0738),(talentshuffle_0739),(talentshuffle_0740)
dw (talentshuffle_0741),(talentshuffle_0742),(talentshuffle_0743),(talentshuffle_0744),(talentshuffle_0745),(talentshuffle_0746),(talentshuffle_0747),(talentshuffle_0748),(talentshuffle_0749),(talentshuffle_0750),(talentshuffle_0751),(talentshuffle_0752),(talentshuffle_0753),(talentshuffle_0754),(talentshuffle_0755),(talentshuffle_0756),(talentshuffle_0757),(talentshuffle_0758),(talentshuffle_0759),(talentshuffle_0760)
dw (talentshuffle_0761),(talentshuffle_0762),(talentshuffle_0763),(talentshuffle_0764),(talentshuffle_0765),(talentshuffle_0766),(talentshuffle_0767),(talentshuffle_0768),(talentshuffle_0769),(talentshuffle_0770),(talentshuffle_0771),(talentshuffle_0772),(talentshuffle_0773),(talentshuffle_0774),(talentshuffle_0775),(talentshuffle_0776),(talentshuffle_0777),(talentshuffle_0778),(talentshuffle_0779),(talentshuffle_0780)
dw (talentshuffle_0781),(talentshuffle_0782),(talentshuffle_0783),(talentshuffle_0784),(talentshuffle_0785),(talentshuffle_0786),(talentshuffle_0787),(talentshuffle_0788),(talentshuffle_0789),(talentshuffle_0790),(talentshuffle_0791),(talentshuffle_0792),(talentshuffle_0793),(talentshuffle_0794),(talentshuffle_0795),(talentshuffle_0796),(talentshuffle_0797),(talentshuffle_0798),(talentshuffle_0799),(talentshuffle_0800)
dw (talentshuffle_0801),(talentshuffle_0802),(talentshuffle_0803),(talentshuffle_0804),(talentshuffle_0805),(talentshuffle_0806),(talentshuffle_0807),(talentshuffle_0808),(talentshuffle_0809),(talentshuffle_0810),(talentshuffle_0811),(talentshuffle_0812),(talentshuffle_0813),(talentshuffle_0814),(talentshuffle_0815),(talentshuffle_0816),(talentshuffle_0817),(talentshuffle_0818),(talentshuffle_0819),(talentshuffle_0820)
dw (talentshuffle_0821),(talentshuffle_0822),(talentshuffle_0823),(talentshuffle_0824),(talentshuffle_0825),(talentshuffle_0826),(talentshuffle_0827),(talentshuffle_0828),(talentshuffle_0829),(talentshuffle_0830),(talentshuffle_0831),(talentshuffle_0832),(talentshuffle_0833),(talentshuffle_0834),(talentshuffle_0835),(talentshuffle_0836),(talentshuffle_0837),(talentshuffle_0838),(talentshuffle_0839),(talentshuffle_0840)
dw (talentshuffle_0841),(talentshuffle_0842),(talentshuffle_0843),(talentshuffle_0844),(talentshuffle_0845),(talentshuffle_0846),(talentshuffle_0847),(talentshuffle_0848),(talentshuffle_0849),(talentshuffle_0850),(talentshuffle_0851),(talentshuffle_0852),(talentshuffle_0853),(talentshuffle_0854),(talentshuffle_0855),(talentshuffle_0856),(talentshuffle_0857),(talentshuffle_0858),(talentshuffle_0859),(talentshuffle_0860)
dw (talentshuffle_0861),(talentshuffle_0862),(talentshuffle_0863),(talentshuffle_0864),(talentshuffle_0865),(talentshuffle_0866),(talentshuffle_0867),(talentshuffle_0868),(talentshuffle_0869),(talentshuffle_0870),(talentshuffle_0871),(talentshuffle_0872),(talentshuffle_0873),(talentshuffle_0874),(talentshuffle_0875),(talentshuffle_0876),(talentshuffle_0877),(talentshuffle_0878),(talentshuffle_0879),(talentshuffle_0880)
dw (talentshuffle_0881),(talentshuffle_0882),(talentshuffle_0883),(talentshuffle_0884),(talentshuffle_0885),(talentshuffle_0886),(talentshuffle_0887),(talentshuffle_0888),(talentshuffle_0889),(talentshuffle_0890),(talentshuffle_0891),(talentshuffle_0892),(talentshuffle_0893),(talentshuffle_0894),(talentshuffle_0895),(talentshuffle_0896),(talentshuffle_0897),(talentshuffle_0898),(talentshuffle_0899),(talentshuffle_0900)
dw (talentshuffle_0901),(talentshuffle_0902),(talentshuffle_0903),(talentshuffle_0904),(talentshuffle_0905),(talentshuffle_0906),(talentshuffle_0907),(talentshuffle_0908),(talentshuffle_0909),(talentshuffle_0910),(talentshuffle_0911),(talentshuffle_0912),(talentshuffle_0913),(talentshuffle_0914),(talentshuffle_0915),(talentshuffle_0916),(talentshuffle_0917),(talentshuffle_0918),(talentshuffle_0919),(talentshuffle_0920)
dw (talentshuffle_0921),(talentshuffle_0922),(talentshuffle_0923),(talentshuffle_0924),(talentshuffle_0925),(talentshuffle_0926),(talentshuffle_0927),(talentshuffle_0928),(talentshuffle_0929),(talentshuffle_0930),(talentshuffle_0931),(talentshuffle_0932),(talentshuffle_0933),(talentshuffle_0934),(talentshuffle_0935),(talentshuffle_0936),(talentshuffle_0937),(talentshuffle_0938),(talentshuffle_0939),(talentshuffle_0940)
dw (talentshuffle_0941),(talentshuffle_0942),(talentshuffle_0943),(talentshuffle_0944),(talentshuffle_0945),(talentshuffle_0946),(talentshuffle_0947),(talentshuffle_0948),(talentshuffle_0949),(talentshuffle_0950),(talentshuffle_0951),(talentshuffle_0952),(talentshuffle_0953),(talentshuffle_0954),(talentshuffle_0955),(talentshuffle_0956),(talentshuffle_0957),(talentshuffle_0958),(talentshuffle_0959),(talentshuffle_0960)
dw (talentshuffle_0961),(talentshuffle_0962),(talentshuffle_0963),(talentshuffle_0964),(talentshuffle_0965),(talentshuffle_0966),(talentshuffle_0967),(talentshuffle_0968),(talentshuffle_0969),(talentshuffle_0970),(talentshuffle_0971),(talentshuffle_0972),(talentshuffle_0973),(talentshuffle_0974),(talentshuffle_0975),(talentshuffle_0976),(talentshuffle_0977),(talentshuffle_0978),(talentshuffle_0979),(talentshuffle_0980)
dw (talentshuffle_0981),(talentshuffle_0982),(talentshuffle_0983),(talentshuffle_0984),(talentshuffle_0985),(talentshuffle_0986),(talentshuffle_0987),(talentshuffle_0988),(talentshuffle_0989),(talentshuffle_0990),(talentshuffle_0991),(talentshuffle_0992),(talentshuffle_0993),(talentshuffle_0994),(talentshuffle_0995),(talentshuffle_0996),(talentshuffle_0997),(talentshuffle_0998),(talentshuffle_0999),(talentshuffle_1000)
dw (talentshuffle_1001),(talentshuffle_1002),(talentshuffle_1003),(talentshuffle_1004),(talentshuffle_1005),(talentshuffle_1006),(talentshuffle_1007),(talentshuffle_1008),(talentshuffle_1009),(talentshuffle_1010),(talentshuffle_1011),(talentshuffle_1012),(talentshuffle_1013),(talentshuffle_1014),(talentshuffle_1015),(talentshuffle_1016),(talentshuffle_1017),(talentshuffle_1018),(talentshuffle_1019),(talentshuffle_1020)
dw (talentshuffle_1021),(talentshuffle_1022),(talentshuffle_1023),(talentshuffle_1024),(talentshuffle_1025),(talentshuffle_1026),(talentshuffle_1027),(talentshuffle_1028),(talentshuffle_1029),(talentshuffle_1030),(talentshuffle_1031),(talentshuffle_1032),(talentshuffle_1033),(talentshuffle_1034),(talentshuffle_1035)

//Hacks
//One space instead of two for names
seek(0x92B7FA); dh $01
