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


//Expert Mode Menu
seek(0x650278)
insert "GFX/EXPERT_BLOCKDOME.i4.bin"
seek(0x6504C0)
insert "GFX/EXPERT_MODELROCKET.i4.bin"
seek(0x650708)
insert "GFX/EXPERT_STAGEUFO.i4.bin"

seek(0x650BA0)
insert "GFX/EXPERT_BLOCKDOMEANIM.i4.bin"
seek(0x6519B8)
insert "GFX/EXPERT_MODELROCKETANIM.i4.bin"
seek(0x6527D0)
insert "GFX/EXPERT_STAGEUFOANIM.i4.bin"


//Minigame Menu
//0x98E028 - RAM 8050E068
seek(0x98E030)
base 0x8050E070
//Go Go Pack! Logo
insert "GFX/MINIGAME_GOGOPACK.ia8.bin"

//BOOM BEAT (Sound Bomber) Logo
seek(0x98EA88) //RAM 8050EAC8 -
minigame_b:
  insert "GFX/MINIGAME_B.ia8.bin"
seek(0x98EB90) //RAM 8050EBD0 BA
minigame_o:
  insert "GFX/MINIGAME_O.ia8.bin"
seek(0x98EC98) //RAM 8050ECD8 BO
minigame_m:
  insert "GFX/MINIGAME_M.ia8.bin"

seek(0x98EFB0) //RAM 8050EFF0 DO
minigame_e:
  insert "GFX/MINIGAME_E.ia8.bin"

seek(0x98F188) //RAM 8050F1C8 N
minigame_a:
  insert "GFX/MINIGAME_A.ia8.bin"
seek(0x98F290) //RAM 8050F2D0 SA
minigame_t:
  insert "GFX/MINIGAME_T.ia8.bin"

seek(0x98F530) //RAM 8050F570 U
//none, kept in here just for documentation

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


//Minigame Pause Menus
//Exit
seek(0x715CB0)
insert "GFX/PAUSE_EXIT.i4.bin"
//Back
seek(0x715D78)
insert "GFX/PAUSE_BACK.i4.bin"
//Retry
seek(0x716F30)
insert "GFX/PAUSE_RETRY.i4.bin"

//Exit
seek(0x9E6C00)
insert "GFX/PAUSE_EXIT.i4.bin"
//Back
seek(0x9E6CC8)
insert "GFX/PAUSE_BACK.i4.bin"

//Exit
seek(0xA062E8)
insert "GFX/PAUSE_EXIT.i4.bin"
//Back
seek(0xA063B0)
insert "GFX/PAUSE_BACK.i4.bin"


//Buttons
//Yes
seek(0x1C7DE0)
insert "GFX/BUTTON_YES.ia8.bin"
//OK
seek(0x1C8428)
insert "GFX/BUTTON_OK.ia8.bin"
//No
seek(0x1C8A70)
insert "GFX/BUTTON_NO.ia8.bin"
//Back
seek(0x1C90B8)
insert "GFX/BUTTON_BACK.ia8.bin"


//Experimental World
//0x6FFA50 - Warps