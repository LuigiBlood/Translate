//Mario Artist Polygon Studio
//Main Menu & Options

//Main Menu
seek(0x25EAB0)
base 0x807981E8

seek(0x260440)
mainmenu_simple:
  dw mainmenu_empty, mainmenu_S, mainmenu_i, mainmenu_m, mainmenu_p, mainmenu_l, mainmenu_e_small, 0
mainmenu_expert:
  dw mainmenu_empty, mainmenu_E, mainmenu_x, mainmenu_p, mainmenu_e_small, mainmenu_r, mainmenu_t, 0
mainmenu_options:
  dw mainmenu_empty, mainmenu_O, mainmenu_p, mainmenu_t, mainmenu_i, mainmenu_o_small, mainmenu_n, mainmenu_s_small, 0
mainmenu_gallery:
  dw mainmenu_empty, mainmenu_G, mainmenu_a, mainmenu_l, mainmenu_l, mainmenu_e_small, mainmenu_r, mainmenu_y, 0
mainmenu_shortcut:
  dw mainmenu_empty, mainmenu_S, mainmenu_h, mainmenu_o_small, mainmenu_r, mainmenu_t, mainmenu_c, mainmenu_u, mainmenu_t, 0

//Original RAM 80799BB0 - 8 chars / Simple
seek(0x24A902)
  dh mainmenu_simple

//Original RAM 80799BD4 - 6 chars / Expert
seek(0x24A99A)
  dh mainmenu_expert

//Original RAM 80799BF0 - 5 chars / Gallery
seek(0x24A94E)
  dh mainmenu_gallery

//Original RAM 80799C08 - 5 chars / Options
seek(0x24A9E6)
  dh mainmenu_options

//Original RAM 80799C20 - 5 chars / Shortcut
seek(0x24AA32)
  dh mainmenu_shortcut

//RAM 80799C38
seek(0x260500)
//Simple
dw 0x1E,0x16,0x7,0x9,0xA,0x7,0x7,0xB,0xF,0xF
//Gallery
dw 0xC8,0x1C,0x8,0x8,0x6,0x7,0x8,0x8,0xF,0xF
//Expert
dw 0xC8,0x15,0x9,0x9,0x9,0x8,0x8,0xF,0xF,0xF
//Options
dw 0xCE,0x17,0x9,0x9,0x7,0x7,0x9,0x9,0xF,0xF
//Shortcut
dw 0xCE,0x16,0x9,0x9,0x9,0x7,0x8,0x9,0x8,0xF

//Options
putTextByte(0x2668AC, "Mono")
putTextByte(0x2668C0, "Stereo")
putTextByte(0x2668D4, "Headphones")
putTextByte(0x2668E8, "Slow")
putTextByte(0x2668FC, "Medium")
putTextByte(0x266910, "Fast")
putTextByte(0x266924, "Same as A Button")
putTextByte(0x266938, "Slow Down Cursor")
putTextByte(0x26694C, "Show")
putTextByte(0x266960, "Don't Show")
putTextByte(0x266974, "Save Options")
