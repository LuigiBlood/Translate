//Mario Artist Polygon Studio
//Open World Mode

//A block has been damaged! RAM 80515A40 - NDD 0x69E480

//OPEN WORLD 2 RAM 805162F0 - NDD 0x69ED30
seek(0x69ED30)
base 0x805162F0
open2_itemfound1: //805162F0
  putTextASCIInoSeek("<CENTER>You got <FONT COLOR=#DC9600>")
open2_itemfound2: //80516310
  putTextASCIInoSeek("</FONT> !<BR>")
open2_newline: //80516328
  putTextASCIInoSeek("<BR>")
open2_endcenter1: //80516330
open2_endcenter2: //8051633C
  putTextASCIInoSeek("</CENTER>")
open2_breadnote: //80516348
  putTextASCIInoSeek("A note has been written on this bread!<BR>...")
open2_ground: //80516378
  putTextASCIInoSeek("<FONT COLOR=#4F9FDC>On this ground<BR>")
open2_air: //805163A4
  putTextASCIInoSeek("<FONT COLOR=#4F9FDC>In the air<BR>")
open2_after: //805163D4
  putTextASCIInoSeek("After <FONT COLOR=#DC4F00>")
open2_decimal: //805163F0
  putTextASCIInoSeek("%d")
open2_thisblockis: //805163F4
  putTextASCIInoSeek("This </FONT>block is<BR>yours.</FONT>")
open2_noblockanymore: //80516420
  putTextASCIInoSeek("This block is not there anymore.</FONT>")

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
  putTextASCIInoSeek(" <BR><CENTER><FONT COLOR=#DC6464>There is no power block.</FONT></CENTER>")
open3_powerblock: //80516560
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
  putTextASCIInoSeek("Error")
open4_002:
  putTextASCIInoSeek("Lifesaver")
open4_003:
  putTextASCIInoSeek("Ship")
open4_004:
  putTextASCIInoSeek("Airship")
open4_005:
  putTextASCIInoSeek("Handmade Wing")
open4_006:
  putTextASCIInoSeek("Airplane Wing")
open4_007:
  putTextASCIInoSeek("Robot Wing")
open4_008:
  putTextASCIInoSeek("Controller")
open4_009:
  putTextASCIInoSeek("Male Feet")
open4_010:
  putTextASCIInoSeek("Female Feet")
open4_011:
  putTextASCIInoSeek("Robot Feet")
open4_012:
  putTextASCIInoSeek("Elephant Feet")
open4_013:
  putTextASCIInoSeek("Dog Feet")
open4_014:
  putTextASCIInoSeek("Turtle Feet")
open4_015:
  putTextASCIInoSeek("Error 27")
open4_016:
  putTextASCIInoSeek("Bicycle Wheel")
open4_017:
  putTextASCIInoSeek("Toy Wheel")
open4_018:
  putTextASCIInoSeek("Wheel")
open4_019:
  putTextASCIInoSeek("Speed Wheel")
open4_020:
  putTextASCIInoSeek("Duck Feet")
open4_021:
  putTextASCIInoSeek("Frog Feet")
open4_022:
  putTextASCIInoSeek("Water Mill")
open4_023:
  putTextASCIInoSeek("Metal Belt")
open4_024:
  putTextASCIInoSeek("Error 42")
open4_025:
  putTextASCIInoSeek("Dino Feet")
open4_026:
  putTextASCIInoSeek("Bird Feet")
open4_027:
  putTextASCIInoSeek("Error 45")
open4_028:
  putTextASCIInoSeek("Ant Feet")
open4_029:
  putTextASCIInoSeek("Shrimp Feet")
open4_030:
  putTextASCIInoSeek("Tadpole Tail")
open4_031:
  putTextASCIInoSeek("Sea Turtle Foot")
open4_032:
  putTextASCIInoSeek("Tail Fin")
open4_033:
  putTextASCIInoSeek("Pectoral Fin")
open4_034:
  putTextASCIInoSeek("Water Propeller")
open4_035:
  putTextASCIInoSeek("Speed Water Propeller")
open4_036:
  putTextASCIInoSeek("Error 57")
open4_037:
  putTextASCIInoSeek("Butterfly Wing")
open4_038:
  putTextASCIInoSeek("Dragonfly Wing")
open4_039:
  putTextASCIInoSeek("Bird Wing")
open4_040:
  putTextASCIInoSeek("Dino Wing")
open4_041:
  putTextASCIInoSeek("Error 65")
open4_042:
  putTextASCIInoSeek("Error 66")
open4_043:
  putTextASCIInoSeek("Error 67")
open4_044:
  putTextASCIInoSeek("Propeller")
open4_045:
  putTextASCIInoSeek("Speed Propeller")
open4_046:
  putTextASCIInoSeek("Jet")
open4_047:
  putTextASCIInoSeek("Super Jet")
open4_048:
  putTextASCIInoSeek("Power Engine")
open4_049:
  putTextASCIInoSeek("Speed Engine")
open4_050:
  putTextASCIInoSeek("Power Star")

//? Blocks RAM 80516958
open4_051:
  putTextASCIInoSeek("Bike Part 1")
open4_052:
  putTextASCIInoSeek("Bike Part 2")
open4_053:
  putTextASCIInoSeek("Bike Part 3")
open4_054:
  putTextASCIInoSeek("Bike Part 4")
open4_055:
  putTextASCIInoSeek("Bike Part 5")
open4_056:
  putTextASCIInoSeek("Bike Part 6")
open4_057:
  putTextASCIInoSeek("Bike Part 7")
open4_058:
  putTextASCIInoSeek("Hurray")
open4_059:
  putTextASCIInoSeek("Shuttle")
open4_060:
  putTextASCIInoSeek("Sea Urchin")
open4_061:
  putTextASCIInoSeek("Ammonite")
open4_062:
  putTextASCIInoSeek("Strawberry")
open4_063:
  putTextASCIInoSeek("Herb")
open4_064:
  putTextASCIInoSeek("Pushups")
open4_065:
  putTextASCIInoSeek("Crystal 1")
open4_066:
  putTextASCIInoSeek("Crystal 2")
open4_067:
  putTextASCIInoSeek("Crystal 3")
open4_068:
  putTextASCIInoSeek("Crystal 4")
open4_069:
  putTextASCIInoSeek("Crystal 5")
open4_070:
  putTextASCIInoSeek("Crystal 6")
open4_071:
  putTextASCIInoSeek("Crystal 7")
open4_072:
  putTextASCIInoSeek("Bubbles")
open4_073:
  putTextASCIInoSeek("Plasma")
open4_074:
  putTextASCIInoSeek("Explosion")
open4_075:
  putTextASCIInoSeek("Shining")
open4_076:
  putTextASCIInoSeek("Smoke")
open4_077:
  putTextASCIInoSeek("Flame")
open4_078:
  putTextASCIInoSeek("Twinkling")

//Descriptions - RAM 80516ACC
//Power Blocks
open4desc_001:
  putTextASCIInoSeek("This is useless.")
open4desc_002:
open4desc_003:
  putTextASCIInoSeek("It floats on water.")
open4desc_004:
  putTextASCIInoSeek("It floats anywhere.")
open4desc_005:
open4desc_006:
open4desc_007:
  putTextASCIInoSeek("Use it for flight and gliding.")
open4desc_008:
  putTextASCIInoSeek("You can move to any direction.")
open4desc_009:
open4desc_013:
open4desc_026:
  putTextASCIInoSeek("You can walk faster.")
open4desc_010:
  putTextASCIInoSeek("You can walk like a lovely person.")
open4desc_011:
open4desc_012:
  putTextASCIInoSeek("You can walk very fast.")
open4desc_014:
  putTextASCIInoSeek("You can walk.")
open4desc_015:
  putTextASCIInoSeek("Error 27")
open4desc_016:
  putTextASCIInoSeek("You can travel.")
open4desc_017:
  putTextASCIInoSeek("You can travel faster.")
open4desc_018:
  putTextASCIInoSeek("You can travel very fast.")
open4desc_019:
  putTextASCIInoSeek("You can travel at high speeds.")
open4desc_020:
  putTextASCIInoSeek("You can walk on land and on water.")
open4desc_021:
  putTextASCIInoSeek("Walk, Swim, and Splash!")
open4desc_022:
  putTextASCIInoSeek("Travel on land and on water.")
open4desc_023:
  putTextASCIInoSeek("Travel uphill and bad roads.")
open4desc_024:
  putTextASCIInoSeek("Error 42")
open4desc_025:
  putTextASCIInoSeek("You can climb hills.")
open4desc_027:
  putTextASCIInoSeek("Error 45")
open4desc_028:
open4desc_029:
  putTextASCIInoSeek("You can walk on walls.")
open4desc_030:
open4desc_032:
open4desc_033:
  putTextASCIInoSeek("You can swim.")
open4desc_031:
  putTextASCIInoSeek("You can walk and swim.")
open4desc_034:
  putTextASCIInoSeek("You can swim underwater.")
open4desc_035:
  putTextASCIInoSeek("You can swim faster underwater.")
open4desc_036:
  putTextASCIInoSeek("Error 57")
open4desc_037:
open4desc_038:
open4desc_039:
open4desc_040:
  putTextASCIInoSeek("You can fly into the sky.")
open4desc_041:
  putTextASCIInoSeek("Error 65")
open4desc_042:
  putTextASCIInoSeek("Error 66")
open4desc_043:
  putTextASCIInoSeek("Error 67")
open4desc_044:
  putTextASCIInoSeek("You can fly faster.")
open4desc_045:
  putTextASCIInoSeek("You can fly very fast.")
open4desc_046:
  putTextASCIInoSeek("You can fly at high speeds.")
open4desc_047:
  putTextASCIInoSeek("You can fly at ultra speeds.")
open4desc_048:
  putTextASCIInoSeek("You can power up the machine.")
open4desc_049:
  putTextASCIInoSeek("You can speed up the machine.")
open4desc_050:
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
  putTextASCIInoSeek("Nothing.")
open4pdesc_002:
  putTextASCIInoSeek("The best friend for bathing.")
open4pdesc_003:
  putTextASCIInoSeek("A miracle that it floats.")
open4pdesc_004:
  putTextASCIInoSeek("Reach for the stars!")
open4pdesc_005:
  putTextASCIInoSeek("...Have you seen a talent with this?")
open4pdesc_006:
  putTextASCIInoSeek("An invitation to the sky.")
open4pdesc_007:
  putTextASCIInoSeek("The science of the 21st century.")
open4pdesc_008:
  putTextASCIInoSeek("Useful in slippery places.")
open4pdesc_009:
  putTextASCIInoSeek("There's hair under the pants.")
open4pdesc_010:
open4pdesc_011:
  putTextASCIInoSeek("You'd want to keep this.")
open4pdesc_012:
  putTextASCIInoSeek("It is rather small for the elephant.")
open4pdesc_013:
  putTextASCIInoSeek("This is probably faithful.")
open4pdesc_014:
  putTextASCIInoSeek("It is rather slow.")
open4pdesc_015:
  putTextASCIInoSeek("Error 27")
open4pdesc_016:
  putTextASCIInoSeek("It has a nice bicycle feel.")
open4pdesc_017:
  putTextASCIInoSeek("Orthodox Style")
open4pdesc_018:
  putTextASCIInoSeek("The sound is powerful.")
open4pdesc_019:
  putTextASCIInoSeek("The fastest wheels on land.")
open4pdesc_020:
  putTextASCIInoSeek("Use it as intended at the right place.")
open4pdesc_021:
  putTextASCIInoSeek("Can't stop jumping!")
open4pdesc_022:
  putTextASCIInoSeek("Multi-purpose for outdoor use.")
open4pdesc_023:
  putTextASCIInoSeek("This steel cannot be matched.")
open4pdesc_024:
  putTextASCIInoSeek("Error 42")
open4pdesc_025:
  putTextASCIInoSeek("It tastes like meat.")
open4pdesc_026:
  putTextASCIInoSeek("Deep-fried, it's delicious!")
open4pdesc_027:
  putTextASCIInoSeek("Error 45")
open4pdesc_028:
  putTextASCIInoSeek("...it kind of looks tasty.")
open4pdesc_029:
  putTextASCIInoSeek("It is a bit tough to eat.")
open4pdesc_030:
  putTextASCIInoSeek("The symbol of childhood.")
open4pdesc_031:
  putTextASCIInoSeek("It's vexing that it cannot fly.")
open4pdesc_032:
open4pdesc_033:
  putTextASCIInoSeek("It's full of calcium.")
open4pdesc_034:
  putTextASCIInoSeek("A classic to use underwater.")
open4pdesc_035:
  putTextASCIInoSeek("A bigger classic to use underwater.")
open4pdesc_036:
  putTextASCIInoSeek("Error 57")
open4pdesc_037:
  putTextASCIInoSeek("Fly like in a fairy tale.")
open4pdesc_038:
  putTextASCIInoSeek("Paint it red, like a red dragonfly?")
open4pdesc_039:
  putTextASCIInoSeek("The classic of the sky.")
open4pdesc_040:
  putTextASCIInoSeek("Feels like a monster.")
open4pdesc_041:
  putTextASCIInoSeek("Error 65")
open4pdesc_042:
  putTextASCIInoSeek("Error 66")
open4pdesc_043:
  putTextASCIInoSeek("Error 67")
open4pdesc_044:
  putTextASCIInoSeek("Enjoy the view from the sky.")
open4pdesc_045:
  putTextASCIInoSeek("Enjoy the larger view from the sky.")
open4pdesc_046:
  putTextASCIInoSeek("This makes the difference!")
open4pdesc_047:
  putTextASCIInoSeek("The fastest! Go beyond this world!")
open4pdesc_048:
open4pdesc_049:
  putTextASCIInoSeek("It does not work for living things.")
open4pdesc_050:
  putTextASCIInoSeek("Any model are now the strongest!")

//? Blocks
open4pdesc_051:
  putTextASCIInoSeek("It's a spoke.")
open4pdesc_052:
  putTextASCIInoSeek("It's a frame.")
open4pdesc_053:
  putTextASCIInoSeek("It's a light.")
open4pdesc_054:
  putTextASCIInoSeek("It's a tank.")
open4pdesc_055:
  putTextASCIInoSeek("It's a muffler.")
open4pdesc_056:
  putTextASCIInoSeek("It's a gearbox.")
open4pdesc_057:
  putTextASCIInoSeek("It's a seat.")
open4pdesc_058:
  putTextASCIInoSeek("He seems happy.")
open4pdesc_059:
  putTextASCIInoSeek("A relatively good airplane.")
open4pdesc_060:
  putTextASCIInoSeek("It looks painful.")
open4pdesc_061:
  putTextASCIInoSeek("Ancient romance.")
open4pdesc_062:
  putTextASCIInoSeek("Craving for it.")
open4pdesc_063:
  putTextASCIInoSeek("The smell may cure fatigue.")
open4pdesc_064:
  putTextASCIInoSeek("He is doing his best.")
open4pdesc_065:
  putTextASCIInoSeek("A mysterious sphere.")
open4pdesc_066:
  putTextASCIInoSeek("You can find it in a candy shop.")
open4pdesc_067:
  putTextASCIInoSeek("Cube without a bottom.")
open4pdesc_068:
  putTextASCIInoSeek("Eternally shining.")
open4pdesc_069:
  putTextASCIInoSeek("A mysterious cone.")
open4pdesc_070:
  putTextASCIInoSeek("The secret of the tube.")
open4pdesc_071:
  putTextASCIInoSeek("The surface of the water.")
open4pdesc_072:
  putTextASCIInoSeek("It's boiling.")
open4pdesc_073:
  putTextASCIInoSeek("It's buzzing.")
open4pdesc_074:
  putTextASCIInoSeek("Ka-boom!")
open4pdesc_075:
  putTextASCIInoSeek("It's shiny.")
open4pdesc_076:
  putTextASCIInoSeek("It's smoky.")
open4pdesc_077:
  putTextASCIInoSeek("It's crackling.")
open4pdesc_078:
  putTextASCIInoSeek("It's twinkling.")

//Other - RAM 80517580
  
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

//putTextASCII(0x6A02A0, "Toasters Toast Toast!!")
