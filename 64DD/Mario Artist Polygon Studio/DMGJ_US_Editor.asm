//Mario Artist Polygon Studio
//Editor

print "- Assembling Editor Text...\n"

putTextByte(0x11F680, "Selected Color")

//COMMON (Loaded at boot)
print "  - Common Text\n"

//Camera
common_camera_reset:
  putTextByte(0x1BA5BC, "Reset Camera")  //802EB954
common_camera_switch:
  putTextByte(0x1BA5CC, "Switch Camera")
common_camera_center:
  putTextByte(0x1BA5DC, "Center Camera")

common_exit:
  putTextByte(0x1BA60C, "Exit")  //802EB9A4
common_undo:
  putTextByte(0x1BA614, "Undo")  //802EB9AC
common_nextpage:
  putTextByte(0x1BA620, "1/1")  //802EB9B8
  db 0,0
common_randomswitch:
  putTextByte(0x1BA634, "Random")  //802EB9CC
common_randomeverything:
  putTextByte(0x1BA648, "Randomize")  //802EB9E0
common_randomselected:
  putTextByte(0x1BA65C, "Swap Selection")  //802EB9F4

common_menu_backtomainmenu:
  putTextByte(0x1C2040, "Back to main menu")
common_menu_exit:
  putTextByte(0x1C2058, "Exit")
common_menu_stagesaveload:
  putTextByte(0x1C2060, "[Stage Work] Save & Load")
common_menu_blocksaveload:
  putTextByte(0x1C2088, "[Block Work] Save & Load")
common_menu_3dsaveload:
  putTextByte(0x1C20B0, "[3D Work] Save & Load")
common_menu_shortcut:
  putTextByte(0x1C20D4, "Shortcut")
common_menu_observe:
  putTextByte(0x1C20FC, "Observe")
common_menu_photo:
  putTextByte(0x1C210C, "Take Photos")
common_menu_break:
  putTextByte(0x1C211C, "Take a break")
common_menu_openworld:
  putTextByte(0x1C2130, "Open World")
common_menu_assemble:
  putTextByte(0x1C2144, "Assemble")
common_menu_create:
  putTextByte(0x1C2150, "Create")
common_menu_paint:
  putTextByte(0x1C2158, "Paint")
common_menu_bgm:
  putTextByte(0x1C2190, "Switch Music")

//Block Dome
block_delete:
  putTextByte(0x7BA31C, "Delete")
block_glue:
  putTextByte(0x7BA324, "Glue")
block_gluereset:
  putTextByte(0x7BA330, "Unglue")
block_copy:
  putTextByte(0x7BA344, "Copy")
block_3dwork:
  putTextByte(0x7BA34C, "Call [3D Work]")
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

base 0x805637F4
block_parts_cube:	//805637F4
  putTextByte(0x7BA544, "Cube")
block_parts_octa:
  putTextByte(0x7BA554, "Octahedron")
block_parts_slantedcuboid:
  putTextByte(0x7BA560, "Slanted Cuboid")
block_parts_cylinder:
  putTextByte(0x7BA578, "Cylinder")
block_parts_halfcylinder:
  putTextByte(0x7BA584, "Half Cylinder")
block_parts_triprism:
  putTextByte(0x7BA594, "Triangle Prism")
block_parts_6prism:
  putTextByte(0x7BA5A4, "6 Faced Prism")

block_parts_slantedcylinder:
  putTextByte(0x7BA5B4, "Slanted Cylinder")
block_parts_cone:
  putTextByte(0x7BA5C8, "Cone")
block_parts_tripyramid:
  putTextByte(0x7BA5D4, "Tri-Pyramid")
block_parts_quadpyramid:
  putTextByte(0x7BA5E4, "Quad-Pyramid")
block_parts_cup:
  putTextByte(0x7BA5F0, "Cylinder Cup")
block_parts_halfpyramid:
  putTextByte(0x7BA600, "Half Pyramid")
block_parts_halfpentagon:
  putTextByte(0x7BA610, "Half Pentagon")

block_parts_sphere:
  putTextByte(0x7BA620, "Sphere")
block_parts_spheroid:
  putTextByte(0x7BA628, "Spheroid")
block_parts_halfsphere:
  putTextByte(0x7BA638, "Half Sphere")
block_parts_dome:
  putTextByte(0x7BA644, "Dome")
block_parts_barrel:
  putTextByte(0x7BA64C, "Barrel")
block_parts_pipe:
  putTextByte(0x7BA654, "Pipe")
block_parts_ring:
  putTextByte(0x7BA65C, "Ring")

block_parts_malebody: //80563914 <---- MUST USE
  putTextByte(0x7BA664, "Male Body")
block_parts_femalebody:
  putTextByte(0x7BA678, "Female Body")
block_parts_turtlebody:
  putTextByte(0x7BA68C, "Turtle Body")
block_parts_dogbody:
  putTextByte(0x7BA69C, "Dog Body")
block_parts_rabbitbody:
  putTextByte(0x7BA6AC, "Rabbit Body")
block_parts_elephantbody:
  putTextByte(0x7BA6BC, "Elephant Body")
block_parts_dinobody:
  putTextByte(0x7BA6CC, "Dino Body")

block_parts_robotbody:
  putTextByte(0x7BA6E4, "Robot Body")
block_parts_beetlebody:
  putTextByte(0x7BA6F8, "Beetle Body")
block_parts_ladybugbody:
  putTextByte(0x7BA70C, "Ladybug Body")
block_parts_antbody:
  putTextByte(0x7BA724, "Ant Body")
block_parts_chickenbody:
  putTextByte(0x7BA734, "Chicken Body")
block_parts_owlbody:
  putTextByte(0x7BA748, "Owl Body")
block_parts_fishbody1:
  putTextByte(0x7BA75C, "Fish Body 1")

block_parts_fishbody2:
  putTextByte(0x7BA770, "Fish Body 2")
block_parts_robothead:
  putTextByte(0x7BA784, "Robot Head")
block_parts_rabbitarm:
  putTextByte(0x7BA798, "Rabbit Arm")
block_parts_dinoarm:
  putTextByte(0x7BA7A8, "Dino Arm")
block_parts_robotarm:
  putTextByte(0x7BA7BC, "Robot Arm")
block_parts_maleleg:
  putTextByte(0x7BA7CC, "Male Leg")
block_parts_femaleleg:
  putTextByte(0x7BA7DC, "Female Leg")

block_parts_turtleleg:
  putTextByte(0x7BA7EC, "Turtle Leg")
block_parts_dogleg:
  putTextByte(0x7BA7F8, "Dog Leg")
block_parts_rabbitleg:
  putTextByte(0x7BA804, "Rabbit Leg")
block_parts_elephantleg:
  putTextByte(0x7BA814, "Elephant Leg")
block_parts_dinoleg:
  putTextByte(0x7BA820, "Dino Leg")
block_parts_robotleg:
  putTextByte(0x7BA834, "Robot Leg")
block_parts_antleg:
  putTextByte(0x7BA844, "Ant Leg")

block_parts_chickenleg:
  putTextByte(0x7BA850, "Chicken Leg")
block_parts_chickenwing:
  putTextByte(0x7BA85C, "Chick Wing")
block_parts_fishfin:
  putTextByte(0x7BA868, "Fish Fin")
block_parts_hat:
  putTextByte(0x7BA878, "Hat")
block_parts_helmet:
  putTextByte(0x7BA880, "Helmet")
block_parts_sunglasses:
  putTextByte(0x7BA88C, "Sunglasses")
block_parts_bowtie:
  putTextByte(0x7BA898, "Bow Tie")

block_parts_backpack:
  putTextByte(0x7BA8A8, "Backpack")
block_parts_bikebody:
  putTextByte(0x7BA8B4, "Bike Body")
block_parts_bicyclebody:
  putTextByte(0x7BA8C4, "Bicycle Body")
block_parts_classiccar:
  putTextByte(0x7BA8DC, "Classic Car")
block_parts_fineengine:
  putTextByte(0x7BA8EC, "Fire Engine")
block_parts_truck:
  putTextByte(0x7BA8FC, "Truck")
block_parts_tankbody:
  putTextByte(0x7BA908, "Tank")

block_parts_train:
  putTextByte(0x7BA914, "Train")
block_parts_carriage:
  putTextByte(0x7BA920, "Carriage")
block_parts_express:
  putTextByte(0x7BA92C, "Express")
block_parts_heli:
  putTextByte(0x7BA938, "Helicopter")
block_parts_fuselage:
  putTextByte(0x7BA948, "Fuselage")
block_parts_missile:
  putTextByte(0x7BA95C, "Missile")
block_parts_submarine:
  putTextByte(0x7BA968, "Submarine")

block_parts_hoverboard:
  putTextByte(0x7BA978, "Hoverboard")
block_parts_bicyclewheel:
  putTextByte(0x7BA988, "Bicycle Wheel")
block_parts_toywheel:
  putTextByte(0x7BA99C, "Toy Wheel")
block_parts_wheel:
  putTextByte(0x7BA9B0, "Wheel")
block_parts_metalbelt:
  putTextByte(0x7BA9BC, "Metal Belt")
block_parts_bumper:
  putTextByte(0x7BA9CC, "Bumper")
block_parts_handle:
  putTextByte(0x7BA9D8, "Handle")

block_parts_fender1:
  putTextByte(0x7BA9E4, "Fender 1")
block_parts_fender2:
  putTextByte(0x7BA9F4, "Fender 2")
block_parts_muffler:
  putTextByte(0x7BAA04, "Muffler")
block_parts_tank:
  putTextByte(0x7BAA10, "Tank")
block_parts_tankturret:
  putTextByte(0x7BAA18, "Turret")
block_parts_pillar:
  putTextByte(0x7BAA24, "Support")
block_parts_propeller:
  putTextByte(0x7BAA2C, "Propeller")

block_parts_sled:
  putTextByte(0x7BAA38, "Sled")
block_parts_tail:
  putTextByte(0x7BAA40, "Tail")
block_parts_guestcabin:
  putTextByte(0x7BAA48, "Guest Cabin")
block_parts_shipchimney:
  putTextByte(0x7BAA54, "Ship Chimney")
block_parts_house:
  putTextByte(0x7BAA64, "House")
block_parts_mansion:
  putTextByte(0x7BAA6C, "Mansion")
block_parts_window:
  putTextByte(0x7BAA78, "Window")

block_parts_roof:
  putTextByte(0x7BAA80, "Roof")
block_parts_towerroof:
  putTextByte(0x7BAA88, "Tower Roof")
block_parts_tower:
  putTextByte(0x7BAA94, "Tower")
block_parts_fence:
  putTextByte(0x7BAA9C, "Fence")
block_parts_chimney:
  putTextByte(0x7BAAA4, "Chimney")
block_parts_tree:
  putTextByte(0x7BAAB0, "Tre") //Pointer must be changed
block_parts_flower:
  putTextByte(0x7BAAB4, "Flower")
  
//Modeler Rocket
//Menu Specific
model_tutorial:
  putTextByte(0x7FBC80, "Tutorials")
model_wireframe:
  putTextByte(0x7FBC94, "Wireframe")
model_craft:
  putTextByte(0x7FBCA8, "Craft Mode")

model_tutorial01:
  putTextByte(0x61036C, "Chair")
model_tutorial02:
  putTextByte(0x610380, "Toilet")
model_tutorial03:
  putTextByte(0x610394, "House")
model_tutorial04:
  putTextByte(0x6103A8, "Sprinkler")

model_tutorial05:
  putTextByte(0x6103BC, "Dog")
model_tutorial06:
  putTextByte(0x6103D0, "Bird")
model_tutorial07:
  putTextByte(0x6103E4, "Stag Beetle")
model_tutorial08:
  putTextByte(0x6103F8, "Helmet")

model_tutorial09:
  putTextByte(0x61040C, "Dolphin")
model_tutorial10:
  putTextByte(0x610420, "Boat")
model_tutorial11:
  putTextByte(0x610434, "Submarine")
model_tutorial12:
  putTextByte(0x610448, "Propeller Plane")

seek(0x896200)
base 0x8060EE40
//Basic Models
//Page 1
model_basic01:
  putTextBytenoSeek("Pyramid")
model_basic02:
  putTextBytenoSeek("Cube")
model_basic03:
  putTextBytenoSeek("Cuboid")
model_basic04:
  putTextBytenoSeek("Octahedron")
model_basic05:
  putTextBytenoSeek("Dodecahedron")
model_basic06:
  putTextBytenoSeek("Icosahedron")
model_basic07:
  putTextBytenoSeek("Spheroid")
//Page 2
model_basic08:
  putTextBytenoSeek("Sphere")
model_basic09:
  putTextBytenoSeek("Cone")
model_basic10:
  putTextBytenoSeek("Cylinder")
model_basic11:
  putTextBytenoSeek("Ring 1")
model_basic12:
  putTextBytenoSeek("Ring 2")
model_basic13:
  putTextBytenoSeek("Tunnel")
model_basic14:
  putTextBytenoSeek("Tile")

//Character Models
//Page 1
model_chara01:
  putTextBytenoSeek("Face")
model_chara02:
  putTextBytenoSeek("Complex Face")
model_chara03:
  putTextBytenoSeek("Human")
model_chara04:
  putTextBytenoSeek("Male")
model_chara05:
  putTextBytenoSeek("Female")
model_chara06:
  putTextBytenoSeek("Alien 1")
model_chara07:
  putTextBytenoSeek("Alien 2")
//Page 2
model_chara08:
  putTextBytenoSeek("Flower Man")
model_chara09:
  putTextBytenoSeek("Bipedal Robot")
model_chara10:
  putTextBytenoSeek("Tripedal Robot")
model_chara11:
  putTextBytenoSeek("Simple Robot")
model_chara12:
  putTextBytenoSeek("Robot Armor Type 1")
model_chara13:
  putTextBytenoSeek("Robot Armor Type 2")
model_chara14:
  putTextBytenoSeek("Robot Armor Type 3")
//Page 3
model_chara15:
  putTextBytenoSeek("Mario")
model_chara16:
  putTextBytenoSeek("Koopa Troopa")
model_chara17:
  putTextBytenoSeek("Yoshi")
model_chara18:
  putTextBytenoSeek("Penguin")
model_chara19:
  putTextBytenoSeek("Ghost")
model_chara20:
  putTextBytenoSeek("Hydra")
model_chara21:
  putTextBytenoSeek("Dragon")

//Animal Models
//Page 1
model_animal01:
  putTextBytenoSeek("Mouse")
model_animal02:
  putTextBytenoSeek("Giraffe")
model_animal03:
  putTextBytenoSeek("Horse")
model_animal04:
  putTextBytenoSeek("Pig")
model_animal05:
  putTextBytenoSeek("Bull")
model_animal06:
  putTextBytenoSeek("Elephant")
model_animal07:
  putTextBytenoSeek("Dog")
//Page 2
model_animal08:
  putTextBytenoSeek("Gull")
model_animal09:
  putTextBytenoSeek("Dodo")
model_animal10:
  putTextBytenoSeek("Turtle")
model_animal11:
  putTextBytenoSeek("Lizard")
model_animal12:
  putTextBytenoSeek("Snake")
model_animal13:
  putTextBytenoSeek("Stegosaurus")
model_animal14:
  putTextBytenoSeek("Snail")
//Page 3
model_animal15:
  putTextBytenoSeek("Ant")
model_animal16:
  putTextBytenoSeek("Centipede")
model_animal17:
  putTextBytenoSeek("Scorpion")
model_animal18:
  putTextBytenoSeek("Butterfly")
model_animal19:
  putTextBytenoSeek("Dragonfly")
model_animal20:
  putTextBytenoSeek("Stag Beetle")
model_animal21:
  putTextBytenoSeek("Beetle")
//Page 4
model_animal22:
  putTextBytenoSeek("Goldfish")
model_animal23:
  putTextBytenoSeek("Squid")
model_animal24:
  putTextBytenoSeek("Shark")
model_animal25:
  putTextBytenoSeek("Sea Horse")
model_animal26:
  putTextBytenoSeek("Swordfish")
model_animal27:
  putTextBytenoSeek("Shrimp")
model_animal28:
  putTextBytenoSeek("Carp")

//Vehicle Models
//Page 1
model_vehicle01:
  putTextBytenoSeek("Open Top")
model_vehicle02:
  putTextBytenoSeek("4WD")
model_vehicle03:
  putTextBytenoSeek("Truck")
model_vehicle04:
  putTextBytenoSeek("Pickup")
model_vehicle05:
  putTextBytenoSeek("Sedan")
model_vehicle06:
  putTextBytenoSeek("Vintage Car")
model_vehicle07:
  putTextBytenoSeek("F1 Car")
//Page 2
model_vehicle08:
  putTextBytenoSeek("Bus")
model_vehicle09:
  putTextBytenoSeek("Bulldozer")
model_vehicle10:
  putTextBytenoSeek("Tank")
model_vehicle11:
  putTextBytenoSeek("Train")
model_vehicle12:
  putTextBytenoSeek("Quad")
model_vehicle13:
  putTextBytenoSeek("Motorcycle")
model_vehicle14:
  putTextBytenoSeek("Bicycle")
//Page 3
model_vehicle15:
  putTextBytenoSeek("Sailboat")
model_vehicle16:
  putTextBytenoSeek("Tanker")
model_vehicle17:
  putTextBytenoSeek("Helicopter")
model_vehicle18:
  putTextBytenoSeek("Plane")
model_vehicle19:
  putTextBytenoSeek("Glider")
model_vehicle20:
  putTextBytenoSeek("Jet Plane")
model_vehicle21:
  putTextBytenoSeek("Air Bus")

//Other Models
//Page 1
model_other01:
  putTextBytenoSeek("House")
model_other02:
  putTextBytenoSeek("Mansion")
model_other03:
  putTextBytenoSeek("Building")
model_other04:
  putTextBytenoSeek("TV Set")
model_other05:
  putTextBytenoSeek("Boom Box")
model_other06:
  putTextBytenoSeek("Mobile Phone")
model_other07:
  putTextBytenoSeek("N64 Controller")
//Page 2
model_other08:
  putTextBytenoSeek("Star")
model_other09:
  putTextBytenoSeek("Toy Train")
model_other10:
  putTextBytenoSeek("Teddy Bear")
model_other11:
  putTextBytenoSeek("Alarm Clock")
model_other12:
  putTextBytenoSeek("Lamp")
model_other13:
  putTextBytenoSeek("Sunflower")
model_other14:
  putTextBytenoSeek("Tree")
//Page 3
model_other15:
  putTextBytenoSeek("Couch")
model_other16:
  putTextBytenoSeek("Shades")
model_other17:
  putTextBytenoSeek("Watch")
model_other18:
  putTextBytenoSeek("Helmet")
model_other19:
  putTextBytenoSeek("Pistol")
model_other20:
  putTextBytenoSeek("Bottle")
model_other21:
  putTextBytenoSeek("Milk Carton")

//Pointer Model Names
seek(0x8968B4)
dw model_basic01, model_basic02, model_basic03, model_basic04, model_basic05, model_basic06, model_basic07
dw model_basic08, model_basic09, model_basic10, model_basic11, model_basic12, model_basic13, model_basic14

dw model_chara01, model_chara02, model_chara03, model_chara04, model_chara05, model_chara06, model_chara07
dw model_chara08, model_chara09, model_chara10, model_chara11, model_chara12, model_chara13, model_chara14
dw model_chara15, model_chara16, model_chara17, model_chara18, model_chara19, model_chara20, model_chara21

dw model_animal01, model_animal02, model_animal03, model_animal04, model_animal05, model_animal06, model_animal07
dw model_animal08, model_animal09, model_animal10, model_animal11, model_animal12, model_animal13, model_animal14
dw model_animal15, model_animal16, model_animal17, model_animal18, model_animal19, model_animal20, model_animal21
dw model_animal22, model_animal23, model_animal24, model_animal25, model_animal26, model_animal27, model_animal28

dw model_vehicle01, model_vehicle02, model_vehicle03, model_vehicle04, model_vehicle05, model_vehicle06, model_vehicle07
dw model_vehicle08, model_vehicle09, model_vehicle10, model_vehicle11, model_vehicle12, model_vehicle13, model_vehicle14
dw model_vehicle15, model_vehicle16, model_vehicle17, model_vehicle18, model_vehicle19, model_vehicle20, model_vehicle21

dw model_other01, model_other02, model_other03, model_other04, model_other05, model_other06, model_other07
dw model_other08, model_other09, model_other10, model_other11, model_other12, model_other13, model_other14
dw model_other15, model_other16, model_other17, model_other18, model_other19, model_other20, model_other21

//Interface
interface_nextpage:
  putTextByte(0x897510, "1/1")
interface_move:
  putTextByte(0x897524, "Move")
interface_rotate:
  putTextByte(0x897534, "Rotate")
interface_scale:
  putTextByte(0x897544, "Scale")
interface_vert:
  putTextByte(0x897558, "Point")
interface_edge:
  putTextByte(0x897560, "Edge")
interface_face:
  putTextByte(0x897568, "Face")
interface_model:
  putTextByte(0x897570, "Model")
interface_cut:
  putTextByte(0x897578, "Cut")
interface_connect:
  putTextByte(0x897580, "Connect")
interface_extrude:
  putTextByte(0x897590, "Extrude")
interface_round:
  putTextByte(0x89759C, "Round Off")
interface_remove:
  putTextByte(0x8975AC, "Remove")
interface_delete:
  putTextByte(0x8975B4, "Delete")
interface_tunnel:
  putTextByte(0x8975BC, "Create Tunnel")
interface_makepanel:
  putTextByte(0x8975D0, "Create Panel")
interface_edgeextrude:
  putTextByte(0x8975E0, "Edge Extrude")
interface_sharpextrude:
  putTextByte(0x8975F8, "Sharp Extrude")
interface_makeinsideface:
  putTextByte(0x89760C, "Create Inside Faces")
interface_changeshading:
  putTextByte(0x897624, "Change Shading")
interface_smoothen:
  putTextByte(0x897638, "Smoothen")
interface_copy:
  putTextByte(0x897648, "Copy")
interface_mirrorcopy:
  putTextByte(0x897650, "Mirror Copy")
interface_everyaxis:
  putTextByte(0x8976C4, "All Axis")
interface_fromtarget:
  putTextByte(0x8976D8, "From Target")
interface_redaxis:
  putTextByte(0x897704, "Red Axis")
interface_greenaxis:
  putTextByte(0x897718, "Green Axis")
interface_blueaxis:
  putTextByte(0x897730, "Blue Axis")
interface_aroundredaxis:
  putTextByte(0x897744, "Around Red Axis")
interface_aroundgreenaxis:
  putTextByte(0x89775C, "Around Green Axis")
interface_aroundblueaxis:
  putTextByte(0x897778, "Around Blue Axis")
interface_alongredaxis:
  putTextByte(0x897790, "Scale Red Axis")
interface_alonggreenaxis:
  putTextByte(0x8977A4, "Scale Green Axis")
interface_alongblueaxis:
  putTextByte(0x8977B8, "Scale Blue Axis")
interface_split2:
  putTextByte(0x8977CC, "2 parts")
interface_split3:
  putTextByte(0x8977D8, "3 parts")
interface_split4:
  putTextByte(0x8977E4, "4 parts")
interface_split5:
  putTextByte(0x8977F0, "5 parts")
interface_mirrorred:
  putTextByte(0x897838, "Mirror on Red Plane")
interface_mirrorgreen:
  putTextByte(0x897854, "Mirror on Green Plane")
interface_mirrorblue:
  putTextByte(0x897870, "Mirror on Blue Plane")
interface_basicmodel:
  putTextByte(0x89788C, "Basic")
interface_charamodel:
  putTextByte(0x89789C, "Characters")
interface_animalmodel:
  putTextByte(0x8978B0, "Animals")
interface_vehiclemodel:
  putTextByte(0x8978C0, "Vehicles")
interface_othermodel:
  putTextByte(0x8978D0, "Other")
  