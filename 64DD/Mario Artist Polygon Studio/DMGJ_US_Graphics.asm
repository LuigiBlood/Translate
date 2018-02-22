//Mario Artist Polygon Studio
//Graphic Replacement

//Title Screen
//Mario Artist GFX at 0x285BE0 (IA8) 216x12
seek(0x285BE0)
insert "GFX/MARIOARTIST_HALFSIZE.ia8.bin"

//Polygon Studio GFX at 0x286608 - 7440 bytes (IA8) 248x30
seek(0x286608)
insert "GFX/POLYGONSTUDIO.ia8.bin"


//Main Menu
//Simple / Gallery / Options / Shortcut / Expert
//Character I8 GFXs for "SimpleGaryOtonshcuEx"
seek(0x25EAB0)
base 0x807981E8
mainmenu_S:
  insert "GFX/menu_S.i8.bin"
mainmenu_i:
  insert "GFX/menu_i.i8.bin"
mainmenu_m:
  insert "GFX/menu_m.i8.bin"
mainmenu_p:
  insert "GFX/menu_p.i8.bin"
mainmenu_l:
  insert "GFX/menu_l.i8.bin"
mainmenu_e_small:
  insert "GFX/menu_e_small.i8.bin"
mainmenu_G:
  insert "GFX/menu_G.i8.bin"
mainmenu_a:
  insert "GFX/menu_a.i8.bin"
mainmenu_r:
  insert "GFX/menu_r.i8.bin"
mainmenu_y:
  insert "GFX/menu_y.i8.bin"
mainmenu_O:
  insert "GFX/menu_O.i8.bin"
mainmenu_t:
  insert "GFX/menu_t.i8.bin"
mainmenu_o_small:
  insert "GFX/menu_o_small.i8.bin"
mainmenu_n:
  insert "GFX/menu_n.i8.bin"
mainmenu_s_small:
  insert "GFX/menu_s_small.i8.bin"
mainmenu_h:
  insert "GFX/menu_h.i8.bin"
mainmenu_c:
  insert "GFX/menu_c.i8.bin"
mainmenu_u:
  insert "GFX/menu_u.i8.bin"
mainmenu_E:
  insert "GFX/menu_E.i8.bin"
mainmenu_x:
  insert "GFX/menu_x.i8.bin"
mainmenu_empty:
  fill 256

//Options
seek(0x260808)
insert "GFX/OPTION_CURSORSPEED.ia8.bin"
seek(0x2614D0)
insert "GFX/OPTION_SOUND.ia8.bin"
seek(0x261C58)
insert "GFX/OPTION_ZBUTTON.ia8.bin"
seek(0x2623E0)
insert "GFX/OPTION_HELP.ia8.bin"


//Gallery?
//0x731D70


//Save & Load
//Back Circle Arrow
seek(0x221520)
insert "GFX/BACKCIRCLE.rgba16.bin"

//Yes / No buttons
seek(0x2207A0)
insert "GFX/YES_NO.rgba16.bin"

//Save/Load
seek(0x20A5C0)
insert "GFX/SAVELOAD.i8.bin"

seek(0x233B20) //Load Color
insert "GFX/LOADSELECT.ci8.bin"

seek(0x234360) //Save Color
insert "GFX/SAVESELECT.ci8.bin"