//Mario Artist Polygon Studio
//Editor

print "- Assembling Editor Text...\n"

//COMMON (Loaded at boot)
print "  - Common Text\n"

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
  putTextByte(0x1C2130, "Experimental World")
common_menu_assemble:
  putTextByte(0x1C2144, "Assemble")
common_menu_create:
  putTextByte(0x1C2150, "Create")
common_menu_paint:
  putTextByte(0x1C2158, "Paint")
common_menu_bgm:
  putTextByte(0x1C2190, "Switch Music")

//Photo Mode
photo_return:
  putTextByte(0x95BA9C, "Back")
photo_save:
  putTextByte(0x95BAA4, "Save as [2D Work]")

include "DMGJ_US_BlockDome.asm"
include "DMGJ_US_ModelRocket.asm"
include "DMGJ_US_Paint.asm"
include "DMGJ_US_StageUFO.asm"
