//Insert Data

//Clean Japanese Script
seekFile($21B400)
fill 0x20B9D,$FF

//Graphics

//-Font
seekFile($2AC000)
	insert "../gfx/en/font_main_en.bin"
seekFile($270000)
	insert "../gfx/en/font_kanji_en.bin"

	
//-Title Screen

//--Title
seekFile($121964)
	insert "../gfx/en/lz/lz_title_gfx.bin.lz"
seekFile($123726)
	insert "../gfx/en/lz/lz_title_map.bin.lz"
	
//--Subtitle
seekFile($1DA5ED)
	insert "../gfx/en/lz/lz_subtitle_gfx.bin.lz"

//--Intro
seekFile($123951)
	insert "../gfx/en/lz/lz_intro_gfx1.bin.lz"
seekFile($1246DE)
	insert "../gfx/en/lz/lz_intro_gfx2.bin.lz"
seekFile($125ADE)
	insert "../gfx/en/intro_pal.bin"
seekFile($21B9AC)
ins_intro_map:
	insert "../gfx/en/lz/lz_intro_map.bin.lz"


//Script
seekFile($300000)
text_script:
	insert "../text/en/script.bin"
	insert "../text/en/menu.bin"
	insert "../text/en/items.bin"
	