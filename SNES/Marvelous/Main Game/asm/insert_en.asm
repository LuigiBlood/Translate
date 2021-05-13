//Insert Data

//Clean Japanese Script
seekFile($21B400)
fill 0x20B9D,$FF

//Graphics

//-Font
seekFile($2AC000)
	//insert "../gfx/en/font_main_en.bin"
	insert "../text/font_main_global_en_new.bin"
seekFile($270000)
	//insert "../gfx/en/font_kanji_en.bin"
	insert "../text/font_kanji_global_en_new.bin"

	
//-Title Screen

//--Title
seekFile($121964)
gfx_title:
	insert "../gfx/en/lz/lz_title_gfx.bin.lz"
	bound_check($122F5E)
seekFile($123726)
map_title:
	insert "../gfx/en/lz/lz_title_map.bin.lz"
	bound_check($123951)

//--Nintendo Copyright
seekFile($1D948F)
gfx_title_nintendo:
	insert "../gfx/en/lz/lz_nintendo_gfx.bin.lz"
	bound_check($1DA5ED)

//--Subtitle
seekFile($1DA5ED)
gfx_title_sub:
	insert "../gfx/en/lz/lz_subtitle_gfx.bin.lz"
	bound_check($1DA9B5)

//--Intro
seekFile($123951)
gfx_intro1:
	insert "../gfx/en/lz/lz_intro_gfx1.bin.lz"
	bound_check($1246DE)
seekFile($1246DE)
gfx_intro2:
	insert "../gfx/en/lz/lz_intro_gfx2.bin.lz"
	bound_check($12550E)
seekFile($21B9AC)	//$12550E
map_intro:
	insert "../gfx/en/lz/lz_intro_map.bin.lz"
	//bound_check($1257F6)
seekFile($125ADD)
pal_intro:
	insert "../gfx/en/intro_pal.bin"
	bound_check($125BB6)


//-Menu

//--Search Menu Icons
seekFile($2B6000)
	insert "../gfx/en/menu_gfx.bin"

//--Misc HUD
seekFile($268000)
	//insert "../gfx/en/hud_gfx.bin"
	insert "../gfx/en_new/hud_gfx.bin"

//--Team Name Screen
seekFile($0E286B)
map_teamname:
	insert "../gfx/en_new/lz/lz_teamname_map.bin.lz"
	bound_check($0E2E23)

//--Journal Menu Tilemap Stuff (???)
seekFile($2C09B0)	//SELECTでゲーム画面た & Move & Select Text Hack
map_journal1:
	insert "../gfx/en_new/journal1_map.bin"
seekFile($2C1189)	//"Save"
map_journal2:
	insert "../gfx/en_new/journal2_map.bin"
seekFile($2C18C8)	//#に記録していいですか？
					//"Wanna save to entry #?"
map_journal3:
	insert "../gfx/en_new/journal3_map.bin"
seekFile($2C19BB)	//Change place to entry number
	sta $7F00B2
seekFile($2C1AAF)	//#に記録しました。
					//Journal entry # has been saved.
map_journal4:
	insert "../gfx/en_new/journal4_map.bin"
seekFile($2C1B1E)	//Change place to entry number
	sta $7F00AC


//-Chapter 1
seekFile($12DEB0)
map_ch1_misc:	//Chore list, Camp Tips, Benson`s Grave...
	insert "../gfx/en/lz/lz_chorelistmisc_map.bin.lz"
	bound_check($12E9BA)

seekFile($132FC4)
gfx_ch1_gina_ransom:
	insert "../gfx/en/lz/lz_gina_ransom_gfx.bin.lz"
	bound_check($134CA1)
seekFile($13C578)
gfx_ch1_patches_stuck:
	insert "../gfx/en/lz/lz_patchy_note_gfx.bin.lz"
	bound_check($13DF2F)
seekFile($1447AE)
gfx_ch1_camptips:
	insert "../gfx/en/lz/lz_camp_tips_gfx.bin.lz"
	bound_check($145F3B)
seekFile($14A478)
gfx_ch1_controls:
	insert "../gfx/en/lz/lz_controls_gfx.bin.lz"
	bound_check($14B628)
seekFile($21BBD0)	//$14B628
gfx_ch1_ship_notes:
	insert "../gfx/en/lz/lz_ship_notes_gfx.bin.lz"
	//bound_check($14CEBF)

seekFile($2BB96A)
map_ch1_ship_note_13:
	dw $01AC, $01AD, $01AC, $01AE, $01AF, $01B4, $01B1
	dw $01B2, $01B3, $01B2, $01B1, $01B5, $01B6, $01B7
seekFile($2BBAC6)
map_ch1_ship_note_1:
	dw $01CF, $01D0, $01D1, $01B1, $01B7, $01B1
	dw $01D2, $01D3, $01CE, $01DB, $01DC, $01B1
	dw $01D4, $01D5, $01D9, $01DA, $01B7, $01B1
	dw $01D6, $01D7, $01D8, $01CE, $01DB, $01DC
	dw $01B7, $01B1, $01B7, $01B1, $01B7, $01B1
seekFile($2D0E70)
map_ch1_ship_note_2:
	dw $1E00, $1E46, $1E10, $1E56, $1E4C, $1E6C
	dw $1E5C, $1E7C, $1E6F, $1E6E, $1E7F, $1E7E
	dw $1E6F, $1E00, $1E7F, $1E10, $1E4E, $1E4F
	dw $1E5E, $1E5F, $1E6A, $1E6B, $1E7A, $1E7B
	dw $1E4B, $1E4C, $1E5B, $1E5C, $1E4D, $1E00
	dw $1E5D, $1E10, $1E6F, $1E6D, $1E7F, $1E7D
	dw $1E4F, $1E6B, $1E5F, $1E7B, $1E6E, $1E6A
	dw $1E7E, $1E7A, $1E46, $1E6E, $1E56, $1E7E
	dw $1E47, $1E6F, $1E57, $1E7F, $1E6E, $1E47
	dw $1E7E, $1E57, $1E6F, $1E00, $1E7F, $1E10


//-Chapter 2
seekFile($142CE4)
gfx_ch2_bensongrave:
	insert "../gfx/en/lz/lz_bensongrave_gfx.bin.lz"
	bound_check($1447AE)
seekFile($145F3B)
gfx_ch2_monster:
	insert "../gfx/en/lz/lz_monsterposter_gfx.bin.lz"
	bound_check($1476D5)
seekFile($1490F9)
gfx_ch2_chorelist:
	insert "../gfx/en/lz/lz_chorelist_gfx.bin.lz"
	bound_check($14A478)

seekFile($2BB55F)
map_ch2_chorelist_1:
	insert "../gfx/en/chorelist_map1_edit.bin"
seekFile($2D2060)
map_ch2_chorelist_2:
	insert "../gfx/en/chorelist_map2_edit.bin"


//-Chapter 3
seekFile($12BDA4)
map_ch3_sign:
	insert "../gfx/en/lz/lz_officesign_map.bin.lz"
	bound_check($12C7C8)
seekFile($136BFE)
gfx_ch3_sign:
	insert "../gfx/en/lz/lz_officesign_gfx.bin.lz"
	bound_check($1384BF)


//-Chapter 4


//-Chapter 5
seekFile($1FE99C)
gfx_ch5_colonel_note1:
	insert "../gfx/en/lz/lz_colonel_note_gfx1.bin.lz"
	bound_check($200000)
seekFile($151D31)
gfx_ch5_colonel_note2:
	insert "../gfx/en/lz/lz_colonel_note_gfx2.bin.lz"
	bound_check($153005)


//-Misc

//--Credits
seekFile($125BB6)
gfx_credits:
	insert "../gfx/en/lz/lz_credits_gfx.bin.lz"
	bound_check($12735C)
seekFile($21B400)	//$12735C
map_credits:
	insert "../gfx/en/lz/lz_credits_map.bin.lz"
	//bound_check($1276AE)

//--Large Messages
//Monkey Screech, "HEY!", "That's Enough / Cut it OUT!"
seekFile($2CE000)
	insert "../gfx/en/font_large.bin"


//Script
seekFile($300000)
text_script:
	insert "../text/en_new/script.bin"
	include "../text/en_new/menu.asm"
	//insert "../text/en/menu.bin"
	insert "../text/en_new/items.bin"
	db $FF

text_script_end: