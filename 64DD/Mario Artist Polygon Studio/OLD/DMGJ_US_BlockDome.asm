//Mario Artist Polygon Studio
//Block Dome

print "  - Block Dome Text\n"
block_delete:
  putTextByte(0x7BA31C, "Delete")
block_glue:
  putTextByte(0x7BA324, "Glue")
block_gluereset:
  putTextByte(0x7BA330, "Unglue")
block_copy:
  putTextByte(0x7BA344, "Copy")
block_3dwork:
  putTextByte(0x7BA34C, "Call 3D Model")
block_mirrorcopy:
  putTextByte(0x7BA368, "Mirror Copy")
block_move:
  putTextByte(0x7BA378, "Move")
block_rotate:
  putTextByte(0x7BA388, "Rotate")
block_scale:
  putTextByte(0x7BA398, "Scale")
block_everyaxis:
  putTextByte(0x7BA3AC, "All Axis")
block_redaxis:
  putTextByte(0x7BA3C0, "Red Axis")
block_greenaxis:
  putTextByte(0x7BA3D4, "Green Axis")
block_blueaxis:
  putTextByte(0x7BA3EC, "Blue Axis")
block_aroundredaxis:
  putTextByte(0x7BA400, "Around Red Axis")
block_aroundgreenaxis:
  putTextByte(0x7BA418, "Around Green Axis")
block_aroundblueaxis:
  putTextByte(0x7BA434, "Around Blue Axis")
block_scaleredaxis:
  putTextByte(0x7BA44C, "Scale Red Axis")
block_scalegreenaxis:
  putTextByte(0x7BA460, "Scale Green Axis")
block_scaleblueaxis:
  putTextByte(0x7BA474, "Scale Blue Axis")
block_mirrorred:
  putTextByte(0x7BA488, "Mirror on Red Plane")
block_mirrorgreen:
  putTextByte(0x7BA4A4, "Mirror on Green Plane")
block_mirrorblue:
  putTextByte(0x7BA4C0, "Mirror on Blue Plane")
block_reset:
  putTextByte(0x7BA4DC, "Reset")
block_partblock:
  putTextByte(0x7BA4E8, "Block Parts")
block_animblock:
  putTextByte(0x7BA4F8, "Animated Blocks")
block_questionblock:
  putTextByte(0x7BA510, "? Blocks")
block_powerblock:
  putTextByte(0x7BA51C, "Power Blocks")
block_soundblock:
  putTextByte(0x7BA530, "Sound Blocks")


//Block Parts
print "  - Block Dome Block Parts\n"
seek(0x7BA544)
base 0x805637F4
block_parts01: //RAM 80563914 - NDD 0x7BA664
  putTextBytenoSeek("Male Body")
block_parts02:
  putTextBytenoSeek("Female Body")
block_parts03:
  putTextBytenoSeek("Turtle Body")
block_parts04:
  putTextBytenoSeek("Dog Body")
block_parts05:
  putTextBytenoSeek("Rabbit Body")
block_parts06:
  putTextBytenoSeek("Elephant Body")
block_parts07:
  putTextBytenoSeek("Dino Body")

block_parts08:
  putTextBytenoSeek("Robot Body")
block_parts09:
  putTextBytenoSeek("Beetle Body")
block_parts10:
  putTextBytenoSeek("Ladybug Body")
block_parts11:
  putTextBytenoSeek("Ant Body")
block_parts12:
  putTextBytenoSeek("Chicken Body")
block_parts13:
  putTextBytenoSeek("Owl Body")
block_parts14:
  putTextBytenoSeek("Fish Body 1")

block_parts15:
  putTextBytenoSeek("Fish Body 2")
block_parts16:
  putTextBytenoSeek("Robot Head")
block_parts17:
  putTextBytenoSeek("Rabbit Arm")
block_parts18:
  putTextBytenoSeek("Dino Arm")
block_parts19:
  putTextBytenoSeek("Robot Arm")
block_parts20:
  putTextBytenoSeek("Male Feet")
block_parts21:
  putTextBytenoSeek("Female Feet")

block_parts22:
  putTextBytenoSeek("Turtle Feet")
block_parts23:
  putTextBytenoSeek("Dog Feet")
block_parts24:
  putTextBytenoSeek("Rabbit Feet")
block_parts25:
  putTextBytenoSeek("Elephant Feet")
block_parts26:
  putTextBytenoSeek("Dino Feet")
block_parts27:
  putTextBytenoSeek("Robot Feet")
block_parts28:
  putTextBytenoSeek("Ant Feet")

block_parts29:
  putTextBytenoSeek("Bird Feet")
block_parts30:
  putTextBytenoSeek("Wing")
block_parts31:
  putTextBytenoSeek("Fish Fin")
block_parts32:
  putTextBytenoSeek("Hat")
block_parts33:
  putTextBytenoSeek("Helmet")
block_parts34:
  putTextBytenoSeek("Sunglasses")
block_parts35:
  putTextBytenoSeek("Bow Tie")

block_parts36:
  putTextBytenoSeek("Backpack")
block_parts37:
  putTextBytenoSeek("Bike Body")
block_parts38:
  putTextBytenoSeek("Bicycle Body")
block_parts39:
  putTextBytenoSeek("Classic Car")
block_parts40:
  putTextBytenoSeek("Fire Engine")
block_parts41:
  putTextBytenoSeek("Truck")
block_parts42:
  putTextBytenoSeek("Tank Body")

block_parts43:
  putTextBytenoSeek("Train")
block_parts44:
  putTextBytenoSeek("Carriage")
block_parts45:
  putTextBytenoSeek("Express")
block_parts46:
  putTextBytenoSeek("Helicopter")
block_parts47:
  putTextBytenoSeek("Fuselage")
block_parts48:
  putTextBytenoSeek("Missile")
block_parts49:
  putTextBytenoSeek("Submarine")

block_parts50:
  putTextBytenoSeek("Hoverboard")
block_parts51:
  putTextBytenoSeek("Bicycle Wheel")
block_parts52:
  putTextBytenoSeek("Toy Wheel")
block_parts53:
  putTextBytenoSeek("Wheel")
block_parts54:
  putTextBytenoSeek("Metal Belt")
block_parts55:
  putTextBytenoSeek("Bumper")
block_parts56:
  putTextBytenoSeek("Handle")

block_parts57:
  putTextBytenoSeek("Fender 1")
block_parts58:
  putTextBytenoSeek("Fender 2")
block_parts59:
  putTextBytenoSeek("Muffler")
block_parts60:
  putTextBytenoSeek("Tank")
block_parts61:
  putTextBytenoSeek("Turret")
block_parts62:
  putTextBytenoSeek("Support")
block_parts63:
  putTextBytenoSeek("Propeller")

block_parts64:
  putTextBytenoSeek("Sled")
block_parts65:
  putTextBytenoSeek("Tail")
block_parts66:
  putTextBytenoSeek("Guest Cabin")
block_parts67:
  putTextBytenoSeek("Ship Chimney")
block_parts68:
  putTextBytenoSeek("House")
block_parts69:
  putTextBytenoSeek("Mansion")
block_parts70:
  putTextBytenoSeek("Window")

block_parts71:
  putTextBytenoSeek("Roof")
block_parts72:
  putTextBytenoSeek("Tower Roof")
block_parts73:
  putTextBytenoSeek("Tower")
block_parts74:
  putTextBytenoSeek("Fence")
block_parts75:
  putTextBytenoSeek("Chimney")
block_parts76:
  putTextBytenoSeek("Tree")
block_parts77:
  putTextBytenoSeek("Flower")

block_parts78:	//RAM 805637F4 - NDD 0x7BA544
  putTextBytenoSeek("Cube")
block_parts79:
  putTextBytenoSeek("Octahedron")
block_parts80:
  putTextBytenoSeek("Slanted Cuboid")
block_parts81:
  putTextBytenoSeek("Cylinder")
block_parts82:
  putTextBytenoSeek("Half Cylinder")
block_parts83:
  putTextBytenoSeek("Triangle Prism")
block_parts84:
  putTextBytenoSeek("6 Faced Prism")

block_parts85:
  putTextBytenoSeek("Slanted Cylinder")
block_parts86:
  putTextBytenoSeek("Cone")
block_parts87:
  putTextBytenoSeek("Triangular Pyramid")
block_parts88:
  putTextBytenoSeek("Pyramid")
block_parts89:
  putTextBytenoSeek("Cylinder Cup")
block_parts90:
  putTextBytenoSeek("Half Pyramid")
block_parts91:
  putTextBytenoSeek("Half Pentagon")

block_parts92:
  putTextBytenoSeek("Sphere")
block_parts93:
  putTextBytenoSeek("Spheroid")
block_parts94:
  putTextBytenoSeek("Half Sphere")
block_parts95:
  putTextBytenoSeek("Dome")
block_parts96:
  putTextBytenoSeek("Barrel")
block_parts97:
  putTextBytenoSeek("Pipe")
block_parts98:
  putTextBytenoSeek("Ring")

//Animated Blocks
block_anim01: //RAM 80563D6C NDD 0x7BAABC
  putTextBytenoSeek("Human Head")
block_anim02:
  putTextBytenoSeek("Skeleton Head")
block_anim03:
  putTextBytenoSeek("Turtle Head")
block_anim04:
  putTextBytenoSeek("Dog Head")
block_anim05:
  putTextBytenoSeek("Rabbit Head")
block_anim06:
  putTextBytenoSeek("Elephant Head")
block_anim07:
  putTextBytenoSeek("Dino Head")

block_anim08:
  putTextBytenoSeek("Male Arms")
block_anim09:
  putTextBytenoSeek("Female Arms")
block_anim10:
  putTextBytenoSeek("Robot Hand 1")
block_anim11:
  putTextBytenoSeek("Robot Hand 2")
block_anim12:
  putTextBytenoSeek("Eye")
block_anim13:
  putTextBytenoSeek("Nervous Eye")
block_anim14:
  putTextBytenoSeek("Chewing Gum")

block_anim15:
  putTextBytenoSeek("Lips")
block_anim16:
  putTextBytenoSeek("Beak")
block_anim17:
  putTextBytenoSeek("Beetle Horn")
block_anim18:
  putTextBytenoSeek("Stag Claw")
block_anim19:
  putTextBytenoSeek("Feeler")
block_anim20:
  putTextBytenoSeek("Tail")
block_anim21:
  putTextBytenoSeek("Pedal")

block_anim22:
  putTextBytenoSeek("Light")
block_anim23:
  putTextBytenoSeek("Warning Light")
block_anim24:
  putTextBytenoSeek("Wiper")
block_anim25:
  putTextBytenoSeek("Blade")
block_anim26:
  putTextBytenoSeek("Excavator")
block_anim27:
  putTextBytenoSeek("Roller")
block_anim28:
  putTextBytenoSeek("Iron Ball")

block_anim29:
  putTextBytenoSeek("Hammer")
block_anim30:
  putTextBytenoSeek("Drill")
block_anim31:
  putTextBytenoSeek("Circular Saw")
block_anim32:
  putTextBytenoSeek("Mixer Tank")
block_anim33:
  putTextBytenoSeek("Vulcan")
block_anim34:
  putTextBytenoSeek("Tank Cannon")
block_anim35:
  putTextBytenoSeek("Cockpit")

block_anim36:
  putTextBytenoSeek("Periscope")
block_anim37:
  putTextBytenoSeek("Radar")
block_anim38:
  putTextBytenoSeek("UFO")
block_anim39:
  putTextBytenoSeek("Piston")
block_anim40:
  putTextBytenoSeek("Gear")
block_anim41:
  putTextBytenoSeek("Screw")
block_anim42:
  putTextBytenoSeek("Alarm")

block_anim43:
  putTextBytenoSeek("Gate")
block_anim44:
  putTextBytenoSeek("Wave")
block_anim45:
  putTextBytenoSeek("Door")
block_anim46:
  putTextBytenoSeek("Pendulum")
block_anim47:
  putTextBytenoSeek("Clock")
block_anim48:
  putTextBytenoSeek("Balance Toy")
block_anim49:
  putTextBytenoSeek("Flower")

//? Blocks
block_unlock01: //RAM 80563FE8 - NDD 0x7BAD38
  putTextBytenoSeek("Bike Part 1")
block_unlock02:
  putTextBytenoSeek("Bike Part 2")
block_unlock03:
  putTextBytenoSeek("Bike Part 3")
block_unlock04:
  putTextBytenoSeek("Bike Part 4")
block_unlock05:
  putTextBytenoSeek("Bike Part 5")
block_unlock06:
  putTextBytenoSeek("Bike Part 6")
block_unlock07:
  putTextBytenoSeek("Bike Part 7")

block_unlock08:
  putTextBytenoSeek("Shuttle")
block_unlock09:
  putTextBytenoSeek("Sea Urchin")
block_unlock10:
  putTextBytenoSeek("Ammonite")
block_unlock11:
  putTextBytenoSeek("Strawberry")
block_unlock12:
  putTextBytenoSeek("Herb")
block_unlock13:
  putTextBytenoSeek("Hurray")
block_unlock14:
  putTextBytenoSeek("Pushups")

block_unlock15:
  putTextBytenoSeek("Crystal 1")
block_unlock16:
  putTextBytenoSeek("Crystal 2")
block_unlock17:
  putTextBytenoSeek("Crystal 3")
block_unlock18:
  putTextBytenoSeek("Crystal 4")
block_unlock19:
  putTextBytenoSeek("Crystal 5")
block_unlock20:
  putTextBytenoSeek("Crystal 6")
block_unlock21:
  putTextBytenoSeek("Crystal 7")

block_unlock22:
  putTextBytenoSeek("Bubbles")
block_unlock23:
  putTextBytenoSeek("Plasma")
block_unlock24:
  putTextBytenoSeek("Smoke")
block_unlock25:
  putTextBytenoSeek("Shining")
block_unlock26:
  putTextBytenoSeek("Twinkling")
block_unlock27:
  putTextBytenoSeek("Flame")
block_unlock28:
  putTextBytenoSeek("Explosion")

//Power Blocks
block_power01: //RAM 8056415C - NDD 0x7BAEAC
  putTextBytenoSeek("Male Feet")
block_power02:
  putTextBytenoSeek("Female Feet")
block_power03:
  putTextBytenoSeek("Turtle Feet")
block_power04:
  putTextBytenoSeek("Dog Feet")
block_power05:
  putTextBytenoSeek("Elephant Feet")
block_power06:
  putTextBytenoSeek("Dino Feet")
block_power07:
  putTextBytenoSeek("Robot Foot")

block_power08:
  putTextBytenoSeek("Ant Feet")
block_power09:
  putTextBytenoSeek("Shrimp Feet")
block_power10:
  putTextBytenoSeek("Bird Feet")
block_power11:
  putTextBytenoSeek("Duck Feet")
block_power12:
  putTextBytenoSeek("Frog Feet")

block_power13:
  putTextBytenoSeek("Bicycle Wheel")
block_power14:
  putTextBytenoSeek("Toy Wheel")
block_power15:
  putTextBytenoSeek("Wheel")
block_power16:
  putTextBytenoSeek("Speed Wheel")
block_power17:
  putTextBytenoSeek("Metal Belt")
block_power18:
  putTextBytenoSeek("Water Mill")

block_power19:
  putTextBytenoSeek("Handmade Wing")
block_power20:
  putTextBytenoSeek("Rocket Wing")
block_power21:
  putTextBytenoSeek("Airplane Wing")
block_power22:
  putTextBytenoSeek("Dino Wing")
block_power23:
  putTextBytenoSeek("Butterfly Wing")
block_power24:
  putTextBytenoSeek("Dragonfly Wing")
block_power25:
  putTextBytenoSeek("Bird Wing")

block_power26:
  putTextBytenoSeek("Propeller")
block_power27:
  putTextBytenoSeek("Speed Propeller")
block_power28:
  putTextBytenoSeek("Airship")
block_power29:
  putTextBytenoSeek("Lifesaver")
block_power30:
  putTextBytenoSeek("Ship")

block_power31:
  putTextBytenoSeek("Tadpole Tail")
block_power32:
  putTextBytenoSeek("Sea Turtle Foot")
block_power33:
  putTextBytenoSeek("Tail Fin")
block_power34:
  putTextBytenoSeek("Pectoral Fin")
block_power35:
  putTextBytenoSeek("Water Propeller")
block_power36:
  putTextBytenoSeek("Speed Water Propeller")

block_power37:
  putTextBytenoSeek("Jet")
block_power38:
  putTextBytenoSeek("Super Jet")
block_power39:
  putTextBytenoSeek("Power Engine")
block_power40:
  putTextBytenoSeek("Speed Engine")
block_power41:
  putTextBytenoSeek("Power Star")
block_power42:
  putTextBytenoSeek("Controller")

//Sound Blocks
block_sound01: //NDD 0x7BB138
  putTextBytenoSeek("Conga")
block_sound02:
  putTextBytenoSeek("Xylophone")
block_sound03:
  putTextBytenoSeek("Tuba")
block_sound04:
  putTextBytenoSeek("Guitar")
block_sound05:
  putTextBytenoSeek("Pizzicato")
block_sound06:
  putTextBytenoSeek("Horn")
block_sound07:
  putTextBytenoSeek("Clarinet")

block_sound08:
  putTextBytenoSeek("Heart")
block_sound09:
  putTextBytenoSeek("Improvisation")
block_sound10:
  putTextBytenoSeek("Frog")
block_sound11:
  putTextBytenoSeek("Spacey")
block_sound12:
  putTextBytenoSeek("Glockenspiel")
block_sound13:
  putTextBytenoSeek("Voice")
block_sound14:
  putTextBytenoSeek("Old Man")


//Pointers
seek(0x7BBFB8)
dw block_parts01, block_parts02, block_parts03, block_parts04, block_parts05, block_parts06, block_parts07
dw block_parts08, block_parts09, block_parts10, block_parts11, block_parts12, block_parts13, block_parts14
dw block_parts15, block_parts16, block_parts17, block_parts18, block_parts19, block_parts20, block_parts21
dw block_parts22, block_parts23, block_parts24, block_parts25, block_parts26, block_parts27, block_parts28
dw block_parts29, block_parts30, block_parts31, block_parts32, block_parts33, block_parts34, block_parts35
dw block_parts36, block_parts37, block_parts38, block_parts39, block_parts40, block_parts41, block_parts42
dw block_parts43, block_parts44, block_parts45, block_parts46, block_parts47, block_parts48, block_parts49
dw block_parts50, block_parts51, block_parts52, block_parts53, block_parts54, block_parts55, block_parts56
dw block_parts57, block_parts58, block_parts59, block_parts60, block_parts61, block_parts62, block_parts63
dw block_parts64, block_parts65, block_parts66, block_parts67, block_parts68, block_parts69, block_parts70
dw block_parts71, block_parts72, block_parts73, block_parts74, block_parts75, block_parts76, block_parts77

seek(0x7BB6A8)
dw block_parts78, block_parts79, block_parts80, block_parts81, block_parts82, block_parts83, block_parts84
dw block_parts85, block_parts86, block_parts87, block_parts88, block_parts89, block_parts90, block_parts91
dw block_parts92, block_parts93, block_parts94, block_parts95, block_parts96, block_parts97, block_parts98

seek(0x7BC654)
dw block_anim01, block_anim02, block_anim03, block_anim04, block_anim05, block_anim06, block_anim07
dw block_anim08, block_anim09, block_anim10, block_anim11, block_anim12, block_anim13, block_anim14
dw block_anim15, block_anim16, block_anim17, block_anim18, block_anim19, block_anim20, block_anim21
dw block_anim22, block_anim23, block_anim24, block_anim25, block_anim26, block_anim27, block_anim28
dw block_anim29, block_anim30, block_anim31, block_anim32, block_anim33, block_anim34, block_anim35
dw block_anim36, block_anim37, block_anim38, block_anim39, block_anim40, block_anim41, block_anim42
dw block_anim43, block_anim44, block_anim45, block_anim46, block_anim47, block_anim48, block_anim49

seek(0x7BC8A0)
dw block_sound01, block_sound02, block_sound03, block_sound04, block_sound05, block_sound06, block_sound07
dw block_sound08, block_sound09, block_sound10, block_sound11, block_sound12, block_sound13, block_sound14

seek(0x7BCC84)
dw block_unlock01, block_unlock02, block_unlock03, block_unlock04, block_unlock05, block_unlock06, block_unlock07
dw block_unlock08, block_unlock09, block_unlock10, block_unlock11, block_unlock12, block_unlock13, block_unlock14
dw block_unlock15, block_unlock16, block_unlock17, block_unlock18, block_unlock19, block_unlock20, block_unlock21
dw block_unlock22, block_unlock23, block_unlock24, block_unlock25, block_unlock26, block_unlock27, block_unlock28

seek(0x7BD310)
dw block_power01, block_power02, block_power03, block_power04, block_power05, block_power06, block_power07
dw block_power08, block_power09, block_power10, block_power11, block_power12, 0, 0
dw block_power13, block_power14, block_power15, block_power16, block_power17, 0, block_power18
dw block_power19, block_power20, block_power21, block_power22, block_power23, block_power24, block_power25
dw block_power26, block_power27, 0, block_power28, 0, block_power29, block_power30
dw block_power31, block_power32, block_power33, block_power34, block_power35, block_power36, 0
dw block_power37, block_power38, block_power39, block_power40, block_power41, 0, block_power42