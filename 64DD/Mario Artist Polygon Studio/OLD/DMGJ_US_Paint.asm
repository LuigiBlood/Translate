//Mario Artist Polygon Studio
//Paint

print "  - Paint Text\n"
putTextByte(0x11F680, "Selected Color")

//Brushes
putTextByte(0x953E18, "Felt Tip Pen")
putTextByte(0x953E28, "Spray")
putTextByte(0x953E34, "Oil Brush")
putTextByte(0x953E44, "Surface Fill")
putTextByte(0x953E58, "Paint Eater")

//Size
putTextByte(0x953E68, "Thin")
putTextByte(0x953E70, "Medium")
putTextByte(0x953E78, "Thick")

//Menu
putTextByte(0x953E80, "Stamps")
putTextByte(0x953E8C, "Color") //Unused? Can't find it.
putTextByte(0x953E98, "Monochrome") //Unused? Can't find it.
putTextByte(0x953EA4, "Fill")
putTextByte(0x953EB0, "Paint Over")
putTextByte(0x953EC0, "Picker")
putTextByte(0x953ECC, "Eraser")
putTextByte(0x953ED8, "Load Picture as Stamp")
putTextByte(0x953EFC, "Custom Stamp")
putTextByte(0x953F10, "Clear All")
putTextByte(0x953F20, "Flip")
putTextByte(0x953F2C, "Rotate")
putTextByte(0x953F38, "Preshade")
putTextByte(0x953F48, "Picker")
putTextByte(0x953F54, "Masking")

//Stamps
seek(0x953F60)
base 0x8049C028
//Page 1
stamp001:
  putTextBytenoSeek("Eye 1")
stamp002:
  putTextBytenoSeek("Eye 2")
stamp003:
  putTextBytenoSeek("Eye 3")
stamp004:
  putTextBytenoSeek("Eye 4")
stamp005:
  putTextBytenoSeek("Eye 5")
stamp006:
  putTextBytenoSeek("Eye 6")
stamp007:
  putTextBytenoSeek("Eye 7")

//Page 2
stamp008:
  putTextBytenoSeek("Comic Eye 1")
stamp009:
  putTextBytenoSeek("Comic Eye 2")
stamp010:
  putTextBytenoSeek("Comic Eye 3")
stamp011:
  putTextBytenoSeek("Comic Eye 4")
stamp012:
  putTextBytenoSeek("Comic Eye 5")
stamp013:
  putTextBytenoSeek("Comic Eye 6")
stamp014:
  putTextBytenoSeek("Comic Eye 7")

//Page 3
stamp015:
  putTextBytenoSeek("Comic Eye 8")
stamp016:
  putTextBytenoSeek("Comic Eye 9")
stamp017:
  putTextBytenoSeek("Comic Eye 10")
stamp018:
  putTextBytenoSeek("Comic Eye 11")
stamp019:
  putTextBytenoSeek("Comic Eye 12")
stamp020:
  putTextBytenoSeek("Comic Eye 13")
stamp021:
  putTextBytenoSeek("Comic Eye 14")

//Page 4
stamp022:
  putTextBytenoSeek("Comic Eye 15")
stamp023:
  putTextBytenoSeek("Comic Eye 16")
stamp024:
  putTextBytenoSeek("Comic Eye 17")
stamp025:
  putTextBytenoSeek("Comic Eye 18")
stamp026:
  putTextBytenoSeek("Comic Eye 19")
stamp027:
  putTextBytenoSeek("Comic Eye 20")
stamp028:
  putTextBytenoSeek("Comic Eye 21")

//Page 5
stamp029:
  putTextBytenoSeek("Comic Eye 22")
stamp030:
  putTextBytenoSeek("Comic Eye 23")
stamp031:
  putTextBytenoSeek("Comic Eye 24")
stamp032:
  putTextBytenoSeek("Comic Eye 25")
stamp033:
  putTextBytenoSeek("Comic Eye 26")
stamp034:
  putTextBytenoSeek("Comic Eye 27")
stamp035:
  putTextBytenoSeek("Comic Eye 28")

//Page 6
stamp036:
  putTextBytenoSeek("Mouth 1")
stamp037:
  putTextBytenoSeek("Mouth 2")
stamp038:
  putTextBytenoSeek("Mouth 3")
stamp039:
  putTextBytenoSeek("Mouth 4")
stamp040:
  putTextBytenoSeek("Mouth 5")
stamp041:
  putTextBytenoSeek("Mouth 6")
stamp042:
  putTextBytenoSeek("Mouth 7")

//Page 7
stamp043:
  putTextBytenoSeek("Mouth 8")
stamp044:
  putTextBytenoSeek("Mouth 9")
stamp045:
  putTextBytenoSeek("Mouth 10")
stamp046:
  putTextBytenoSeek("Mouth 11")
stamp047:
  putTextBytenoSeek("Mouth 12")
stamp048:
  putTextBytenoSeek("Mouth 13")
stamp049:
  putTextBytenoSeek("Mouth 14")

//Page 8
stamp050:
  putTextBytenoSeek("Comic Mouth 1")
stamp051:
  putTextBytenoSeek("Comic Mouth 2")
stamp052:
  putTextBytenoSeek("Comic Mouth 3")
stamp053:
  putTextBytenoSeek("Comic Mouth 4")
stamp054:
  putTextBytenoSeek("Comic Mouth 5")
stamp055:
  putTextBytenoSeek("Comic Mouth 6")
stamp056:
  putTextBytenoSeek("Comic Mouth 7")

//Page 9
stamp057:
  putTextBytenoSeek("Sticker 1")
stamp058:
  putTextBytenoSeek("Sticker 2")
stamp059:
  putTextBytenoSeek("Sticker 3")
stamp060:
  putTextBytenoSeek("Sticker 4")
stamp061:
  putTextBytenoSeek("Sticker 5")
stamp062:
  putTextBytenoSeek("Sticker 6")
stamp063:
  putTextBytenoSeek("Sticker 7")

//Page 10
stamp064:
  putTextBytenoSeek("Sticker 8")
stamp065:
  putTextBytenoSeek("Sticker 9")
stamp066:
  putTextBytenoSeek("Sticker 10")
stamp067:
  putTextBytenoSeek("Sticker 11")
stamp068:
  putTextBytenoSeek("Sticker 12")
stamp069:
  putTextBytenoSeek("Sticker 13")
stamp070:
  putTextBytenoSeek("Sticker 14")

//Page 11
stamp071:
  putTextBytenoSeek("Sticker 15")
stamp072:
  putTextBytenoSeek("Sticker 16")
stamp073:
  putTextBytenoSeek("Sticker 17")
stamp074:
  putTextBytenoSeek("Sticker 18")
stamp075:
  putTextBytenoSeek("Sticker 19")
stamp076:
  putTextBytenoSeek("Sticker 20")
stamp077:
  putTextBytenoSeek("Sticker 21")

//Page 12
stamp078:
  putTextBytenoSeek("Sticker 22")
stamp079:
  putTextBytenoSeek("Sticker 23")
stamp080:
  putTextBytenoSeek("Sticker 24")
stamp081:
  putTextBytenoSeek("Sticker 25")
stamp082:
  putTextBytenoSeek("Sticker 26")
stamp083:
  putTextBytenoSeek("Sticker 27")
stamp084:
  putTextBytenoSeek("Sticker 28")

//Page 13
stamp085:
  putTextBytenoSeek("Sticker 29")
stamp086:
  putTextBytenoSeek("Sticker 30")
stamp087:
  putTextBytenoSeek("Sticker 31")
stamp088:
  putTextBytenoSeek("Sticker 32")
stamp089:
  putTextBytenoSeek("Sticker 33")
stamp090:
  putTextBytenoSeek("Sticker 34")
stamp091:
  putTextBytenoSeek("Sticker 35")

//Page 14
stamp092:
  putTextBytenoSeek("Sticker 36")
stamp093:
  putTextBytenoSeek("Sticker 37")
stamp094:
  putTextBytenoSeek("Sticker 38")
stamp095:
  putTextBytenoSeek("Sticker 39")
stamp096:
  putTextBytenoSeek("Sticker 40")
stamp097:
  putTextBytenoSeek("Sticker 41")
stamp098:
  putTextBytenoSeek("Sticker 42")

//Page 15
stamp099:
  putTextBytenoSeek("Sticker 43")
stamp100:
  putTextBytenoSeek("Sticker 44")
stamp101:
  putTextBytenoSeek("Sticker 45")
stamp102:
  putTextBytenoSeek("Sticker 46")
stamp103:
  putTextBytenoSeek("Sticker 47")
stamp104:
  putTextBytenoSeek("Sticker 48")
stamp105:
  putTextBytenoSeek("Sticker 49")

//Page 16
stamp106:
  putTextBytenoSeek("Pattern 1")
stamp107:
  putTextBytenoSeek("Pattern 2")
stamp108:
  putTextBytenoSeek("Pattern 3")
stamp109:
  putTextBytenoSeek("Pattern 4")
stamp110:
  putTextBytenoSeek("Pattern 5")
stamp111:
  putTextBytenoSeek("Pattern 6")
stamp112:
  putTextBytenoSeek("Pattern 7")

//Page 17
stamp113:
  putTextBytenoSeek("Pattern 8")
stamp114:
  putTextBytenoSeek("Pattern 9")
stamp115:
  putTextBytenoSeek("Pattern 10")
stamp116:
  putTextBytenoSeek("Pattern 11")
stamp117:
  putTextBytenoSeek("Pattern 12")
stamp118:
  putTextBytenoSeek("Pattern 13")
stamp119:
  putTextBytenoSeek("Pattern 14")

//Page 18
stamp120:
  putTextBytenoSeek("Pattern 15")
stamp121:
  putTextBytenoSeek("Pattern 16")
stamp122:
  putTextBytenoSeek("Pattern 17")
stamp123:
  putTextBytenoSeek("Pattern 18")
stamp124:
  putTextBytenoSeek("Pattern 19")
stamp125:
  putTextBytenoSeek("Pattern 20")
stamp126:
  putTextBytenoSeek("Pattern 21")

//Page 19
stamp127:
  putTextBytenoSeek("Pattern 22")
stamp128:
  putTextBytenoSeek("Pattern 23")
stamp129:
  putTextBytenoSeek("Pattern 24")
stamp130:
  putTextBytenoSeek("Pattern 25")
stamp131:
  putTextBytenoSeek("Pattern 26")
stamp132:
  putTextBytenoSeek("Pattern 27")
stamp133:
  putTextBytenoSeek("Pattern 28")

//Page 20
stamp134:
  putTextBytenoSeek("Pattern 29")
stamp135:
  putTextBytenoSeek("Pattern 30")
stamp136:
  putTextBytenoSeek("Pattern 31")
stamp137:
  putTextBytenoSeek("Pattern 32")
stamp138:
  putTextBytenoSeek("Pattern 33")
stamp139:
  putTextBytenoSeek("Pattern 34")
stamp140:
  putTextBytenoSeek("Pattern 35")

//Page 21
stamp141:
  putTextBytenoSeek("Pattern 36")
stamp142:
  putTextBytenoSeek("Pattern 37")
stamp143:
  putTextBytenoSeek("Pattern 38")
stamp144:
  putTextBytenoSeek("Pattern 39")
stamp145:
  putTextBytenoSeek("Pattern 40")
stamp146:
  putTextBytenoSeek("Pattern 41")
stamp147:
  putTextBytenoSeek("Pattern 42")

//Pointers
seek(0x95474C)
dw stamp001, stamp002, stamp003, stamp004, stamp005, stamp006, stamp007
dw stamp008, stamp009, stamp010, stamp011, stamp012, stamp013, stamp014
dw stamp015, stamp016, stamp017, stamp018, stamp019, stamp020, stamp021
dw stamp022, stamp023, stamp024, stamp025, stamp026, stamp027, stamp028
dw stamp029, stamp030, stamp031, stamp032, stamp033, stamp034, stamp035
dw stamp036, stamp037, stamp038, stamp039, stamp040, stamp041, stamp042
dw stamp043, stamp044, stamp045, stamp046, stamp047, stamp048, stamp049
dw stamp050, stamp051, stamp052, stamp053, stamp054, stamp055, stamp056
dw stamp057, stamp058, stamp059, stamp060, stamp061, stamp062, stamp063
dw stamp064, stamp065, stamp066, stamp067, stamp068, stamp069, stamp070
dw stamp071, stamp072, stamp073, stamp074, stamp075, stamp076, stamp077
dw stamp078, stamp079, stamp080, stamp081, stamp082, stamp083, stamp084
dw stamp085, stamp086, stamp087, stamp088, stamp089, stamp090, stamp091
dw stamp092, stamp093, stamp094, stamp095, stamp096, stamp097, stamp098
dw stamp099, stamp100, stamp101, stamp102, stamp103, stamp104, stamp105
dw stamp106, stamp107, stamp108, stamp109, stamp110, stamp111, stamp112
dw stamp113, stamp114, stamp115, stamp116, stamp117, stamp118, stamp119
dw stamp120, stamp121, stamp122, stamp123, stamp124, stamp125, stamp126
dw stamp127, stamp128, stamp129, stamp130, stamp131, stamp132, stamp133
dw stamp134, stamp135, stamp136, stamp137, stamp138, stamp139, stamp140
dw stamp141, stamp142, stamp143, stamp144, stamp145, stamp146, stamp147
