//Mario Artist Paint Studio - Japanese to English Translation
//by LuigiBlood

//Thanks to
//- SourceGaming (for some translation help)

arch n64.cpu
endian msb
output "Mario Artist - Paint Studio.ndd", create
origin 0x000000; insert "NUD-DMPJ-JPN.ndd" // Include Japanese Mario Artist - Paint Studio N64 DD ROM

include "N64_CPUREGS.asm"

//macros
macro seek(n) {
  origin {n}
}

macro putText(n, text) {
  seek({n})
  putTextnoSeek({text})
}

macro putTextnoSeek(text) {
  RegularMap()
  dh {text}
  dh 0x0000
}

macro putText2(n, text) {
  seek({n})
  putText2noSeek({text})
}

macro putText2noSeek(text) {
  RegularMap()
  dh 0x5000
  dh {text}
  dh 0x0000
}

macro putText3(n, text, text2) {
  RegularMap()
  seek({n})
  dh {text}
  dh {text2}
  dh 0x0000
}

macro putText4noSeek(pre, text, post) {
  RegularMap()
  dh {pre}
  dh {text}
  dh {post}
  dh 0x0000
}

macro putTextSJIS(n, text) {
  seek({n})
  putTextSJISnoSeek({text})
}

macro putTextSJISnoSeek(text) {
  ShiftJISMap()
  dh 0x5400, 0xFFFF
  dh {text}
  dh 0x0000
}

// Character Table
macro RegularMap() {
  map '!', $0001, 32 // Map Special Characters & Numbers
  map 'A', $0021, 31 // Map English "Upper Case" Characters & Special Characters
  map 'a', $0041, 30 // Map English "Lower Case" Characters & Special Characters
  map ' ', $00BD     // Map Space Character
}

macro ShiftJISMap() {
  map '0', $824F, 10
  map 'A', $8260, 26
  map 'a', $8281, 26
  
  map ' ', $8140
  map $2C, $8143 //,
  map '.', $8144
  map ':', $8146, 2
  map '?', $8148
  map '!', $8149
  map '-', $817C
  map '\s',$818C //'
}

//Remove Page
seek(0x11E62C)
sb 0,3(v0) //dw 0xA0400003

// 3D World Mode

putText(0x1567BA, "Save")
putText(0x156863, "Return")
putText(0x157050, "Go to Main Menu")
putText(0x157AC3, "Jurassic World")
putText(0x157B66, "Planet Mars")
putText(0x157C12, "Sea World")
putText(0x157CB9, "Explore")
putText(0x157D61, "Paint")
putText(0x157E0E, "Music")
putText(0x157EB5, "Watch")
putText(0x157F5A, "Save/Load")
putText(0x157FFE, "Next Page")
putText(0x1580A6, "Next Page")
putText(0x15814E, "Next Page")
putText(0x1582A8, "Change Texture")
putText(0x158345, "Exit")
putText(0x158400, "Reset")
putText(0x158495, "Exit")
putText(0x158543, "Music 1")
putText(0x1585EB, "Music 2")
putText(0x158694, "Shuffle")
putText(0x158737, "Stereo")
putText(0x1587DD, "Mono")
putText(0x15888B, "Headphones")

putText2(0x15AD64, "When taking a photo...")

//Turtle (Shift-JIS) 0x15ADE8
putTextSJIS(0x15AD94, "Turtle")
//Shark (Shift-JIS) 0x15AE00
putTextSJIS(0x15ADB0, "Shark")
//Manta Ray (Shift-JIS) 0x15AE18
putTextSJIS(0x15ADCC, "Manta Ray")
//Mermaid (Shift-JIS) 0x15AE30
putTextSJIS(0x15ADE8, "Mermaid")
//Octopus (Shift-JIS) 0x15AE48
putTextSJIS(0x15AE04, "Octopus")

//Raptor (Shift-JIS) 0x15AEA8
putTextSJIS(0x15AE74, "Raptor")
//Stegosaurus (Shift-JIS) 0x15AEC0
putTextSJIS(0x15AE90, "Stegosaurus")
//T-Rex (Shift-JIS) 0x15AED8
putTextSJIS(0x15AEAC, "T-Rex")
//Triceratops (Shift-JIS) 0x15AEF0
putTextSJIS(0x15AEC8, "Triceratops")
//Gallimimus (Shift-JIS) 0x15AF08
putTextSJIS(0x15AEE4, "Gallimimus")

//Gaburr (Shift-JIS) 0x15AF68
putTextSJIS(0x15AF54, "Gaburr")
//Filbert (Shift-JIS) 0x15AF80
putTextSJIS(0x15AF70, "Filbert")
//Jack (Shift-JIS) 0x15AF98
putTextSJIS(0x15AF8C, "Jack")
//Colon (Shift-JIS) 0x15AFB0
putTextSJIS(0x15AFA8, "Colon")
//Linda (Shift-JIS) 0x15AFC8
putTextSJIS(0x15AFC4, "Linda")

//ASM Hack 0x18 byte entries to 0x1C byte entries
seek(0x118D32)
dh 0x001C
sll t6,s0,3 //dw 0x001070C0
seek(0x118D4A)
dh 0xC798
sll t6,t6,2 //dw 0x000E7080
seek(0x118D62)
dh 0xFF20
seek(0x118DC6)
dh 0xFF20

// 2D Paint Mode

putText(0x171ECC, "Mario (1)")
putText(0x171F08, "Mario (2)")
putText(0x171F44, "Mario (3)")
putText(0x171F80, "Mario (4)")
putText(0x171FBC, "Mario (5)")
putText(0x171FF8, "Mario (6)")
putText(0x172034, "Mario (7)")
putText(0x172070, "Mario (8)")
putText(0x1720AC, "Mario (9)")
putText(0x1720E9, "Mario (10)")
putText(0x172125, "Mario (11)")
putText(0x172161, "Mario (12)")
putText(0x1721A3, "Wing Cap Mario")
putText(0x1721DF, "Metal Mario")
putText(0x172211, "Toad")
putText(0x172251, "Bowser (1)")
putText(0x17228D, "Bowser (2)")
putText(0x1722CC, "Shiny Shell")
putText(0x17230A, "1UP Mushroom")
putText(0x17233D, "Star")
putText(0x17237C, "Red Block")
putText(0x1723BD, "Mario (13)")
putText(0x1723F9, "Mario (14)")
putText(0x172435, "Mario (15)")
putText(0x172471, "Mario (16)")
putText(0x1724AD, "Mario (17)")
putText(0x1724E9, "Mario (18)")
putText(0x172525, "Mario (19)")
putText(0x17255A, "Luigi")
putText(0x17259F, "Princess Peach")
putText(0x1725D2, "Wario")
putText(0x172614, "Donkey Kong")
putText(0x17264A, "Yoshi")
putText(0x172687, "Bowser")
putText(0x1726C1, "Toad")
putText(0x1726FF, "Kart (1)")
putText(0x17273B, "Kart (2)")
putText(0x172780, "Red Shell")
putText(0x1727B8, "Spiky Shell")
putText(0x1727F2, "Boo")
putText(0x172836, "Gold Mushroom")
putText(0x172866, "Fire Flower")

putText(0x1728AA, "Green Yoshi (1)")
putText(0x1728E6, "Green Yoshi (2)")
putText(0x172921, "Yellow Yoshi")
putText(0x17295B, "Blue Yoshi")
putText(0x17299D, "Cyan Yoshi")
putText(0x1729D2, "Red Yoshi")
putText(0x172A0F, "Pink Yoshi")
putText(0x172A47, "Poochy")
putText(0x172A86, "Miss Warp")
putText(0x172AC4, "Neuron")
putText(0x172B02, "Balloon Bully")
putText(0x172B38, "Shy Guy")
putText(0x172B73, "Spike")
putText(0x172BAF, "Peeper")
putText(0x172BED, "Ick Worm")
putText(0x172C2B, "Spiny Fish")
putText(0x172C68, "Pak E. Derm")
putText(0x172C9F, "Blargg")
putText(0x172CE3, "Cloud N. Candy")
putText(0x172D1A, "Don Bongo")
putText(0x172D58, "Baby Bowser")

//Pokémons
putText(0x172D93, "Bulbasaur")
putText(0x172DCF, "Ivysaur")
putText(0x172E0B, "Venusaur")
putText(0x172E47, "Charmander")
putText(0x172E83, "Charmeleon")
putText(0x172EBF, "Charizard")
putText(0x172EFB, "Squirtle")
putText(0x172F37, "Wartortle")
putText(0x172F73, "Blastoise")
putText(0x172FB0, "Caterpie")
putText(0x172FEC, "Metapod")
putText(0x173028, "Butterfree")
putText(0x173064, "Weedle")
putText(0x1730A0, "Kakuna")
putText(0x1730DC, "Beedrill")
putText(0x173118, "Pidgey")
putText(0x173154, "Pidgeotto")
putText(0x173190, "Pidgeot")
putText(0x1731CC, "Rattata")
putText(0x173208, "Raticate")
putText(0x173244, "Spearow")
putText(0x173280, "Fearow")
putText(0x1732BC, "Ekans")
putText(0x1732F8, "Arbok")
putText(0x173334, "Pikachu (1)")
putText(0x173370, "Raichu")
putText(0x1733AC, "Sandshrew")
putText(0x1733E8, "Sandslash")
putText3(0x173424, "Nidoran", 0x011C)
putText(0x173460, "Nidorina")
putText(0x17349C, "Nidoqueen")
putText3(0x1734D8, "Nidoran", 0x011B)
putText(0x173514, "Nidorino")
putText(0x173550, "Nidoking")
putText(0x17358C, "Clefairy")
putText(0x1735C8, "Clefable")
putText(0x173604, "Vulpix")
putText(0x173640, "Ninetales")
putText(0x17367C, "Jigglypuff")
putText(0x1736B8, "Wigglytuff")
putText(0x1736F4, "Zubat")
putText(0x173730, "Golbat")
putText(0x17376C, "Oddish")
putText(0x1737A8, "Gloom")
putText(0x1737E4, "Vileplume")
putText(0x173820, "Paras")
putText(0x17385C, "Parasect")
putText(0x173898, "Venonat")
putText(0x1738D4, "Venomoth")
putText(0x173910, "Diglett")
putText(0x17394C, "Digtrio")
putText(0x173988, "Meowth (1)")
putText(0x1739C4, "Persian")
putText(0x173A00, "Psyduck")
putText(0x173A3C, "Golduck")
putText(0x173A78, "Mankey")
putText(0x173AB4, "Primeape")
putText(0x173AF0, "Growlithe")
putText(0x173B2C, "Arcanine")
putText(0x173B68, "Poliwag")
putText(0x173BA4, "Poliwhirl")
putText(0x173BE0, "Poliwrath")
putText(0x173C1C, "Abra")
putText(0x173C58, "Kadabra")
putText(0x173C94, "Alakazam")
putText(0x173CD0, "Machop")
putText(0x173D0C, "Machoke")
putText(0x173D48, "Machamp")
putText(0x173D84, "Bellsprout")
putText(0x173DC0, "Weepinbell")
putText(0x173DFC, "Victreebel")
putText(0x173E38, "Tentacool")
putText(0x173E74, "Tentacruel")
putText(0x173EB0, "Geodude")
putText(0x173EEC, "Graveler")
putText(0x173F28, "Golem")
putText(0x173F64, "Ponyta")

putText(0x173FA0, "Rapidash")
putText(0x173FDC, "Slowpoke")
putText(0x174018, "Slowbro")
putText(0x174054, "Magnemite")
putText(0x174090, "Magneton")
putText(0x1740CC, "Farfetch'd")
putText(0x174108, "Doduo")
putText(0x174144, "Dodrio")
putText(0x174180, "Seel")
putText(0x1741BC, "Dewgong")
putText(0x1741F8, "Grimer")
putText(0x174234, "Muk")
putText(0x174270, "Shellder")
putText(0x1742AC, "Cloyster")
putText(0x1742E8, "Gastly")
putText(0x174324, "Haunter")
putText(0x174360, "Gengar")
putText(0x17439C, "Onix")
putText(0x1743D8, "Drowzee")
putText(0x174414, "Hypno")
putText(0x174450, "Krabby")
putText(0x17448C, "Kingler")
putText(0x1744C9, "Voltorb")
putText(0x174505, "Electrode")
putText(0x174541, "Exeggcute")
putText(0x17457D, "Exeggutor")
putText(0x1745B9, "Cubone")
putText(0x1745F5, "Marowak")
putText(0x174630, "Hitmonlee")
putText(0x17466C, "Hitmonchan")
putText(0x1746A8, "Lickitung")
putText(0x1746E4, "Koffing")
putText(0x174720, "Weezing")
putText(0x17475C, "Rhyhorn")
putText(0x174798, "Rhydon")
putText(0x1747D4, "Chansey")
putText(0x174810, "Tangela")
putText(0x17484C, "Kangaskhan")
putText(0x174888, "Horsea")
putText(0x1748C4, "Seadra")
putText(0x174900, "Goldeen")
putText(0x17493C, "Seaking")
putText(0x174978, "Staryu")
putText(0x1749B4, "Starmie")
putText(0x1749F0, "Mr. Mime")
putText(0x174A2C, "Scyther")
putText(0x174A68, "Jynx")
putText(0x174AA4, "Electabuzz")
putText(0x174AE0, "Magmar")
putText(0x174B1C, "Pinsir")
putText(0x174B58, "Tauros")
putText(0x174B94, "Magikarp")
putText(0x174BD0, "Gyarados")
putText(0x174C0C, "Lapras")
putText(0x174C48, "Ditto")
putText(0x174C84, "Eevee")
putText(0x174CC0, "Vaporeon")
putText(0x174CFC, "Jolteon")
putText(0x174D38, "Flareon")
putText(0x174D74, "Porygon")
putText(0x174DB0, "Omanyte")
putText(0x174DEC, "Omastar")
putText(0x174E28, "Kabuto")
putText(0x174E64, "Kabutops")
putText(0x174EA0, "Aerodactyl")
putText(0x174EDC, "Snorlax")
putText(0x174F18, "Articuno")
putText(0x174F54, "Zapdos")
putText(0x174F90, "Moltres")
putText(0x174FCC, "Dratini")
putText(0x175008, "Dragonair")
putText(0x175044, "Dragonite")
putText(0x175080, "Mewtwo")
putText(0x1750BC, "Mew (1)")
putText(0x1750F8, "Pikachu (2)")
putText(0x175134, "Meowth (2)")
putText(0x175170, "Mew (2)")

//Star Fox & Other
putText(0x1751AC, "Fox McCloud")
putText(0x1751E8, "Slippy Toad")
putText(0x175223, "Peppy Hare")
putText(0x175263, "Falco Lombardi")
putText(0x175297, "Arwing")
putText(0x1752D7, "Landmaster")
putText(0x17530F, "Wolfen")

putText(0x17534B, "Lark (1)")
putText(0x175387, "Lark (2)")
putText(0x1753C1, "Kiwi")
putText(0x1753FE, "Goose")
putText(0x175439, "Ibis")
putText(0x175475, "Hawk")
putText(0x1754B1, "Robin")

putText(0x1754F5, "Ryota Hayami")
putText(0x175532, "Ayumi Stewart (1)")
putText(0x17556E, "Ayumi Stewart (2)")
putText(0x1755A8, "Miles Jeter (1)")
putText(0x1755E4, "Miles Jeter (2)")
putText(0x175622, "David Mariner (1)")
putText(0x17565E, "David Mariner (2)")

//Backgrounds
putText(0x17568F, "Metal Mario")
putText(0x1756CB, "Mario VS Bowser")
putText(0x175707, "Mario Kart (1)")
putText(0x175743, "Mario Kart (2)")
putText(0x17577F, "Mario Kart (3)")
putText(0x1757BB, "Mario Kart (4)")
putText(0x1757F7, "Mario Kart (5)")
putText(0x175833, "Star Fox (1)")
putText(0x17586F, "Star Fox (2)")
putText(0x1758AB, "Star Fox (3)")
putText(0x1758E7, "Star Fox (4)")
putText(0x175923, "Yoshi's Story (1)")
putText(0x17595F, "Yoshi's Story (2)")
putText(0x17599B, "Yoshi's Story (3)")
putText(0x1759D7, "The Legend of Zelda")
putText(0x175A13, "Link VS Deku Baba")
putText(0x175A4F, "Princess Zelda & Link")
putText(0x175A8B, "Link & Sheik (1)")
putText(0x175AC7, "Link & Sheik (2)")
putText(0x175B03, "Link VS Volvagia")
putText(0x175B3F, "Link VS Ganondorf")

putText(0x175B80, "Pyramid") //???
putText(0x175BB9, "Moai") //???
putText(0x175BFA, "Elephants") //???
putText(0x175C38, "Brick House") //???
putText(0x175C74, "Autumn View") //???
putText(0x175CAD, "Mt. Fuji") //???
putText(0x175CEA, "Mona Lisa") //???

//Rareware
putText(0x175D2E, "Banjo & Kazooie")
putText(0x175D6A, "Kazooie & Banjo")
putText(0x175DA0, "Mumbo Jumbo")
putText(0x175DDA, "Gruntilda")
putText(0x175E12, "Diddy Kong")
putText(0x175E4F, "Conker")
putText(0x175E8A, "Banjo")
putText(0x175EC6, "Pipsy")
putText(0x175F03, "Bumper")
putText(0x175F3F, "Timber")
putText(0x175F7A, "Krash")
putText(0x175FB6, "Tiptup")
putText(0x175FF6, "Drumstick")
putText(0x17602C, "Taj")

//Zelda
putText(0x17606C, "Link (Young)")
putText(0x1760A8, "Link (Adult)")
putText(0x1760E4, "Epona & Link")
putText(0x176120, "Princess Zelda (Young)")
putText(0x17615C, "Princess Zelda (Adult)")
putText(0x176198, "Saria")
putText(0x1761D4, "Impa")
putText(0x176210, "Malon")
putText(0x17624C, "Talon")
putText(0x176289, "Ingo")
putText(0x1762C5, "Goron")
putText(0x176301, "Darunia")
putText(0x17633D, "Kaepora Gaebora")
putText(0x176379, "Rauru")
putText(0x1763B5, "Ruto (Young)")
putText(0x1763F1, "Ruto (Adult)")
putText(0x17642D, "King Zora")
putText(0x176469, "Sheik")
putText(0x1764A5, "Nabooru")
putText(0x1764E1, "Kotake & Koume")
putText(0x17651D, "Ganondorf")

//Other Stamps
putText(0x17655F, "Faces (1)")
putText(0x17659B, "Faces (2)")
putText(0x1765D7, "Faces (3)")
putText(0x176613, "Ears & Eyes")
putText(0x17664F, "Noses & Mouths")
putText(0x17668B, "Hair (1)")
putText(0x1766C7, "Hair (2)")
putText(0x176703, "Eyes (1)")
putText(0x17673F, "Eyes (2)")
putText(0x17677B, "Noses (1)")
putText(0x1767B7, "Noses (2)")
putText(0x1767F3, "Mouths (1)")
putText(0x17682F, "Mouths (2)")
putText(0x17686B, "Accessories")

putText(0x1768A8, "Nature")
putText(0x1768E4, "Buildings")
putText(0x176920, "Other (1)")
putText(0x17695C, "Other (2)")
putText(0x176998, "Vehicles")
putText(0x1769D4, "Characters (1)")
putText(0x176A10, "Characters (2)")

putText(0x176A43, "Text (1)")
putText(0x176A7F, "Text (2)")
putText(0x176ABB, "Text (3)")
putText(0x176AF7, "Text (4)")
putText(0x176B33, "Text (5)")
putText(0x176B6F, "Text (6)")
putText(0x176BAB, "Text (7)")

putText(0x176BEC, "Animals (1)")
putText(0x176C28, "Animals (2)")
putText(0x176C64, "Animals (3)")
putText(0x176CA0, "Animals (4)")
putText(0x176CDC, "Animals (5)")
putText(0x176D13, "Fruits")
putText(0x176D4E, "Vegetables")
putText(0x176D90, "Flowers (1)")
putText(0x176DCC, "Flowers (2)")
putText(0x176E09, "Flowers (3)")
putText(0x176E45, "Cooking")
putText(0x176E81, "Other")
putText(0x176EB8, "Materials")
putText(0x176EF9, "Nintendo")

//Coloring Book
putText(0x176F34, "Lion")
putText(0x176F70, "Drive")
putText(0x176FAC, "Drag Race")
putText(0x176FE8, "Fishing")
putText(0x177024, "Spockey")
putText(0x177060, "Dinosaur")
putText(0x17709C, "Sortie!")
putText(0x1770D8, "Doctor & Robot")
putText(0x177114, "Far West")
putText(0x177150, "Pinky")
putText(0x17718C, "Cute Riko")
putText(0x1771C8, "Aloha")
putText(0x177204, "Reiko")
putText(0x177240, "Cooking Boy")
putText(0x17727C, "Twilight")
putText(0x1772B8, "Space Hero")
putText(0x1772F4, "Cold Adults")
putText(0x177330, "Stand on the Water")
putText(0x17736C, "Tropical Island")
putText(0x1773A8, "Dragon")
putText(0x1773E4, "Brother Fight")

//Backgrounds (People)
putText(0x17741D, "Runner")
putText(0x177459, "Roller")
putText(0x177495, "Boat")
putText(0x1774D1, "Windsurfing")
putText(0x17750D, "Skiing")
putText(0x177549, "Skydiving")
putText(0x177585, "Pilot")
putText(0x1775C1, "Child")
putText(0x1775FD, "Geisha")
putText(0x177639, "Mona Lisa")
putText(0x177675, "Astronaut")
putText(0x1776B1, "Elephants")
putText(0x1776ED, "Puppies")
putText(0x177729, "Koala")

//Backgrounds (Nature)
putText(0x177763, "Flock of Fish")
putText(0x17779F, "Big Wave")
putText(0x1777DB, "Beach")
putText(0x177817, "Jungle")
putText(0x177853, "Moai")
putText(0x17788F, "Monument Valley")
putText(0x1778CB, "Pyramid")
putText(0x177907, "Mt. Fuji")
putText(0x177943, "Alps")
putText(0x17797F, "Brick House")
putText(0x1779BB, "Street")
putText(0x1779F7, "Manhattan")
putText(0x177A33, "Space Shuttle")
putText(0x177A6F, "Earth")

//Names 3D World
//Balloonfish (Shift-JIS) 0x179912 Unused
putText(0x179953, "Shark")
putText(0x17998C, "Dolphin")
//Scorpion fish (Shift-JIS) 0x179A04 Unused
putText(0x179A42, "Manta Ray")
putText(0x179AF4, "Octopus")
putText(0x179B33, "Turtle")
putText(0x179B6C, "Mermaid")

putText(0x179BAF, "Brachiosaurus")
putText(0x179BE7, "Gallimimus")
putText2(0x179C54, "Pteranodon")
putText(0x179C97, "Raptor")
putText(0x179CD8, "Stegosaurus")
putText(0x179D14, "Triceratops")
putText(0x179D4A, "T-Rex")

putText(0x17A237, "Linda")
putText(0x17A273, "Laura")
putText(0x17A2AF, "Colon")
putText(0x17A2EA, "Jack")
putText(0x17A327, "Snorky")
putText(0x17A364, "Filbert")
putText(0x17A3A0, "Gaburr")

putText(0x17A5FD, "Fish 1")
//Coloring (Shift-JIS) 0x17A7DF
putText(0x17A81A, "CAM1")
putText(0x17A856, "CAM1")
putText(0x17A892, "CAM1")

//Space out the number for "Fish ", fixes "Pteranodon"
seek(0x117B86) //800E95DC
dh 0x0018
seek(0x117DB6) //800E980C
dh 0x9138

//Saving a painting that has nothing (Shift-JIS) 0x1856C0

//Default Box Names (Shift-JIS) 0x186128

//"is now available!" (Shift-JIS) 0x189900
seek(0x1898F8)
dh 0x0000
putTextSJIS(0x1898FC, "is now available!")

putText(0x189CDE, "Brightness")
putText(0x189CF6, "Now click on the palette")
putText(0x189D2E, "Color")
putText(0x189D3E, "Color")
putText(0x189D4E, "B - ") //to Erase again? What's this one?
putText(0x189D72, "B - ") //to Erase again? What's this one?
putText(0x189D96, "B - ") //to Erase again? What's this one?

putText(0x189DBA, "B - Scale")
putText(0x189DEE, "B - Scale")
putText(0x189E22, "B - Scale")
putText(0x189E56, "B - Scale")
putText(0x189E8A, "B - Scale")
putText(0x189EBE, "B - Scale")
putText(0x189EF2, "B - Scale")
putText(0x189F26, "B - Scale")
putText(0x189F5A, "B - Scale")
putText(0x189F8E, "B - Scale")
putText(0x189FC2, "B - Scale")
putText(0x189FF6, "B - Scale")

putText(0x18A02A, "A - Draw; B - Picker")
putText(0x18A066, "B - Go Back")
putText(0x18A082, "B - Go Back")
putText(0x18A09E, "B - Go Back")
putText(0x18A0BA, "B - Go Back")
putText(0x18A0D6, "B - Go Back")
putText(0x18A0F2, "B - Go Back")
putText(0x18A10E, "Too large, can't load")

//Main Menu
//2D Paint description (Shift-JIS) 0x18A178
//2D Movie description (Shift-JIS) 0x18A1B0
//3D World description (Shift-JIS) 0x18A1F0
//Gallery  description (Shift-JIS) 0x18A238

//Save or work will disappear (Shift-JIS) 0x18A2E4

//3D World Explore (Text)
seek(0x0018AC48)
base 0x8015C6A0
explore_controller:
putText2noSeek("This mode uses the controller.")
explore_empty:
dh 0x5000, 0x0000
explore_start:
//"Press A or Z to Start!" (Shift-JIS)
putTextSJISnoSeek("  Press A or Z to Start!")
explore_zoomin:
putText2noSeek("Zoom In")
explore_zoomout:
putText2noSeek("Zoom Out")
explore_left:
putText2noSeek("Turn Left")
explore_right:
putText2noSeek("Turn Right")
explore_move:
putText2noSeek("Move")
explore_exit:
putText2noSeek("Exit")
explore_run:
putText2noSeek("Run/Swim")
explore_take:
putText2noSeek("Take Photo")
explore_photo:
putText2noSeek("Photo Mode")
explore_circle:
dh 0x5000,0x00B7, 0x0000
explore_camera:
putText2noSeek("Camera")

//3D World Explore ASM Hack
seek(0x0012713A)
dh (explore_controller)
seek(0x00127186)
dh (explore_empty)
seek(0x001271CA)
dh (explore_start)
seek(0x0012720E)
dh (explore_zoomin)
seek(0x00127252)
dh (explore_zoomout)
seek(0x00127296)
dh (explore_left)
seek(0x001272DA)
dh (explore_right)
seek(0x0012731E)
dh (explore_move)
seek(0x00127362)
dh (explore_exit)
seek(0x001273A6)
dh (explore_run)
seek(0x001273EA)
dh (explore_empty)
seek(0x0012742E)
dh (explore_take)
seek(0x00127472)
dh (explore_photo)
seek(0x001274B6)
dh (explore_circle)
seek(0x001274FA)
dh (explore_camera)


//2D Paint Stuff
putText(0x1EFA84, "Change Texture Page")
putText(0x1EFB27, "Rotate Model")

putText(0x1EFBC7, "Square")
putText(0x1EFC6D, "Star")
putText(0x1EFD17, "Circle")
putText(0x1EFDC1, "Freehand")
putText(0x1EFE66, "Heart")
putText(0x1EFF13, "Select All")
putText(0x1EFFB8, "Ellipse")
putText(0x1F005F, "Square")
putText(0x1F0107, "Square")
putText(0x1F01AD, "Magic Select") //to change
putText(0x1F0257, "Circle")
putText(0x1F0301, "Freehand")
putText(0x1F03A6, "Heart")
putText(0x1F0453, "Select All")
putText(0x1F04F8, "Ellipse")
putText(0x1F05A7, "Square")
putText(0x1F0645, "Star")
putText(0x1F06F4, "Circle")
//Star (Shift-JIS) 0x1F079A
putText(0x1F083E, "Heart")
putText(0x1F08E5, "Line")
putText(0x1F0995, "Ellipse")

putText(0x1F0A39, "Brighten")
putText(0x1F0ADF, "Darken")
putText(0x1F0B87, "Smooth")
putText(0x1F0C2E, "Sharp")
putText(0x1F0CD9, "Zig Zag")
putText(0x1F0D7D, "Drip")
putText(0x1F0E2D, "Select Color")
putText(0x1F0ED8, "Contrast")
putText(0x1F0F7E, "Chrome Emboss")
putText(0x1F1022, "Sketchize")
putText(0x1F10C8, "Lineize")
putText(0x1F116D, "Sepia")
putText(0x1F1215, "Exit")
putText(0x1F12BD, "Exit")

putText(0x1F1FE8, "Selected Color")
putText(0x1F27BD, "Next Page")

putText(0x1F2F02, "Pokemon (1)")
putText(0x1F2FAA, "Pokemon (2)")
putText(0x1F3046, "Mario")
putText(0x1F30F0, "Background")
putText(0x1F3196, "Yoshi")
putText(0x1F3257, "StarFox & more")
putText(0x1F32E5, "English") //Unused
putText(0x1F339D, "Deformative")
putText(0x1F3435, "Text")
putText(0x1F34E7, "Food & Drinks")
putText(0x1F3587, "Photo")
putText(0x1F362F, "Other")
putText(0x1F36E1, "Game Artworks")
putText(0x1F378A, "People & Animals")
putText(0x1F3826, "Zelda")
putText(0x1F38D6, "Banjo & more")
putText(0x1F397D, "Illustrations")
putText(0x1F3A1D, "Text")
putText(0x1F3AC9, "Other (2)")
putText(0x1F3B7E, "Landscapes & more")

putText(0x1F3C18, "Frame 1")
putText(0x1F3CC0, "Frame 2")
putText(0x1F3D68, "Frame 3")

putText(0x1F45F7, "Capture Cartridge")
putText(0x1F469D, "Capture Movie")

//Felt tip (Shift-JIS) 0x1F4C81
putText(0x1F4D27, "Marker")
//Pencil (Shift-JIS) 0x1F4DCF
//Crayon (Shift-JIS) 0x1F4E7B
//Chalk  (Shift-JIS) 0x1F4F1E
//Brush  (Shift-JIS) 0x1F4FCC
//Oil    (Shift-JIS) 0x1F5072
//Spray  (Shift-JIS) 0x1F511A
//Finger (Shift-JIS) 0x1F51C0

//Flip (Shift-JIS) 0x1F5A45
putText(0x1F5AF7, "Flip")
putText(0x1F5B95, "Flip")
putText(0x1F5CE5, "Thin")
putText(0x1F5D8F, "Medium")
putText(0x1F5E36, "Thick")
putText(0x1F5EF1, "Other Stamps")
putText(0x1F5F87, "Scroll")
putText(0x1F602D, "Fill")
putText(0x1F60D5, "Zoom")
putText(0x1F6184, "Eraser")
putText(0x1F6225, "Next Page")
putText(0x1F62CD, "Undo")
putText(0x1F637D, "Watch")
putText(0x1F641D, "Go to Main Menu")
putText(0x1F64CC, "Switch Paper")
putText(0x1F656D, "Cut & Copy")
putText(0x1F6617, "Cut")
putText(0x1F66BF, "Shapes")
putText(0x1F6765, "Text")
putText(0x1F6817, "Color Selection")
putText(0x1F68BB, "Special Effects")
putText(0x1F6968, "Restore")
putText(0x1F6A10, "Character Stamps")
putText(0x1F6AB8, "Backgrounds")
//Print Club Frame 0x1F6B61 (?)
putText(0x1F6C07, "Coloring Book")
putText(0x1F6CAA, "GameBoy Printer") //Unused?
putText(0x1F6D52, "GameBoy Camera")
putText(0x1F6DFA, "Save/Load")
//Load 0x1F6E9D (?)
putText(0x1F6F45, "Save") //Unused?
putText(0x1F6FFA, "Special Save") //Unused?
putText(0x1F709C, "Rotate")
putText(0x1F7145, "Rotate Screen")
putText(0x1F71ED, "Rotate")
putText(0x1F7296, "Rotate Screen")
putText(0x1F733D, "Music")
putText(0x1F73E4, "Mouse Speed")

// 2D Movie Mode

//Erase Frame (Shift-JIS) 0x1F748C
putText(0x1F752D, "Help")
putText(0x1F75E3, "Adjust Screen")
putText(0x1F7684, "Paper Size")
putText(0x1F772D, "Preview")
putText(0x1F77D1, "Standard")
putText(0x1F787B, "Large")
putText(0x1F7921, "Flipbook")
putText(0x1F79C5, "Exit")
putText(0x1F7A6D, "Play")
putText(0x1F7B15, "Copy")
putText(0x1F7BBC, "End")
putText(0x1F7C66, "Ghost")
putText(0x1F7D14, "Clear Frame")
putText(0x1F7DBB, "Clear Film")
putText(0x1F7E5D, "Play")
putText(0x1F7F05, "Stop")
putText(0x1F7FAD, "Loop")
putText(0x1F8058, "Blend")
putText(0x1F8103, "Watch")
putText(0x1F81A5, "Exit")
putText(0x1F8250, "Speed")
putText(0x1F82FD, "Go to Main Menu")
putText(0x1F83A5, "Go to Main Menu")
putText(0x1F8445, "Exit")
//Do Not Compress 0x1F86F0 (?)
putText(0x1F8792, "Automatic")

putText(0x1F8A2D, "Slow")
putText(0x1F8AD7, "Medium")
putText(0x1F8B7D, "Fast")
putText(0x1F9013, "Music 1")
putText(0x1F90BB, "Music 2")
putText(0x1F9163, "Music 3")
putText(0x1F920B, "Music 4")
putText(0x1F92B4, "Music OFF")

//Eraser
putText(0x1F9368, "Thick")
putText(0x1F9410, "Medium")
putText(0x1F94B8, "Thin")
putText(0x1F955F, "Cut")
putText(0x1F9607, "Rectangle")
putText(0x1F96AF, "Fill")
putText(0x1F9757, "Flash")
putText(0x1F97FF, "Rocket")
//Zentai Keshi 0x1F98A7 (Unused)
//Zentai Keshi 0x1F994F (Unused)
putText(0x1F99E0, "Smoothen") //Unused?
//Zentai Keshi 0x1F9B45 (Unused)
putText(0x1F9E1D, "Exit")
putText(0x1F9EC5, "Exit")
putText(0x1F9F6D, "Exit")
putText(0x1FA015, "Exit")
putText(0x1FA0C3, "Eraser") //?
putText(0x1FA16D, "Small Letters")
putText(0x1FA217, "Big Letters")
putText(0x1FA2B8, "Numbers")
putText(0x1FA361, "Hiragana")
putText(0x1FA409, "Katakana")
putText(0x1FA4AE, "Kanji")
putText(0x1FA55C, "Text Color")
putText(0x1FAC8D, "Next Page")
putText(0x1FAF2D, "Exit")
putText(0x1FAFD7, "Return")
putText(0x1FB07E, "Reset") //Capture Cartridge Color Reset
putText(0x1FB125, "Exit")

putText(0x1FC240, "3D Preview")
putText(0x1FC2EA, "Next Texture Page")
putText(0x1FC387, "View 1")
putText(0x1FC42F, "View 2")
putText(0x1FC4D7, "View 3")
putText(0x1FC57F, "View 4")
putText(0x1FC627, "View 5")
putText(0x1FC6CF, "View 6")
putText(0x1FC777, "View 7")
putText(0x1FC81F, "View 8")
putText(0x1FC8C7, "Rotation A")
putText(0x1FC96F, "Rotation B")
putText(0x1FCA17, "Multi Rotation")

putText(0x1FEE3F, "Flip Stamp")
putText(0x1FEE7A, "Flip Letter")
//Flip Canvas (Shift-JIS) 0x1FEEB8 Unused?

putText(0x2032AA, "Felt Tip Pen")
putText(0x203306, "Felt Tip Pen")
putText(0x203362, "Felt Tip Pen")
putText(0x2033B9, "Marker")
putText(0x203415, "Marker")
putText(0x203471, "Marker")
putText(0x2034D4, "Pencil")
putText(0x203530, "Pencil")
putText(0x20358C, "Pencil")
putText(0x2035E5, "Crayon")
putText(0x203641, "Crayon")
putText(0x20369D, "Crayon")
putText(0x2036F4, "Chalk")
putText(0x203750, "Chalk")
putText(0x2037AC, "Chalk")
putText(0x20380E, "Brush")
putText(0x20386A, "Brush")
putText(0x2038C6, "Brush")
putText(0x203920, "Oil Brush")
putText(0x20397C, "Oil Brush")
putText(0x2039D8, "Oil Brush")
putText(0x203A33, "Spray Can")
putText(0x203A8F, "Spray Can")
putText(0x203AEB, "Spray Can")
putText(0x203B4B, "Finger Blend")
putText(0x203BA7, "Finger Blend")
putText(0x203C03, "Finger Blend")

putText(0x2096CE, "Ghost")
putText(0x209784, "Erase Ghost")

putText2(0x20AAD4, "Switch Paper")
putText2(0x20AAF0, "Switch Paper")
putText2(0x20AB0C, "Switch Paper")

putText(0x20ACCA, "B: Scale")

//Save or work will disappear (Shift-JIS) 0x20BF78
//Save or work will disappear (Shift-JIS) 0x20C004
//Please switch paper (Shift-JIS) 0x20C858

putText2(0x20CCBC, "Load Drawing")
putText2(0x20CCD8, "Load Drawing")

//Work will disappear are you sure (Shift-JIS) 0x20DC74
//Save or work will disappear (Shift-JIS) 0x20E010
//Connect Transfer Pak & GBCamera (Shift-JIS) 0x20E470
//Connection problem Transfer Pak (Shift-JIS) 0x20E638
//Work will disappear are you sure (Shift-JIS) 0x20E7D8
//Work will disappear are you sure (Shift-JIS) 0x20E800

putText(0x20EB4A, "B: Scroll")
putText(0x20EC56, "B: Scroll")
putText(0x20EF52, "B: Scroll")
putText(0x20EF72, "B: Scroll")
putText(0x20F14A, "B: Scroll")

//Insert Capture Cart? (Shift-JIS) 0x20F6B4
//Insert Capture Cart? (Shift-JIS) 0x20F8FC
//Work will disappear are you sure (Shift-JIS) 0x20F93C
//Insert Capture Cart? (Shift-JIS) 0x20F97C
//Work will disappear are you sure (Shift-JIS) 0x20F9B8
//Insert Capture Cart? (Shift-JIS) 0x20FA2C
//Please switch paper (Shift-JIS) 0x20FB0C
//Plug video? (Shift-JIS) 0x20FB3C
//Something about frames for the flipbook? (Shift-JIS) 0x20FFFC

putText(0x20F14A, "B: Cancel")
//Cannot redo (Shift-JIS) 0x210250

//Printer Text at 0x239B50
//64GB Text at 0x261240

//Container (Shift-JIS) 0x2A7FE0
//Work (Shift-JIS) 0x2A7FEC
//Container (Shift-JIS) 0x2AA920

//Save/Load (1) 0x2AAAD0 - RAM 0x802C6800
seek(0x2AAAD0)
base 0x802C6800
saveload1_exit:
putTextnoSeek("Exit")
saveload1_save:
putTextnoSeek("Save")
saveload1_load:
putTextnoSeek("Load")
saveload1_rename:
putTextnoSeek("Rename")
saveload1_delete:
putTextnoSeek("Delete")
saveload1_copy:
putTextnoSeek("Move/Copy")
saveload1_create:
putTextnoSeek("Create Container") //???
saveload1_disk:
putTextnoSeek("Change Disk")
saveload1_hiragana:
putTextnoSeek("Hiragana")
saveload1_katakana:
putTextnoSeek("Katakana")
saveload1_letters:
putTextnoSeek("AaBbCc")
saveload1_kanji:
putTextnoSeek("Kanji")
saveload1_all:
putTextnoSeek("All")
saveload1_space:
putTextnoSeek("Space")
saveload1_left:
putTextnoSeek("Left")
saveload1_right:
putTextnoSeek("Right")
saveload1_erase:
putTextnoSeek("Erase")
saveload1_eraseall:
putTextnoSeek("Erase All")
saveload1_undo:
putTextnoSeek("Undo")
saveload1_done:
putTextnoSeek("Done")
saveload1_back:
putTextnoSeek("Back")
saveload1_nextpage:
//putTextnoSeek("Next Page") //Unused?

//Replace pointers 0x802C6800
seek(0x2AAC2C)
dw (saveload1_exit)
seek(0x2AAC40)
dw (saveload1_save)
seek(0x2AAC54)
dw (saveload1_load)
seek(0x2AAC68)
dw (saveload1_create)
seek(0x2AAC7C)
dw (saveload1_rename)
seek(0x2AAC90)
dw (saveload1_delete)
seek(0x2AACA4)
dw (saveload1_copy)
seek(0x2AACB8)
dw (saveload1_disk)

seek(0x2AACE0)
dw (saveload1_back)
seek(0x2AAD08)
dw (saveload1_hiragana)
seek(0x2AAD1C)
dw (saveload1_katakana)
seek(0x2AAD30)
dw (saveload1_letters)
seek(0x2AAD44)
dw (saveload1_kanji)
seek(0x2AAD58)
dw (saveload1_all)
seek(0x2AAD6C)
dw (saveload1_space)
seek(0x2AAD80)
dw (saveload1_left)
seek(0x2AAD94)
dw (saveload1_right)
seek(0x2AADA8)
dw (saveload1_erase)
seek(0x2AADBC)
dw (saveload1_eraseall)
seek(0x2AADD0)
dw (saveload1_undo)
seek(0x2AADE4)
dw (saveload1_done)

putText(0x2AAFE6, "New Save")
seek(0x2AB050)
base 0x802C6D80
putText(0x2AB050, "Move")

seek(0x2AAFF8) //Fix Eraser animation
saveload1_copy2:
putText(0x2AAFF8, "Copy")
//Change pointer
seek(0x29AAE2)
dh (saveload1_copy2)

//Save/Load (2) 0x2E00C0 - RAM 0x802FBDF0
seek(0x2E00C0)
base 0x802FBDF0
//Rough translations
//putTextnoSeek("Test") //RAM 0x802FBDF0 Unused
saveload2_leftmenu:
putTextnoSeek("Please select from the left menu.") //RAM 0x802FBDF8
saveload2_containersave:
putTextnoSeek("Select a container.") //RAM 0x802FBE18
saveload2_containerfull:
putTextnoSeek("This container is full.") //RAM 0x802FBE50
saveload2_newsave1:
putTextnoSeek("Do you want to save this file as new?") //RAM 0x802FBE70
saveload2_newsave2:
putTextnoSeek("(Select another file if you want to overwrite)") //RAM 0x802FBEA0 Too long?
saveload2_overwrite1:
putTextnoSeek("Do you want to overwrite this file?") //RAM 0x802FBED4
saveload2_overwrite2:
putText4noSeek("Are you sure?", $00FF, "This file will be overwritten.") //RAM 0x802FBEEC
saveload2_nosave:
putTextnoSeek("It is not possible to save.") //RAM 0x802FBF18
saveload2_saving:
putTextnoSeek("Saving...") //RAM 0x802FBF40
saveload2_compression:
putTextnoSeek("(Compression takes a moment)") //RAM 0x802FBF54
saveload2_namefile1:
putTextnoSeek("Do you want to name the file?") //RAM 0x802FBF7C
saveload2_namefile2:
putTextnoSeek("(The name at the bottom will be used if not)") //RAM 0x802FBFA0
saveload2_namesave:
putTextnoSeek("Saving name...") //RAM 0x802FBFCC
saveload2_nocontainer:
putTextnoSeek("There is no container.") //RAM 0x802FBFE8
//putTextnoSeek("Please select a container.") //RAM 0x802FC000
saveload2_selectload:
putTextnoSeek("Select a file.") //RAM 0x802FC034
saveload2_loadfile1:
putTextnoSeek("Do you want to load this file?") //RAM 0x802FC05C
saveload2_loadfile2:
putText4noSeek("(Re-select from the right", $00FF, "if you want a different file)") //RAM 0x802FC080 Unused?
saveload2_nofile:
putTextnoSeek("This container is empty.") //RAM 0x802FC0B4
saveload2_sureload:
putTextnoSeek("Current work will be lost, are you sure?") //RAM 0x802FC0E4
saveload2_loading:
putTextnoSeek("Loading...") //RAM 0x802FC120
saveload2_whatdelete:
putTextnoSeek("What do you want to delete?") //RAM 0x802FC134
//saveload2_selectcontainerdelete:
//putTextnoSeek("Select a container that you want to delete.") //RAM 0x802FC154
saveload2_containerdelete:
putText4noSeek("Do you want to delete", $00FF, "the contents of this container?") //RAM 0x802FC188
//putTextnoSeek("Please select a container.") //RAM 0x802FC1B8
//putTextnoSeek("Select the file to delete.") //RAM 0x802FC1F0
saveload2_filedelete:
putTextnoSeek("Do you want to delete this file?") //RAM 0x802FC21C
saveload2_deleting:
putTextnoSeek("Deleting...") //RAM 0x802FC244
saveload2_whatrename:
putTextnoSeek("What do you want to rename?") //RAM 0x802FC25C
//saveload2_selectcontainerrename:
//putTextnoSeek("Select the container to rename.") //RAM 0x802FC284
saveload2_containerrename:
putText4noSeek("Do you want to change", $00FF, "the name of this container?") //RAM 0x802FC2B8
//putTextnoSeek("Please select a container.") //RAM 0x802FC2E8
//putTextnoSeek("Select the file to rename.") //RAM 0x802FC328
saveload2_filerename:
putTextnoSeek("Do you want to rename this file?") //RAM 0x802FC35C
saveload2_renaming:
putTextnoSeek("Renaming...") //RAM 0x802FC38C
saveload2_moveorcopy:
putTextnoSeek("What do you want to do?") //RAM 0x802FC3B0
saveload2_whatmove:
putTextnoSeek("What do you want to move?") //RAM 0x802FC3CC
saveload2_selectcontainermove1:
putTextnoSeek("Select the container to move from.") //RAM 0x802FC3EC
saveload2_selectcontainermove2:
putTextnoSeek("Select the new container to move to.") //RAM 0x802FC420
saveload2_containermove:
putTextnoSeek("Do you want to move everything?") //RAM 0x802FC450
//putTextnoSeek("Please select a container.") //RAM 0x802FC480
//putTextnoSeek("Select the file to move.") //RAM 0x802FC4B4
saveload2_filemove:
putTextnoSeek("Do you want to move this file?") //RAM 0x802FC4DC
saveload2_moving:
putTextnoSeek("Moving...") //RAM 0x802FC500
saveload2_whatcopy:
putTextnoSeek("What do you want to copy?") //RAM 0x802FC518
saveload2_selectcontainercopy1:
putTextnoSeek("Select the container to copy from.") //RAM 0x802FC534
saveload2_selectcontainercopy2:
putTextnoSeek("Select the container to copy to.") //RAM 0x802FC55C
saveload2_containercopy:
putTextnoSeek("Do you want to copy everything?") //RAM 0x802FC58C
//putTextnoSeek("Please select a container.") //RAM 0x802FC5B4
//putTextnoSeek("Select the file to copy.") //RAM 0x802FC5E8
saveload2_filecopy:
putTextnoSeek("Do you want to copy this file?") //RAM 0x802FC610
saveload2_copying:
putTextnoSeek("Copying...") //RAM 0x802FC634
//putTextnoSeek("Creating new container...") //RAM 0x802FC648 Unused?
//putTextnoSeek("Do you want to put a new name in this container?") //RAM 0x802FC668 Unused?
//putTextnoSeek("Do you want to reorder?") //RAM 0x802FC698 Unused?
//putTextnoSeek("What do you want to sort?") //RAM 0x802FC6B8 Unused?
//putTextnoSeek("Swapping two containers.") //RAM 0x802FC6D0 Unused?
//putTextnoSeek("Please select the first container.") //RAM 0x802FC6F8 Unused?
//putTextnoSeek("Please select the second container.") //RAM 0x802FC71C Unused?
//putTextnoSeek("Do you want to swap both containers?") //RAM 0x802FC740 Unused?
//putTextnoSeek("Re-reading file information...") //RAM 0x802FC770 Unused?
saveload2_init:
putText4noSeek("Do you really want to initialize", $00FF, "the disk? All the files will be gone.") //RAM 0x802FC79C
//putTextnoSeek("Do you want a new container?") //RAM 0x802FC804 Unused?
saveload2_changedisk:
putTextnoSeek("Please change the disk.") //RAM 0x802FC830
saveload2_ejectdisk:
putTextnoSeek("Please eject the disk.") //RAM 0x802FC854
saveload2_insertdisk:
putTextnoSeek("Please insert the disk.") //RAM 0x802FC870
saveload2_accessdisk:
putTextnoSeek("We are accessing a different disk.") //RAM 0x802FC88C
saveload2_mode64dd:
putText4noSeek($00BB, " 64DD ", $00BB) //RAM 0x802FC8AC
saveload2_modesave:
putText4noSeek($00B7, " Save ", $00B7) //RAM 0x802FC8C0
saveload2_modeload:
putText4noSeek($00B7, " Load ", $00B7) //RAM 0x802FC8D0
saveload2_moderename:
putText4noSeek($00B7, " Rename ", $00B7) //RAM 0x802FC8E0
saveload2_modedelete:
putText4noSeek($00B7, " Delete ", $00B7) //RAM 0x802FC8F8
saveload2_modemovecopy:
putText4noSeek($00B7, " Move/Copy ", $00B7) //RAM 0x802FC90C
saveload2_modediskchange:
putText4noSeek($00B7, " Disk Change ", $00B7) //RAM 0x802FC928
saveload2_modemove:
putText4noSeek($00B7, " Move ", $00B7) //RAM 0x802FC948
saveload2_modecopy:
putText4noSeek($00B7, " Copy ", $00B7) //RAM 0x802FC958
//putText4noSeek($00B7, " Sort ", $00B7) //RAM 0x802FC968 Unused?
//putText4noSeek($00B7, " Container Creation ", $00B7) //RAM 0x802FC984 Unused?

//Change pointers
seek(0x2E0C80)
dw (saveload2_leftmenu)
seek(0x2E0C8C)
dw (saveload2_mode64dd)
seek(0x2E0C98)
dw (saveload2_modesave)
seek(0x2E0CA4)
dw (saveload2_modeload)
seek(0x2E0CB0)
dw (saveload2_moderename)
seek(0x2E0CBC)
dw (saveload2_modedelete)
seek(0x2E0CC8)
dw (saveload2_modemovecopy)
seek(0x2E0CD4)
dw (saveload2_modediskchange)
seek(0x2E0CE0)
dw (saveload2_modemove)
seek(0x2E0CEC)
dw (saveload2_modecopy)
seek(0x2E0CF8)
dw (saveload2_containersave)
seek(0x2E0D04)
dw (saveload2_containerfull)
seek(0x2E0D10)
dw (saveload2_newsave1)
seek(0x2E0D1C)
dw (saveload2_newsave1)
seek(0x2E0D28)
dw (saveload2_newsave2)
seek(0x2E0D34)
dw (saveload2_overwrite1)
seek(0x2E0D40)
dw (saveload2_overwrite2)
seek(0x2E0D4C)
dw (saveload2_nosave)
seek(0x2E0D58)
dw (saveload2_saving)
seek(0x2E0D64)
dw (saveload2_saving)
seek(0x2E0D70)
dw (saveload2_compression)
seek(0x2E0D7C)
dw (saveload2_namefile1)
seek(0x2E0D88)
dw (saveload2_namefile2)
seek(0x2E0D94)
dw (saveload2_namesave)
seek(0x2E0DA0)
dw (saveload2_nocontainer)
seek(0x2E0DAC)
dw (saveload2_containersave) //Load
seek(0x2E0DB8)
dw (saveload2_selectload)
seek(0x2E0DC4)
dw (saveload2_loadfile1)
seek(0x2E0DD0)
dw (saveload2_loadfile2)
seek(0x2E0DDC)
dw (saveload2_nofile)
seek(0x2E0DE8)
dw (saveload2_sureload)
seek(0x2E0DF4)
dw (saveload2_loading)
seek(0x2E0E00)
dw (saveload2_whatdelete)
seek(0x2E0E0C)
dw (saveload2_containersave) //Delete
seek(0x2E0E18)
dw (saveload2_containerdelete)
seek(0x2E0E24)
dw (saveload2_containersave) //Delete
seek(0x2E0E30)
dw (saveload2_selectload) //Delete
seek(0x2E0E3C)
dw (saveload2_filedelete)
seek(0x2E0E48)
dw (saveload2_deleting)
seek(0x2E0E54)
dw (saveload2_whatrename)
seek(0x2E0E60)
dw (saveload2_containersave) //Rename
seek(0x2E0E6C)
dw (saveload2_containerrename)
seek(0x2E0E78)
dw (saveload2_containersave) //Rename
seek(0x2E0E84)
dw (saveload2_selectload) //Rename
seek(0x2E0E90)
dw (saveload2_filerename)
seek(0x2E0E9C)
dw (saveload2_renaming)
seek(0x2E0EA8)
dw (saveload2_moveorcopy)
seek(0x2E0EB4)
dw (saveload2_whatmove)
seek(0x2E0EC0)
dw (saveload2_selectcontainermove1)
seek(0x2E0ECC)
dw (saveload2_selectcontainermove2)
seek(0x2E0ED8)
dw (saveload2_containermove)
seek(0x2E0EE4)
dw (saveload2_containersave) //Move
seek(0x2E0EF0)
dw (saveload2_selectload) //Move
seek(0x2E0EFC)
dw (saveload2_filemove)
seek(0x2E0F08)
dw (saveload2_moving)
seek(0x2E0F14)
dw (saveload2_whatcopy)
seek(0x2E0F20)
dw (saveload2_selectcontainercopy1)
seek(0x2E0F2C)
dw (saveload2_selectcontainercopy2)
seek(0x2E0F38)
dw (saveload2_containercopy)
seek(0x2E0F44)
dw (saveload2_containersave) //Copy
seek(0x2E0F50)
dw (saveload2_selectload) //Copy
seek(0x2E0F5C)
dw (saveload2_filecopy)
seek(0x2E0F68)
dw (saveload2_copying)
seek(0x2E0F74)
dw (saveload2_init)

seek(0x2E110C)
base 0x802FCE3C
saveload3_donoteject:
putTextnoSeek("Do not eject the disk.")
saveload3_prepsave:
putTextnoSeek("Prepared Save")
saveload3_unreadfiles:
putTextnoSeek("Unreadable Files")
seek(0x2E1180)
dw (saveload3_donoteject), (saveload3_prepsave), (saveload3_unreadfiles)

seek(0x2E1190)
base 0x802FCEC0
saveload4_usedspace:
putTextnoSeek("Used Space: 0.0MB") //RAM 0x802FCEC0
saveload4_currentwork1:
putTextnoSeek("Current work") //RAM 0x802FCEE4
saveload4_currentwork2:
putTextnoSeek("") //RAM 0x802FCF00
saveload4_fromdisk:
//putTextnoSeek("From Disk") //RAM 0x802FCF18 Unused?
saveload4_from64gb:
//putTextnoSeek("From Transfer Pak") //RAM 0x802FCF28 Unused?
saveload4_readfile:
//putTextnoSeek("Read File") //RAM 0x802FCF3C Unused?
saveload4_file:
//putTextnoSeek("File") //RAM 0x802FCF50 Unused?
saveload4_notloaded:
//putTextnoSeek("Not loaded") //RAM 0x802FCF5C Unused?
saveload4_makingfile:
//putTextnoSeek("Making File") //RAM 0x802FCF74 Unused?
saveload4_takenphotos:
//putTextnoSeek("Taken Photos") //RAM 0x802FCF90 Unused?
saveload4_auxpaper:
//putTextnoSeek("Auxiliary Paper") //RAM 0x802FCFA8 Unused?
saveload4_image:
putTextnoSeek("")
//putTextnoSeek("Image") //RAM 0x802FCFC4 Unused?

saveload4_selectcontainer:
putTextnoSeek("Container") //RAM 0x802FCFD8
saveload4_selectfile:
putTextnoSeek("   File") //RAM 0x802FCFE4
saveload4_selectcontainerall1:
putTextnoSeek("All files of") //RAM 0x802FCFF0
saveload4_selectcontainerall2:
putTextnoSeek("  a container") //RAM 0x802FCFFC

saveload4_containerfull:
putTextnoSeek("This container is full.") //RAM 0x802FD010
saveload4_diskactionsuspended:
putText4noSeek("Disk is ejected.", $00FF, "Access suspended.") //RAM 0x802FD030
saveload4_cantwritecontainer:
putTextnoSeek("Cannot write in this container.") //RAM 0x802FD078
saveload4_cantwritefile:
putTextnoSeek("Cannot write file.") //RAM 0x802FD09C
saveload4_enterdisk:
putTextnoSeek("The disk is full.") //RAM 0x802FD0C0
saveload4_filecantdelete:
putTextnoSeek("Cannot delete file.") //RAM 0x802FD0FC
saveload4_containercantdelete:
putTextnoSeek("Cannot delete container.") //RAM 0x802FD128
saveload4_filecantmove:
putTextnoSeek("Cannot move file.") //RAM 0x802FD154
saveload4_namealreadyexists:
putTextnoSeek("Name already exists.") //RAM 0x802FD178
saveload4_cantmakecontainer:
putTextnoSeek("Cannot create container.") //RAM 0x802FD19C
saveload4_diskerror:
putTextnoSeek("Disk Error") //RAM 0x802FD1C8
saveload4_reread:
putText4noSeek("Reread because the disk", $00FF, "has been replaced.") //RAM 0x802FD1E0
saveload4_namenotchanged:
putTextnoSeek("Name was not changed.") //RAM 0x802FD214
saveload4_filenamenotchanged:
putTextnoSeek("Cannot change filename.") //RAM 0x802FD23C
saveload4_containernamenotchanged:
putTextnoSeek("Cannot change container name.") //RAM 0x802FD270
saveload4_filecantdeletewrite:
putTextnoSeek("Cannot write/delete file.") //RAM 0x802FD2A4
saveload4_diskcantdeletewrite:
putTextnoSeek("Cannot write/delete on this disk.") //RAM 0x802FD2D8
saveload4_cannotmovesamecontainer:
putTextnoSeek("Cannot move in the same container.") //RAM 0x802FD30C
saveload4_disknotinserted:
putText4noSeek("Disk is ejected.", $00FF, "Insert disk.") //RAM 0x802FD334
saveload4_cantusedisk:
putText4noSeek("Disk cannot be used here.", $00FF, "Insert correct disk.") //RAM 0x802FD37C
saveload4_insertdisk2:
dh 0x00FF
saveload4_insertdisk:
putTextnoSeek("Insert disk.") //RAM 0x802FD3E4
saveload4_cantusename:
putTextnoSeek("Cannot use name.") //RAM 0x802FD40C
saveload4_diskcorrupted:
putText4noSeek("Corrupted disk.", $00FF, "Replace disk.") //RAM 0x802FD42C
saveload4_diskfault:
putText4noSeek("Disk fault.", $00FF, "Reinsert disk.") //RAM 0x802FD488
saveload4_correctdisk:
putTextnoSeek("Insert correct disk.") //RAM 0x802FD4CC
saveload4_nocontainer:
putTextnoSeek("No container.") //RAM 0x802FD4F8
saveload4_no2container:
putTextnoSeek("No 2 or more containers.") //RAM 0x802FD510
saveload4_cantmovecontent:
putText4noSeek("Cannot move files", ".", $00FF) //RAM 0x802FD53C
saveload4_container70files:
putText4noSeek("A single container can only", $00FF, "contain up to 70 files.") //RAM 0x802FD570
saveload4_nofile:
putTextnoSeek("Container is empty.") //RAM 0x802FD5B4
saveload4_cantremovecontent:
putTextnoSeek("Cannot delete files.") //RAM 0x802FD5E0
saveload4_filelargeload:
putText4noSeek("Cannot load file", $00FF, "Too large") //RAM 0x802FD618
saveload4_filetypeload:
putText4noSeek("Cannot load file", $00FF, "Type is different.") //RAM 0x802FD660
saveload4_filetypeoverwrite:
putText4noSeek("Cannot overwrite file", $00FF, "Type is different.") //RAM 0x802FD6A8
saveload4_containercantdeletewrite:
putText4noSeek("Cannot delete/write", $00FF, "in this container.") //RAM 0x802FD6F0
saveload4_containercantdeletefiles:
putTextnoSeek("Cannot delete some files.") //RAM 0x802FD724
saveload4_error49:
putText4noSeek("Error 49", $00FF, "Do not eject disk while in access.") //RAM 0x802FD768
saveload4_error2:
putText4noSeek("Error 2", $00FF, "Reinsert disk.") //RAM 0x802FD7D4
saveload4_readonly:
putText4noSeek("Read-only disk.", $00FF, "Cannot be used.") //RAM 0x802FD81C
saveload4_movefull:
//putText4noSeek("Move container destination", $00FF, "is full.") //RAM 0x802FD868
saveload4_copyfull:
putText4noSeek("Container destination", $00FF, "is full.")
//putText4noSeek("Copy container destination", $00FF, "is full.") //RAM 0x802FD8A0
saveload4_diskmatch:
putText4noSeek("Disk does not match.", $00FF, "Insert original disk.") //RAM 0x802FD8D8
saveload4_cantinitdisk:
putTextnoSeek("Cannot initialize disk.") //RAM 0x802FD924
saveload4_allfiles:
putTextnoSeek("All files could not be moved.") //RAM 0x802FD94C
saveload4_allfilesmoved:
putTextnoSeek("Every file has been moved.") //RAM 0x802FD988
saveload4_cantsavefile:
putTextnoSeek("Cannot save file.") //RAM 0x802FD9C0
saveload4_namenotgiven:
putTextnoSeek("Name was not given.") //RAM 0x802FD9E4
saveload4_another:
putTextnoSeek("Not on a seperate disk.") //RAM 0x802FDA08
saveload4_contentcantcopy:
putTextnoSeek("Cannot copy.") //RAM 0x802FDA28
saveload4_entercontainer:
putTextnoSeek("Cannot save anymore on this container.") //RAM 0x802FDA5C
saveload4_containerdeleted:
putText4noSeek("Every file of this container", $00FF, "has been deleted.") //RAM 0x802FDA98
saveload4_diskejectsaving:
putText4noSeek("Disk has been ejected.", $00FF, "Do not eject the disk while saving.") //RAM 0x802FDAD4
saveload4_errornumber:
putTextnoSeek("Error  ") //RAM 0x802FDB28
saveload4_readmanual:
putText4noSeek("For more details, please", $00FF, "read the instruction manual.") //RAM 0x802FDB3C
saveload4_thisdiskerror:
putTextnoSeek("This is a disk error.") //RAM 0x802FDB78

//Change pointers
seek(0x2E1E60)
dw (saveload4_containerfull),(saveload4_container70files),0,(saveload4_diskactionsuspended)
dw 0,(saveload4_cantwritecontainer),0,(saveload4_cantwritefile)
dw 0,(saveload4_enterdisk),0,(saveload4_filecantdelete)
dw 0,(saveload4_containercantdelete),0,(saveload4_filecantmove)
dw 0,(saveload4_namealreadyexists),0,(saveload4_cantmakecontainer)
dw 0,(saveload4_diskerror),0,(saveload4_reread)
dw 0,(saveload4_namenotchanged),0,(saveload4_filenamenotchanged)
dw 0,(saveload4_containernamenotchanged),0,(saveload4_filecantdeletewrite)
dw 0,(saveload4_diskcantdeletewrite),0,(saveload4_cannotmovesamecontainer)
dw 0,(saveload4_disknotinserted),0,(saveload4_cantusedisk)
dw 0,(saveload4_insertdisk),0,(saveload4_cantusename)
dw 0,(saveload4_diskcorrupted),0,(saveload4_diskfault)
dw (saveload4_correctdisk),0,(saveload4_nocontainer),0
dw (saveload4_no2container),0,(saveload4_cantmovecontent),(saveload4_container70files)
dw 0,(saveload4_nofile),0,(saveload4_cantremovecontent)
dw 0,(saveload4_filetypeload),0,(saveload4_filetypeoverwrite)
dw 0,(saveload4_containercantdeletewrite),0,(saveload4_containercantdeletefiles)
dw 0,(saveload4_error49),(saveload4_readmanual),(saveload4_insertdisk2)
dw 0,(saveload4_error2),0,(saveload4_readonly)
dw (saveload4_correctdisk),0,(saveload4_cantusedisk),0
dw (saveload4_movefull),(saveload4_container70files),0,(saveload4_copyfull)
dw (saveload4_container70files),0,(saveload4_filelargeload),0
dw (saveload4_diskmatch),0,(saveload4_cantinitdisk),0
dw (saveload4_allfiles),0,(saveload4_allfilesmoved),0
dw (saveload4_cantsavefile),0,(saveload4_namenotgiven),0
dw (saveload4_another),0,(saveload4_contentcantcopy),(saveload4_container70files)
dw 0,(saveload4_entercontainer),0,(saveload4_containerdeleted)
dw 0,(saveload4_error49),(saveload4_readmanual),0
dw (saveload4_diskejectsaving),0,0,0

seek(0x2904EE)
dh (saveload4_usedspace)
seek(0x291476)
dh (saveload4_currentwork1)
seek(0x29148E)
dh (saveload4_currentwork2)
seek(0x2914AE)
dh (saveload4_fromdisk)
seek(0x2914C6)
dh (saveload4_readfile)
seek(0x2914E6)
dh (saveload4_from64gb)
seek(0x2914FE)
dh (saveload4_readfile)
seek(0x29151E)
dh (saveload4_auxpaper)
seek(0x291536)
dh (saveload4_image)
seek(0x291556)
dh (saveload4_makingfile)
seek(0x291576)
dh (saveload4_takenphotos)
seek(0x292896)
dh (saveload4_selectcontainer)
seek(0x2928B6)
dh (saveload4_selectcontainerall1)
seek(0x2928CE)
dh (saveload4_selectcontainerall2)
seek(0x2928E6)
dh (saveload4_selectfile)
seek(0x29323E)
dh (saveload4_thisdiskerror)
seek(0x293282)
dh (saveload4_thisdiskerror)
seek(0x2932BE)
dh (saveload4_errornumber)

//Move Used Space number 1.2
seek(0x26DCB2)
dh 0x001A //.
seek(0x26DCCE)
dh 0x0018 //1
seek(0x26DCFE)
dh 0x001C //2

seek(0x2E2110)
base 0x802FDE40
saveload5_eject:
putTextnoSeek("Eject the disk.") //RAM 0x802FDE40
saveload5_insert:
putTextnoSeek("Insert disk.") //RAM 0x802FDE60
saveload5_insertboot:
putTextnoSeek("Insert the original game disk.") //RAM 0x802FDE7C
saveload5_wrong:
putTextnoSeek("Wrong disk.") //RAM 0x802FDE9C
saveload5_replace:
//putTextnoSeek("Change Disk") //RAM 0x802FDEC0
saveload5_replaceoriginal:
putTextnoSeek("Change Disk") //RAM 0x802FDEE0
saveload5_anotherread:
putTextnoSeek("Different Disk") //RAM 0x802FDF00
saveload5_originalread:
putTextnoSeek("Paint Studio Game Disk") //RAM 0x802FDF2C
saveload5_bootdiskrequired:
putTextnoSeek("Paint Studio Game Disk is required.") //RAM 0x802FDF4C
saveload5_kanji:
putTextnoSeek("* Pick the first kana of the kanji *") //RAM 0x802FDF90

//Change pointers
seek(0x2A21F6)
dh (saveload5_eject)
seek(0x2A2226)
dh (saveload5_eject)
seek(0x2A2256)
dh (saveload5_eject)
seek(0x2A2286)
dh (saveload5_insert)
seek(0x2A22E6)
dh (saveload5_insert)
seek(0x2A22B6)
dh (saveload5_insertboot)
seek(0x2A221A)
dh (saveload5_wrong)
seek(0x2A21EA)
dh (saveload5_replace)
seek(0x2A224A)
dh (saveload5_replaceoriginal)
seek(0x2A227A)
dh (saveload5_anotherread)
seek(0x2A22DA)
dh (saveload5_originalread)
seek(0x2A22AA)
dh (saveload5_bootdiskrequired)
seek(0x29FE6A)
dh (saveload5_kanji)

//Game Boy Camera Text 0x30A080
seek(0x30A080)
base 0x8029F0D0
gbcam_exit:
putTextnoSeek("Exit")
gbcam_back:
putTextnoSeek("Back")
gbcam_bright:
putTextnoSeek("Bright Colors")
gbcam_dark:
putTextnoSeek("Dark Colors")
seek(0x30A1B0)
gbcam_lever:
putTextnoSeek("Smooth")

//Game Boy Camera Text ASM Hack
seek(0x2FDFC2)
dh (gbcam_exit)
seek(0x2FE01A)
dh (gbcam_exit)
seek(0x2FE072)
dh (gbcam_exit)
seek(0x2FE0CA)
dh (gbcam_exit)
seek(0x2FE126)
dh (gbcam_exit)

seek(0x2FE16E)
dh (gbcam_back)
seek(0x2FE1B6)
dh (gbcam_bright)
seek(0x2FE1FE)
dh (gbcam_dark)
seek(0x2FE27A)
dh (gbcam_lever)
seek(0x2FE2D6)
dh (gbcam_lever)



//"GAMEBOYCAMERA" ID to detect US/EU Game Boy Camera - Zoinkity Hack
seek(0x1D047C)
dw 0x10400003, 0x8FA400B0, 0x10000087, 0x24140014, 0x3C058027, 0x8CA6C4F4, 0x10860002, 0x8CA5C4F8, 0x14850004
seek(0x2EF55F)
db 0x0C
seek(0x30D520)
db 0x47, 0x41, 0x4D, 0x45, 0x42, 0x4F, 0x59, 0x43, 0x41, 0x4D, 0x45, 0x52, 0x41, 0x00, 0x00, 0x00


//Game Boy Camera Text 0x32C870
seek(0x32C870)
base 0x802C18C0
gbcam_select1:
putTextnoSeek("Select an option")
gbcam_select2:
putTextnoSeek("Please choose a photo.")
seek(0x32C8C0)
dw (gbcam_select1)
seek(0x32C8D0)
dw (gbcam_select2)

seek(0x32C8E0)
base 0x802C1930
gbcam2_donoteject:
putTextnoSeek("Do not eject the disk.") //RAM 0x802C1940
gbcam2_prepsave:
putTextnoSeek("Prepared Save") //RAM 0x802C1960
gbcam2_unreadfiles:
putTextnoSeek("Unreadable Files") //RAM 0x802C1980
gbcam2_shootsetup:
putTextnoSeek("A: Shoot / B: Setup") //RAM 0x802C19AC
gbcam2_movieshot:
putTextnoSeek("Shooting Film") //RAM 0x802C19D4
gbcam2_continue:
putTextnoSeek("B: Continue shooting") //RAM 0x802C19E8
gbcam2_readback:
putTextnoSeek("A: Read / B: Back") //RAM 0x802C1A0C
gbcam2_read:
putTextnoSeek("Reading") //RAM 0x802C1A34

//pointers
seek(0x32C9F8)
dw (gbcam2_donoteject), (gbcam2_prepsave)
dw (gbcam2_unreadfiles), (gbcam2_shootsetup), (gbcam2_movieshot), (gbcam2_continue)
dw (gbcam2_readback), (gbcam2_read)

seek(0x32CA20)
base 0x802C1A70
gbcam3_containerfull:
putTextnoSeek("Container is full.") //RAM 0x802C1A70
gbcam3_diskactionsuspended:
putText4noSeek("Disk is ejected.", $00FF, "Access suspended.") //RAM 0x802C1A8C
gbcam3_cantwritecontainer:
putTextnoSeek("Cannot write in this container.") //RAM 0x802C1AC8
gbcam3_cantwritefile:
putTextnoSeek("Cannot write file.") //RAM 0x802C1AEC
gbcam3_enterdisk:
putTextnoSeek("Disk is full.") //RAM 0x802C1B10
gbcam3_filecantdelete:
putTextnoSeek("Cannot delete file.") //RAM 0x802C1B2C
gbcam3_containercantdelete:
putTextnoSeek("Cannot delete container.") //RAM 0x802C1B54
gbcam3_filecantmove:
putTextnoSeek("Cannot move file.") //RAM 0x802C1B7C
gbcam3_namealreadyexists:
putTextnoSeek("Name already exists.") //RAM 0x802C1BA0
gbcam3_cantmakecontainer:
putTextnoSeek("Cannot create container.") //RAM 0x802C1BC0
gbcam3_diskerror:
putTextnoSeek("Disk Error") //RAM 0x802C1BE8
gbcam3_reread:
putText4noSeek("Reread because the disk", $00FF, "has been replaced.") //RAM 0x802C1C00
gbcam3_namenotchanged:
putTextnoSeek("Name was not changed.") //RAM 0x802C1C30
gbcam3_filenamenotchanged:
putTextnoSeek("Cannot change filename.") //RAM 0x802C1C54
gbcam3_containernamenotchanged:
putTextnoSeek("Cannot change container name.") //RAM 0x802C1C84
gbcam3_filecantdeletewrite:
putTextnoSeek("Cannot write/delete file.") //RAM 0x802C1CB4
gbcam3_diskcantdeletewrite:
putTextnoSeek("Cannot write/delete on this disk.") //RAM 0x802C1CE4
gbcam3_cannotmovesamecontainer:
putTextnoSeek("Cannot move in the same container.") //RAM 0x802C1D14
gbcam3_disknotinserted:
putText4noSeek("Disk is ejected.", $00FF, "Insert disk.") //RAM 0x802C1D3C
gbcam3_cantusedisk:
putText4noSeek("Disk cannot be used here.", $00FF, "Insert correct disk.") //RAM 0x802C1D78
gbcam3_insertdisk:
dh 0x00FF //RAM 0x802C1DD0
gbcam3_insertdisk2:
putTextnoSeek("Insert disk.") //RAM 0x802C1DD4
gbcam3_cantusename:
putTextnoSeek("Cannot use name.") //RAM 0x802C1DF0
gbcam3_destroydata:
putTextnoSeek("The disk's data has been destroyed.") //RAM 0x802C1E0C
gbcam3_wrongdisk:
putTextnoSeek("Wrong disk.") //RAM 0x802C1E3C
gbcam3_correctdisk:
putTextnoSeek("Insert correct disk.") //RAM 0x802C1E64
gbcam3_nocontainer:
putTextnoSeek("No container.") //RAM 0x802C1E8C
gbcam3_no2container:
putTextnoSeek("No 2 or more containers.") //RAM 0x802C1EA4
gbcam3_cantmovecontent:
putText4noSeek("Cannot move files", ".", $00FF) //RAM 0x802C1ECC
gbcam3_container70files:
putText4noSeek("A single container can only", $00FF, "contain up to 70 files.") //RAM 0x802C1EFC
gbcam3_nofile:
putTextnoSeek("Container is empty.") //RAM 0x802C1F34
gbcam3_cantremovecontent:
putTextnoSeek("Cannot delete files.") //RAM 0x802C1F5C
gbcam3_fileloadfail:
putTextnoSeek("Cannot load file.") //RAM 0x802C1F84
gbcam3_toolarge:
putTextnoSeek("(Too large)") //RAM 0x802C1FA8
gbcam3_differenttype:
putTextnoSeek("(Different type)") //RAM 0x802C1FC8
gbcam3_filetypewrite:
putText4noSeek("Cannot write file.", $00FF, "(Different type)") //RAM 0x802C1FE8
gbcam3_containercantdeletewrite:
putText4noSeek("Cannot delete/write", $00FF, "in this container.") //RAM 0x802C201C
gbcam3_containercantdeletefiles:
putTextnoSeek("Cannot delete some files.") //RAM 0x802C204C
gbcam3_error49:
putTextnoSeek("Do not eject disk while in access.") //RAM 0x802C208C
gbcam3_error2:
putTextnoSeek("Reinsert disk.") //RAM 0x802C20CC
gbcam3_readonly:
putText4noSeek("Read-only disk.", $00FF, "Cannot be used.") //RAM 0x802C20F4
gbcam3_differentformat:
putTextnoSeek("Disk is different format.") //RAM 0x802C2134
gbcam3_movefull:
//putText4noSeek("Move container destination", $00FF, "is full.") //RAM 0x802C2160
gbcam3_copyfull:
putText4noSeek("Container destination", $00FF, "is full.")
//putText4noSeek("Copy container destination", $00FF, "is full.") //RAM 0x802C2190
gbcam3_nophoto:
putTextnoSeek("No photo found.") //RAM 0x802C21C0
gbcam3_cantinitdisk:
putTextnoSeek("Cannot initialize disk.") //RAM 0x802C21E8
gbcam3_errornumber:
//putTextnoSeek("Error  ") //RAM 0x802C220C UNUSED
gbcam3_readmanual:
putText4noSeek("For more details, please", $00FF, "read the instruction manual.") //RAM 0x802C2220
gbcam3_thisdiskerror:
//putTextnoSeek("This is a disk error.") //RAM 0x802C2258 UNUSED

gbcam3_transpaknotinserted:
gbcam3_otherpakinserted:
gbcam3_transpakproper:
putTextnoSeek("Transfer Pak is not inserted.") //RAM 0x802C2270
gbcam3_gbcameranotinserted:
gbcam3_gbcameranotinserted2:
gbcam3_gbotherinserted:
putTextnoSeek("GameBoy Camera is not inserted.") //RAM 0x802C2294
//gbcam3_gbotherinserted:
//putTextnoSeek("A cartridge other than the GameBoy Camera has been inserted.") //RAM 0x802C22CC
//gbcam3_otherpakinserted:
//putTextnoSeek("Something other than the Transfer Pak is inserted. Please replace with the Transfer Pak.") //RAM 0x802C2318
//gbcam3_transpakproper:
//putTextnoSeek("Transfer Pak is not properly inserted.") //RAM 0x802C237C
//gbcam3_gbcameranotinserted2:
//putTextnoSeek("GB Camera cartridge is not inserted.") //RAM 0x802C23EC

//pointers
seek(0x32D3C8)
dw (gbcam3_containerfull),(gbcam3_container70files)
dw 0,(gbcam3_diskactionsuspended),0,(gbcam3_cantwritecontainer)
dw 0,(gbcam3_cantwritefile),0,(gbcam3_enterdisk)
dw 0,(gbcam3_filecantdelete),0,(gbcam3_containercantdelete)
dw 0,(gbcam3_containercantdelete),0,(gbcam3_namealreadyexists)
dw 0,(gbcam3_cantmakecontainer),0,(gbcam3_diskerror)
dw 0,(gbcam3_reread),0,(gbcam3_namenotchanged)
dw 0,(gbcam3_filenamenotchanged),0,(gbcam3_containernamenotchanged)
dw 0,(gbcam3_filecantdeletewrite),0,(gbcam3_diskcantdeletewrite)
dw 0,(gbcam3_cannotmovesamecontainer),0,(gbcam3_disknotinserted)
dw 0,(gbcam3_cantusedisk),0,(gbcam3_insertdisk2)
dw 0,(gbcam3_cantusename),0,(gbcam3_destroydata)
dw (gbcam3_correctdisk),0,(gbcam3_wrongdisk),(gbcam3_correctdisk)
dw 0,(gbcam3_nocontainer),0,(gbcam3_no2container)
dw 0,(gbcam3_cantmovecontent),(gbcam3_container70files),0
dw (gbcam3_nofile),0,(gbcam3_cantremovecontent),0
dw (gbcam3_fileloadfail),(gbcam3_differenttype),0,(gbcam3_filetypewrite)
dw 0,(gbcam3_containercantdeletewrite),0,(gbcam3_containercantdeletefiles)
dw 0,(gbcam3_error49),(gbcam3_readmanual),(gbcam3_insertdisk)
dw 0,(gbcam3_error2),0,(gbcam3_readonly)
dw (gbcam3_correctdisk),0,(gbcam3_differentformat),(gbcam3_correctdisk)
dw 0,(gbcam3_transpaknotinserted),0,(gbcam3_gbcameranotinserted)
dw 0,(gbcam3_gbotherinserted),0,(gbcam3_otherpakinserted)
dw 0,(gbcam3_transpakproper),0,(gbcam3_gbcameranotinserted2)
dw 0,(gbcam3_movefull),(gbcam3_container70files),0
dw (gbcam3_copyfull),(gbcam3_container70files),0,(gbcam3_fileloadfail)
dw (gbcam3_toolarge),0,(gbcam3_nophoto),0
dw (gbcam3_cantinitdisk),0,0,0

//Menu
seek(0x32D650)
base 0x802C26A0
camera_saved:
putTextnoSeek("Saved Photos") //RAM 0x802C26A0
camera_take:
putTextnoSeek("   Take Photo") //RAM 0x802C26B4

//putTextnoSeek("Fixed Brightness") //RAM 0x802C26C8 UNUSED
//putTextnoSeek("Smooth") //RAM 0x802C26D8 UNUSED
//putTextnoSeek("Shoot") //RAM 0x802C26E8 UNUSED
//putTextnoSeek("Back") //RAM 0x802C26F4 UNUSED
//putTextnoSeek("Reset") //RAM 0x802C26FC UNUSED
//putTextnoSeek("Negative") //RAM 0x802C2708 UNUSED
//putTextnoSeek("Beta") //RAM 0x802C2710 UNUSED
//putTextnoSeek("Color") //RAM 0x802C2718 UNUSED
//putTextnoSeek("Mosaic") //RAM 0x802C2720 UNUSED
//putTextnoSeek("Bright") //RAM 0x802C272C UNUSED
//putTextnoSeek("Contrast") //RAM 0x802C2738 UNUSED
//putTextnoSeek("Color Reset") //RAM 0x802C2748 UNUSED
//putTextnoSeek("Photo Size:") //RAM 0x802C2758 UNUSED
//putTextnoSeek("Read") //RAM 0x802C276C UNUSED
//putTextnoSeek("OK") //RAM 0x802C2778 UNUSED
//putTextnoSeek("Color Change") //RAM 0x802C2780 UNUSED
//putTextnoSeek("Gradation") //RAM 0x802C278C UNUSED
//putTextnoSeek("Put Photo on Page") //RAM 0x802C279C UNUSED

seek(0x30283A)
dh (camera_saved)
seek(0x302852)
dh (camera_take)
seek(0x302852)
dh (camera_take)
