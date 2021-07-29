//Mario Artist Polygon Studio
//Stage UFO

print "  - Stage UFO Text\n"

putTextByte(0x649D84, "Exit")
putTextByte(0x649D8C, "Undo")
putTextByte(0x649D98, "1/1")
db 0,0

putTextByte(0x649DAC, "None")
putTextByte(0x649DB4, "Move")
putTextByte(0x649DC4, "Rotate")
putTextByte(0x649DD4, "Scale")

putTextByte(0x649DE8, "All Axis")
putTextByte(0x649DFC, "Red Axis")
putTextByte(0x649E10, "Green Axis")
putTextByte(0x649E28, "Blue Axis")
putTextByte(0x649E3C, "Around Red Axis")
putTextByte(0x649E54, "Around Green Axis")
putTextByte(0x649E70, "Around Blue Axis")
putTextByte(0x649E88, "Scale Red Axis")
putTextByte(0x649E9C, "Scale Green Axis")
putTextByte(0x649EB0, "Scale Blue Axis")

putTextByte(0x649EC4, "Stage")
putTextByte(0x649ED0, "Background")
putTextByte(0x649EDC, "Effect")
putTextByte(0x649EE8, "Lighting")
putTextByte(0x649EF8, "Load Picture as Background")   //Unused

//Backgrounds RAM 80516784 - NDD 0x649F1C
seek(0x649F1C)
base 0x80516784
back01:
  putTextBytenoSeek("Mountain")
back02:
  putTextBytenoSeek("Metal")
back03:
  putTextBytenoSeek("Water Surface")
back04:
  putTextBytenoSeek("Maple")
back05:
  putTextBytenoSeek("Automobile")
back06:
  putTextBytenoSeek("Sunset")

back07:
  putTextBytenoSeek("Starry Sky")
back08:
  putTextBytenoSeek("Blue Sky")
back09:
  putTextBytenoSeek("Forest")
back10:
  putTextBytenoSeek("Dry Leaves")
back11:
  putTextBytenoSeek("Bamboo Grove")
back12:
  putTextBytenoSeek("Snowy")
back13:
  putTextBytenoSeek("Mirror")

back14:
  putTextBytenoSeek("Green")
back15:
  putTextBytenoSeek("Underwater")
back16:
  putTextBytenoSeek("Painting")
back17:
  putTextBytenoSeek("Cumulonimbus")
back18:
  putTextBytenoSeek("Clouds")
back19:
  putTextBytenoSeek("Horizon")

//Stages RAM 80516868 NDD 0x64A000
stage01:
  putTextBytenoSeek("Wood")
stage02:
  putTextBytenoSeek("Two Steps")
stage03:
  putTextBytenoSeek("Ship Holder")
stage04:
  putTextBytenoSeek("Case")
stage05:
  putTextBytenoSeek("Opened Cover")
stage06:
  putTextBytenoSeek("Exhibition Hall")

stage07:
  putTextBytenoSeek("Spacecraft")
stage08:
  putTextBytenoSeek("Airplace Holder")
stage09:
  putTextBytenoSeek("Wood Holder")
stage10:
  putTextBytenoSeek("Flower Pot")
stage11:
  putTextBytenoSeek("Traditional Garden")
stage12:
  putTextBytenoSeek("Dinner Table")
stage13:
  putTextBytenoSeek("Sci-Fi")

stage14:
  putTextBytenoSeek("Ranch")
stage15:
  putTextBytenoSeek("Water Tank")
stage16:
  putTextBytenoSeek("Moss")
stage17:
  putTextBytenoSeek("Race")
stage18:
  putTextBytenoSeek("City")
stage19:
  putTextBytenoSeek("Desert")

//Effects RAM 8051695C - NDD 0x64A0F4
effect01:
  putTextBytenoSeek("Rain")
effect02:
  putTextBytenoSeek("Snow")
effect03:
  putTextBytenoSeek("Thunder")
effect04:
  putTextBytenoSeek("Bubbles")
effect05:
  putTextBytenoSeek("Space")
effect06:
  putTextBytenoSeek("Twinkle")

effect07:
  putTextBytenoSeek("Halo")
effect08:
  putTextBytenoSeek("Explosions")
effect09:
  putTextBytenoSeek("Leaves")
effect10:
  putTextBytenoSeek("Fog")
effect11:
  putTextBytenoSeek("Sepia")
effect12:
  putTextBytenoSeek("Frame")
effect13:
  putTextBytenoSeek("Wire")

//Lighting RAM 805169E4 - NDD 0x64A17C
light01:
  putTextBytenoSeek("Sunset")
light02:
  putTextBytenoSeek("Red & Blue")
light03:
  putTextBytenoSeek("Moving Light")
light04:
  putTextBytenoSeek("Bottom Light")
light05:
  putTextBytenoSeek("Bright Models")
light06:
  putTextBytenoSeek("Color Switch")

//Pointers
seek(0x64A574)
dw back01, back02, back03, back04, back05, back06
dw back07, back08, back09, back10, back11, back12, back13
dw back14, 0, back15, back16, back17, back18, back19

seek(0x64A76C)
dw stage01, stage02, stage03, stage04, stage05, stage06
dw stage07, stage08, stage09, stage10, stage11, stage12, stage13
dw stage14, 0, stage15, stage16, stage17, stage18, stage19

seek(0x64A2F0)
dw effect01, effect02, effect03, effect04, effect05, effect06
dw effect07, effect08, effect09, effect10, effect11, effect12, effect13

seek(0x64A3B4)
dw light01, light02, light03, light04, light05, light06
