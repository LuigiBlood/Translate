//Mario Artist Polygon Studio
//Modeler Rocket

print "  - Modeler Rocket Text\n"

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
