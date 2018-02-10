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
putTextASCII(0x691190, "There are no blocks.")
putTextASCII(0x6911C0, "This combination may not work.")
putTextASCII(0x6911F0, "This combination may not work.")

putTextASCII(0x69E2D0, "WARNING")
putTextASCII(0x69E2DC, "WARNING")

//A block has been damaged! RAM 80515A40 - NDD 0x69E480
//One of the blocks RAM 80515A6C
//has been destroyed RAM 80515A7C
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
  putTextASCIInoSeek("<CENTER>You got <FONT COLOR=#DC9600>")
open2_itemfound2: //80516310
  putTextASCIInoSeek("</FONT> !<BR>")
open2_newline: //80516328
  putTextASCIInoSeek("<BR>")
open2_endcenter1: //80516330
open2_endcenter2: //8051633C
  putTextASCIInoSeek("</CENTER>")
open2_breadnote: //80516348
  putTextASCIInoSeek("A note is written on this bread!<BR>...")
open2_ground: //80516378
  putTextASCIInoSeek("<FONT COLOR=#4F9FDC>On this land,<BR>")
open2_air: //805163A4
  putTextASCIInoSeek("<FONT COLOR=#4F9FDC>In the skies,<BR>")
open2_after: //805163D4
  putTextASCIInoSeek("there are <FONT COLOR=#DC4F00>")
open2_decimal: //805163F0
  putTextASCIInoSeek("%d")
open2_thisblockis: //805163F4
  putTextASCIInoSeek("</FONT> blocks left.</FONT>")
open2_noblockanymore: //80516420
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
  putTextASCIInoSeek("You can drive.")
open4desc_017:
  putTextASCIInoSeek("You can drive faster.")
open4desc_018:
  putTextASCIInoSeek("You can drive very fast.")
open4desc_019:
  putTextASCIInoSeek("You can drive at high speeds.")
open4desc_020:
  putTextASCIInoSeek("You can walk on land & on water.")
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
  putTextASCIInoSeek("This is pretty orthodox.")
open4pdesc_018:
  putTextASCIInoSeek("The sound is powerful.")
open4pdesc_019:
  putTextASCIInoSeek("The fastest wheels on land.")
open4pdesc_020:
  putTextASCIInoSeek("Use it at the right place.")
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

//Easter Eggs - RAM 80517580
open4easteregg_001:
open4easteregg_002:
open4easteregg_003:
open4easteregg_004:
open4easteregg_005:
  putTextSJISnoSeek("Ouch")
open4easteregg_006:
  putTextSJISnoSeek("It hurts")
open4easteregg_007:
  putTextSJISnoSeek("It is awful")
open4easteregg_008:
  putTextSJISnoSeek("What will you do?")
open4easteregg_009:
  putTextSJISnoSeek("Stop it")
open4easteregg_010:
  putTextSJISnoSeek("Do not panic")
open4easteregg_011:
  putTextSJISnoSeek("Oh")
open4easteregg_012:
  putTextSJISnoSeek("Love")
open4easteregg_013:
  putTextSJISnoSeek("Ahh")
open4easteregg_014:
  putTextSJISnoSeek("Hunger")
open4easteregg_015:
  putTextSJISnoSeek("Whirr")
open4easteregg_016:
  putTextSJISnoSeek("Dang")
open4easteregg_017:
  putTextSJISnoSeek("Shoo")
open4easteregg_018:
  putTextSJISnoSeek("Ermine")
open4easteregg_019:
  putTextSJISnoSeek("Fried")
open4easteregg_020:
  putTextSJISnoSeek("Fish")
open4easteregg_021:
  putTextSJISnoSeek("Hehehe")
open4easteregg_022:
  putTextSJISnoSeek("Haha!Fairies!")
open4easteregg_023:
  putTextSJISnoSeek("Where is the prince charming?")
open4easteregg_024:
  putTextSJISnoSeek("Hehehehehehehehe")
open4easteregg_025:
  putTextSJISnoSeek("Eating the cake")
open4easteregg_026:
  putTextSJISnoSeek("Does it hurt?")
open4easteregg_027:
  putTextSJISnoSeek("Please stop")
open4easteregg_028:
  putTextSJISnoSeek("Appealing")
open4easteregg_029:
  putTextSJISnoSeek("Hey it hurts!")
open4easteregg_030:
  putTextSJISnoSeek("Walking around")
open4easteregg_031:
  putTextSJISnoSeek("You are wasting your time")
open4easteregg_032:
  putTextSJISnoSeek("Crying")
open4easteregg_033:
  putTextSJISnoSeek("You will not be so lucky")
open4easteregg_034:
  putTextSJISnoSeek("Behind the scenes")
open4easteregg_035:
  putTextSJISnoSeek("Do not want Tasmania")
open4easteregg_036:
  putTextSJISnoSeek("Drool")
open4easteregg_037:
  putTextSJISnoSeek("Careless")
open4easteregg_038:
  putTextSJISnoSeek("Night Sweat")
open4easteregg_039:
  putTextSJISnoSeek("Narrow")
open4easteregg_040:
  putTextSJISnoSeek("Sea Route")
open4easteregg_041:
  putTextSJISnoSeek("Bonjour Mademoiselle")
open4easteregg_042:
  putTextSJISnoSeek("Erase")
open4easteregg_043:
  putTextSJISnoSeek("Ambient")
open4easteregg_044:
  putTextSJISnoSeek("Bonjour Monsieur")
open4easteregg_045:
  putTextSJISnoSeek("Je t'aime moi|aussi")

//Toasters RAM 80517860
open4toast01_1:
open4toast02_1:
open4toast03_1:
open4toast04_1:
open4toast05_1:
open4toast06_1:
open4toast07_1:
open4toast08_1:
open4toast09_1:
open4toast10_1:
open4toast11_1:
open4toast12_1:
open4toast13_1:
open4toast14_1:
open4toast15_1:
open4toast16_1:
open4toast17_1:
open4toast18_1:
open4toast19_1:
open4toast20_1:
open4toast21_1:
open4toast22_1:
open4toast23_1:
open4toast24_1:
open4toast25_1:
open4toast26_1:
  putTextASCIInoSeek("A note is written on this bread!<BR>...")
open4toast01_2:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Greetings, this is the bakery.<BR>Nice to meet you.</FONT>")
open4toast01_3:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>For 50 years, we have been<BR>placing these toasters in this world.<BR>We bake the bread you can trust.</FONT>")
open4toast01_4:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Our baker has put his mind and<BR>love into making bread.<BR>The best <FONT COLOR=#DC4F00>hints</FONT> have been written.</FONT>")
open4toast01_5:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>He has put his mind into it all night,<BR>so if you see us, please come in<BR>and take a look.</FONT>")
open4toast01_6:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Of course, all of our breads are<BR>additive-free and the crumbs<BR>are soft.</FONT>")

open4toast02_2:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Sometimes the model does<BR>not travel straight...<BR>Ever had that happen to you?</FONT>")
open4toast02_3:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>In this world, if you build<BR>the blocks <FONT COLOR=#DC4F00><FONT SIZE=4>symmetrically</FONT></FONT>,<BR>the model will stabilize.</FONT>")
open4toast02_4:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Why?<BR>I don't know. Perhaps it is just<BR>the laws of the universe.</FONT>")
open4toast02_5:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Just between you and me, using<BR><FONT COLOR=#DC4F00><FONT SIZE=4>Mirror Copy</FONT></FONT> may be the easy<BR>way to build symmetrical models.</FONT>")
open4toast02_6:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F><FONT COLOR=#DC4F00><FONT SIZE=4>Mirror Copy</FONT></FONT> would be more<BR>effective for power blocks as well.</FONT>")

open4toast03_2:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Sometimes the model is just<BR>not fast enough...<BR>That can be bothersome.</FONT>")
open4toast03_3:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>In this world, blocks that<BR>are near the ground may<BR><FONT COLOR=#DC4F00>get rubbed and slow down</FONT>.</FONT>")
open4toast03_4:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>It may seem like it doesn't<BR>touch the ground, but its<BR><FONT COLOR=#DC4F00>weight may sink it down</FONT>.</FONT>")
open4toast03_5:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Of course, you would want to<BR>get rid of that problem.</FONT>")
open4toast03_6:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Such things are heavy,<BR>could you <FONT COLOR=#DC4F00>attach a power block<BR>at the bottom of it</FONT>?</FONT>")
open4toast03_7:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>The point is, anything that's<BR><FONT COLOR=#DC4F00>not a power block</FONT> should<BR>not touch the ground.</FONT>")

open4toast04_2:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>You may have noticed that<BR>the <FONT COLOR=#CFCFCF>Z trigger</FONT> performs a different<BR>function from the other modes...</FONT>")
open4toast04_3:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Pressing the <FONT COLOR=#CFCFCF>Z trigger</FONT> will cause<BR><FONT COLOR=#DC4F00>the camera to move<BR>behind the model</FONT>.</FONT>")
open4toast04_4:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>It is what it is in this world.<BR>Ignoring what you have set in the<BR>Options menu could be a problem.</FONT>")
open4toast04_5:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>You will get used to it<BR>before you know it.</FONT>")

open4toast05_2:
open4toast13_2:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>This is the beginner's bread of<BR>this world.</FONT>")
open4toast05_3:
open4toast13_3:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>I have a lot to talk about,<BR>so if you don't want to hear,<BR>press the <FONT COLOR=#2FDF2F>B Button</FONT> to stop.</FONT>")
open4toast05_4:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>In this world, <FONT SIZE=1>if I remember correctly,</FONT><BR>many blocks have fallen.</FONT>")
open4toast05_5:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Among them are the <FONT COLOR=#DC4F00>power blocks</FONT>.<BR>To get around in this world,<BR><FONT COLOR=#DC4F00>these blocks are essential</FONT>.</FONT>")
open4toast05_6:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>These blocks have various abilities.<BR>You can check them out by<BR>pressing the <FONT COLOR=#DC4F00>START Button</FONT>.</FONT>")
open4toast05_7:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>When you pick up a new block,<BR><FONT COLOR=#DC4F00>assemble</FONT> it on your model,<BR>and look at the results.</FONT>")
open4toast05_8:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>When you are assembling,<BR>pay close attention to the<BR>orientation of the block.</FONT>")
open4toast05_9:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Usually when you call in the block,<BR>its orientation should be all right.</FONT>")
open4toast05_10:
open4toast13_12:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>With all that in mind,<BR>have a nice trip!</FONT>")

open4toast06_2:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>You may have this problem:<BR>[I am slowing down!]</FONT>")
open4toast06_3:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>If it isn't because of <FONT COLOR=#FFFFCF>sand</FONT> or <FONT COLOR=#FFFFFF>snow</FONT>,<BR>you may be losing momentum<BR>because of a slope.</FONT>")
open4toast06_4:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F><FONT COLOR=#DC4F00>The angle of the slope<BR>that a block can climb</FONT> is<BR>different for each.</FONT>")
open4toast06_5:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>This problem may also occur:<BR>[My jump doesn't reach!]</FONT>")
open4toast06_6:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>In that case, use a foot block.<BR><FONT COLOR=#DC4F00>Feet makes you jump higher</FONT>.</FONT>")

open4toast07_2:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Mysterious panels have been<BR>rising all around the world.<BR>No one knows what they are.</FONT>")
open4toast07_3:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>They give mysterious powers<BR>to anybody who touches them<BR>immediately.</FONT>")
open4toast07_4:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F><FONT COLOR=#2FBFDF>Panels with a blue feather</FONT><BR>are Dash Panels.</FONT>")
open4toast07_5:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F><FONT COLOR=#FF6F2F>Panels with a red frog</FONT><BR>are Jump Panels.</FONT>")
open4toast07_6:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Both will speed you up<BR>once you touch them.</FONT>")
open4toast07_7:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>If you jump with the <FONT COLOR=#2F2FDF>A Button</FONT><BR>just before hitting it,<BR>you will go even higher.</FONT>")

open4toast08_2:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>In the future, you will find<BR>a block called <FONT COLOR=#DC4F00>Controller</FONT>.</FONT>")
open4toast08_3:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>You can freely turn with it,<BR>even in slippery places<BR>or in the air.</FONT>")
open4toast08_4:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>You can change direction<BR>anywhere you want, it makes<BR>collecting blocks much easier.</FONT>")
open4toast08_5:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>However, going straight forward<BR>may feel a lot different.</FONT>")

open4toast09_2:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>In this world, there are<BR>small and large creatures<BR>who may get in your way.</FONT>")
open4toast09_3:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F><FONT COLOR=#DC4F00>The big ones</FONT> loves blocks<BR>so much, they eat those.</FONT>")
open4toast09_4:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>They are quite the gourmet,<BR>and will eat away<BR>your most important blocks.</FONT>")
open4toast09_5:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F><FONT COLOR=#DC4F00>The small ones</FONT> loves<BR>ramming into people.</FONT>")
open4toast09_6:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>We don't get a lot of visitors here,<BR>so they're quite lonely.</FONT>")
open4toast09_7:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>In love and friendship of this world,<BR>those silly creatures are protected.</FONT>")
open4toast09_8:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>When you are in danger,<BR>please don't strike them back.</FONT>")
open4toast09_9:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Perhaps I should rather say,<BR>it's impossible to fight back.</FONT>")

open4toast10_2:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>People often have this problem:<BR>[My blocks are broken!]<BR>Here are the possible reasons.</FONT>")
open4toast10_3:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Of course, even in the model,<BR>there's no exception.</FONT>")
open4toast10_4:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>On strong impact,<BR>your blocks may explode.</FONT>")
open4toast10_5:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>On very high speeds,<BR>avoid hitting the ground<BR>or the walls.</FONT>")
open4toast10_6:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>If it happens, just <FONT COLOR=#DC4F00>retry</FONT>,<BR>your blocks will be all patched up.</FONT>")
open4toast10_7:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>But I have heard that if <FONT COLOR=#DC4F00>you do<BR>something just right when you get<BR>hit</FONT>, nothing will break.</FONT>")

open4toast11_2:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>The ancient mystery,<BR>the pyramid.</FONT>")
open4toast11_3:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>The legends say it was<BR>flying in the sky.</FONT>")
open4toast11_4:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Also, <FONT COLOR=#DC4F00>the entrance seems to be<BR>hidden.</FONT> What is inside is<BR>shrouded in mystery.</FONT>")

open4toast12_2:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Next to the toaster, there's that<BR>light brown tower looking thing.<BR>It is said to be a Frog Tower.</FONT>")
open4toast12_3:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>I'm thinking there's a<BR>meaning to this.<BR>There must be a meaning.</FONT>")
open4toast12_4:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Why is it a frog?<BR>Who built such a thing?<BR>There's only so much questions.</FONT>")
open4toast12_5:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>For now, you just need<BR>to remember that<BR>[this tower is a landmark].</FONT>")

open4toast13_4:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>I don't know how much<BR>you like exploring, but this world<BR>has various places to go to.</FONT>")
open4toast13_5:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>There are places with <FONT COLOR=#FFFFCF>sand</FONT>, <FONT COLOR=#FFFFFF>snow</FONT><BR>and <FONT COLOR=#FFAFFF>thorny</FONT> grounds, so be careful.</FONT>")
open4toast13_6:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Only few power blocks works<BR>on <FONT COLOR=#FFFFCF>sand</FONT>, <FONT COLOR=#FFFFFF>snow</FONT> and <FONT COLOR=#FFAFFF>thorns</FONT>.</FONT>")
open4toast13_7:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Watch out for <FONT COLOR=#AFFFFF>ice</FONT>, <FONT COLOR=#AFAFAF>iron</FONT> and more,<BR>or you will lose control and slip.</FONT>")
open4toast13_8:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>[I cannot proceed any further.]<BR>Check the ground and<BR>the blocks you have.</FONT>")
open4toast13_9:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>I recommend also<BR>checking the walls.</FONT>")
open4toast13_10:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>[Something's wrong with the wall.]<BR>If you suspect something is weird,<BR>try touching the wall.</FONT>")
open4toast13_11:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Touch it and... surprise!<BR>It's like something's changing...</FONT>")

open4toast14_2:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Every time you find a block,<BR>a mysterious pillar grows...</FONT>")
open4toast14_3:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>The role of the pillar is to<BR>connect the land and the sky.</FONT>")
open4toast14_4:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Once you have enough blocks,<BR>the pillar will reach the sky.</FONT>")
open4toast14_5:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Well... Even without the pillar,<BR>you can still fly into the sky.</FONT>")
open4toast14_6:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Old equipment will always<BR>be replaced by newer ones.<BR>It is inevitable.</FONT>")
open4toast14_7:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Isn't this<BR><FONT SIZE=6>romantic?</FONT></FONT>")
open4toast14_8:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Feel free to leave when you want.<BR>Surely the world you want<BR>will be waiting for you.</FONT>")

open4toast15_2:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>On the top-left of the screen,<BR>there's a radar. Dots will appear<BR>relative to your position.</FONT>")
open4toast15_3:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>It shows the location of <FONT COLOR=#DC4F00>entrances</FONT><BR>and <FONT COLOR=#DC4F00>blocks</FONT>.</FONT>")
open4toast15_4:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F><FONT COLOR=#8F8F8F>Black dots</FONT> are entrances and exits.<BR><FONT COLOR=#DF2F2F>Red dots</FONT> are blocks above you.<BR><FONT COLOR=#2F2FDF>Blue dots</FONT> are blocks below you.</FONT>")
open4toast15_5:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Please note that blocks are<BR>not displayed in buildings.</FONT>")
open4toast15_6:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Here's a secret...<BR>You can put out the radar and<BR>other gauges with the <FONT COLOR=#CFCFCF>L Button</FONT>.</FONT>")

open4toast16_2:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Only one in this world,<BR>only one,<BR>really the only one.</FONT>")
open4toast16_3:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>There is a transparent passage<BR>that cannot be seen at night.</FONT>")
open4toast16_4:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Because there is only one,<BR>you must see it...<BR>By all means, please look for it.</FONT>")

open4toast17_2:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Flying into the sky,<BR>until the altitude does not rise...<BR>It happened to you, isn't it?</FONT>")
open4toast17_3:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>In this world, for <FONT COLOR=#DC4F00>each block<BR>that can fly</FONT>, there's a limit<BR>of height that it can reach.</FONT>")
open4toast17_4:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>If you want to go higher,<BR>look for more powerful blocks.</FONT>")
open4toast17_5:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>...While I'm at it,<BR>as I take pleasure in writing this,</FONT>")
open4toast17_6:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>I am the owner of the bakery.<BR>This bread will be the last one<BR>of my journey of training.</FONT>")
open4toast17_7:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>If my bread hints have helped you<BR>on your journey,<BR>I cannot be happier.</FONT>")
open4toast17_8:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>I present my sincere thanks to you.<BR>My destination is a secret.</FONT>")

open4toast18_2:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Remember park slides?<BR>In this world, while we're<BR>talking about slides...</FONT>")
open4toast18_3:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>When you slide, you cannot stop.<BR>The direction as you enter is<BR>very important.</FONT>")
open4toast18_4:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>If you use the <FONT COLOR=#DC4F00>Controller</FONT>,<BR>you can turn while sliding,<BR>it might be a little easier.</FONT>")

open4toast19_2:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Speaking of Bread Hints here,<BR>the Pyramid here is pretty humid.</FONT>")
open4toast19_3:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Because the Pyramid is humid,<BR>things are going haywire.</FONT>")
open4toast19_4:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>The altitude display is broken,<BR>flying blocks drops in<BR>performance...</FONT>")
open4toast19_5:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Don't worry, there's nothing<BR>to worry about, the blocks<BR>are not breaking.</FONT>")

open4toast20_2:
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>This is the bakery.<BR>Nice to meet you!</FONT>")
open4toast20_3:
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>The owner is my older brother.<BR>Since he is gone on a journey,<BR>I'm taking his place for now.</FONT>")
open4toast20_4:
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>That's right,<BR>in reverence to my older brother,<BR>I've burned his face on the bread.</FONT>")
open4toast20_5:
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>Isn't that nice?<BR>By the way, we're twins,<BR>so my face is like this too!</FONT>")
open4toast20_6:
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>Even with this face,<BR>our bread is additive-free<BR>so this is still safe!</FONT>")

open4toast21_2:
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>It looks like you're<BR>in a long corridor.</FONT>")
open4toast21_3:
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>With the <FONT COLOR=#CFCFCF>R Button</FONT>,<BR>you can change into a car,<BR>it feels good!</FONT>")

open4toast22_2:
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>This room is the<BR>only room at the top.<BR>I've heard of a nice block in there!</FONT>")
open4toast22_3:
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>But the block seems<BR>to be hidden in a nasty place!</FONT>")
open4toast22_4:
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>There are different<BR>patterns of walls.<BR>Let's try to bump into those!</FONT>")

open4toast23_2:
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>Well... If you want to fly...<BR>You may think putting on wings<BR>might be a good idea,</FONT>")
open4toast23_3:
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>But, perhaps...<BR>there's something easier to use.</FONT>")
open4toast23_4:
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>Sometimes, you just want<BR>to go straight up, right?</FONT>")
open4toast23_5:
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>That is, if you put wings,<BR>they can slow you down.</FONT>")
open4toast23_6:
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>Maybe, you could go upwards,<BR>with some kind of force,<BR>like an helicopter.</FONT>")
open4toast23_7:
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>It's amazing,<BR>how easier it may be<BR>compared to a model with wings!</FONT>")

open4toast24_2:
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>Well, it looks like the Power Star<BR>is making all the blocks<BR>much stronger.</FONT>")
open4toast24_3:
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>But there are a few that<BR>won't change, like the strongest<BR>blocks at the start.</FONT>")
open4toast24_4:
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>Don't compare it to engines.<BR>They're different.</FONT>")
open4toast24_5:
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>As I am writing this,<BR>I have decided to go on a journey,<BR>like my older brother!</FONT>")
open4toast24_6:
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>So, this is my last bread.<BR>Thank you very much!</FONT>")
open4toast24_7:
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>It's big news,<BR>but typical of bread hints,<BR>I'll write hints of our destinations!</FONT>")
open4toast24_8:
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>Well,<BR>my older brother is very far away,<BR>while I am at a very high place!</FONT>")
open4toast24_9:
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>If you are interested,<BR>please come!</FONT>")

open4toast25_2:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>Greetings, this is the baker.</FONT>")
open4toast25_3:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>I did not realize<BR>as I was training here...<BR>I became a block.</FONT>")
open4toast25_4:
  putTextASCIInoSeek("<FONT COLOR=#DC9F4F>I would be glad if you think<BR>I am useful. Please go ahead<BR>and take me with you.</FONT>")

open4toast26_2:
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>Hey! This is the baker.</FONT>")
open4toast26_3:
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>Well, I have been training<BR>hard in this place.</FONT>")
open4toast26_4:
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>And then suddenly,<BR>I noticed I was transformed<BR>into a block!</FONT>")
open4toast26_5:
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>Until now, I haven't been<BR>doing anything for the customers!</FONT>")
open4toast26_6:
  putTextASCIInoSeek("<FONT COLOR=#EF9FBF>That's why,<BR>please take me with you!</FONT>")

open4_place01:
  putTextASCIInoSeek("EMPTY")
open4_place02:
  putTextASCIInoSeek("STARTING TERMINAL")
open4_place03:
  putTextASCIInoSeek("POLYGONECIA")
open4_place04:
  putTextASCIInoSeek("SKY GARDENS POLYGONA")
open4_place05:
  putTextASCIInoSeek("SLIPPERY SLIDE")
open4_place06:
  putTextASCIInoSeek("STEEL TEMPLE")
open4_place07:
  putTextASCIInoSeek("THE PYRAMID")
open4_place08:
  putTextASCIInoSeek("HERO'S HOLE")
open4_place09:
  putTextASCIInoSeek("CENTRAL PHENOMENIN")
open4_place10:
  putTextASCIInoSeek("AQUARIUM AFTERNOON")
open4_place11:
  putTextASCIInoSeek("FRONTIER INFERNO")
open4_place12:
  putTextASCIInoSeek("HIGH ALTITUDE PARADISO")

//There are lots of extra space to use.
open1_oneblock:
  putTextASCIInoSeek("One of the blocks")
open1_destroyed:
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
