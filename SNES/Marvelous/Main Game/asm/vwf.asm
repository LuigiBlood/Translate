//VWF Hack by LuigiBlood
arch snes.cpu

//Doc:
//409000 - Text Rendering Buffer
//40A400 - Text Virtual Tileset

//VWF Hack - Search Mode
seekFile($2BFD2C)	//SNES CPU - Text
jsr reset_vwf_r1
nop
nop
nop

seekFile($2FB64E)	//SA-1 - Items
jsr reset_vwf_r2

seekFile($2FB6C9)	//SA-1 - Text
jsr reset_vwf_r2

seekFile($2FBD0C)
jsr setup_vwf_r

seekFile($2FBD3C)
jsr setup_vwf_r

seekFile($2FBD58)
jsl next_vwf

seekFile($2FBFB5)
jsl main_vwf1

seekFile($2FBFCF)
jsl main_vwf2

seekFile($2FC03F)
db $90
//bcc $81B864		//Fix

seekFile($2FC02A)
db $B0
//bcs $81B879		//Fix

seekFile($2FBCD5)	//Space Fix
nop
nop

//VWF Hack - Small Text
seekFile($2FDDD2)
jsr reset_vwf_r2

seekFile($2FDF48)
jsr setup_vwf_rs

seekFile($2FDF78)
jsr setup_vwf_rs

seekFile($2FDF94)
jsl next_vwf

seekFile($2FE047)
jsl main_vwf1s

seekFile($2FE05C)
jsl main_vwf2s

seekFile($2FDF28)	//Space Fix
nop
nop

seekFile($2BFD70)
reset_vwf_r1:
	phd
	pea $3500
	pld
	jsl reset_vwf
	pld
	jsl $9FB689
	rts

seekFile($2FFFA0)
reset_vwf_r2:
	jsl reset_vwf
	rts

setup_vwf_r:
	jsl setup_vwf
	rts

setup_vwf_rs:
	and.w #$03FF
	jsl setup_vwf
	rts

seekFile((text_script_end & $3FFFFF))
//vwf routine here, A = gfx src, X = gfx dst, Y = vertical pixel
//16-bit A / Index

//D = 3500, DB = 00
define charshift($EE)
define charsize($F0)
define charx($F2)
define chary($F4)
define chara($F6)
define charx2($F8)
define chardelta($FA)
define charmode($FC)	//0 = Search, 1 = Small
define chara2($FE)
define charcurrent($9C)

reset_vwf:
	pha
	cmp #($6D-$62)	//Icon
	beq _reset_vwf_skip
	cmp #($71-$62)	//Item Icon?
	beq _reset_vwf_skip
	cmp #($73-$62)	//Scroll
	beq _reset_vwf_zero
	cmp #($74-$62)	//Line 1
	beq _reset_vwf_zero
	cmp #($75-$62)	//Line 2
	beq _reset_vwf_zero
	cmp #($76-$62)	//Line 3
	beq _reset_vwf_zero
	cmp #($77-$62)	//End 1
	beq _reset_vwf_zero
	cmp #($7F-$62)	//End 2
	beq _reset_vwf_zero
-;	pla
	sep #$30
	asl
	rtl

_reset_vwf_zero:
	//Reset Shift and Tile Size
	stz {charshift}
	stz {charsize}
	bra -

_reset_vwf_skip:
	//Space padding for Icons that require *even* tile offset to work properly.
	lda {charcurrent}
	bit.w #1
	bne +
	lda {charshift}
	beq -
+;	lda {charcurrent}
	inc
	bit.w #1
	beq +
	inc
+;	bit.w #$10
	beq +
	clc
	adc #$10
+;	sta {charcurrent}
	bra _reset_vwf_zero
	
	//Search Mode VWF Rendering
main_vwf:
	//Assume 16-bit A / Index
	sta {chara}
	stx {charx}
	stx {charx2}
	sty {chary}
	php
	
	rep #$30
	
	//Wrap for the second tile
	txa
	and.w #$00F0
	cmp.w #$00F0
	bcc +
	txa
	clc
	adc.w #$0100
	sta {charx2}

	//Deal with calculation error
+;	txa
	and.w #$0100
	beq +
	clc
	adc {charx}
	sta {charx}
	sta {charx2}

	//Add Delta
+;	lda {charx}
	clc
	adc {chardelta}
	eor {charmode}
	sta {charx}
	
	lda {charx2}
	clc
	adc {chardelta}
	eor {charmode}
	sta {charx2}
	
	//16-bit Shift Right (0xLLRR, LL = Left Tile, RR = Right Tile)
	lda {chara}
	and.w #$00FF
	xba
	
	ldx {charshift}
	beq +
-;	lsr
	dex
	bne -
	jmp _main_vwf_left

_main_vwf_left_replace:
	//Render left tile of char (replace)
+;	sta {chara2}
	xba
	sep #$20
	
	pha
	ldx {charx}
	rep #$20
	txa
	eor.w #1
	tay
	sep #$20
	pla
	sta $409000,x
	eor #$FF
	tyx
	sta $409000,x
	jmp _main_vwf_right

_main_vwf_left:
	//Render left tile of char
+;	sta {chara2}
	xba
	sep #$20
	
	pha
	ldx {charx}
	rep #$20
	txa
	eor.w #1
	tay
	sep #$20
	pla
	ora $409000,x
	sta $409000,x
	eor #$FF
	tyx
	sta $409000,x

_main_vwf_right:
	//Render right tile of char (if needed)
	sep #$20
	lda {chara2}
	//beq ++
	
+;	pha
	ldx {charx2}
	rep #$20
	txa
	eor.w #1
	tay
	sep #$20
	pla
	sta $409010,x
	eor #$FF
	tyx
	sta $409010,x
	
	+;
	plp
	//Restore Values
	lda {charx}
	sec
	sbc {chardelta}
	eor {charmode}
	tax
	
	lda {chara}
	ldy {chary}
	rtl

main_vwf1:
	//Assume 16-bit A / Index
	stz {charmode}
	stz {chardelta}
	jmp main_vwf
	
main_vwf2:
	//Assume 16-bit A / Index
	stz {charmode}
	pha
	lda.w #$0100
	sta {chardelta}
	pla
	jmp main_vwf

main_vwf1s:
	//Assume 16-bit A / Index
	xba
	pha
	lda.w #$0001
	sta {charmode}
	pla
	stz {chardelta}
	jmp main_vwf
	
main_vwf2s:
	//Assume 16-bit A / Index
	xba
	pha
	lda.w #$0001
	sta {charmode}
	xba
	//lda.w #$0100
	sta {chardelta}
	pla
	jmp main_vwf

	//Setup Char to be rendered
setup_vwf:
	//16-bit A / Index
	//A = ID
	phx
	phy
	pha
	
	sec
	//sbc.w #$0140
	sbc.w #$0
	bcc +
	
	tay
	lsr
	tax
	lda width_list,x
	and.w #$00FF
	tax
	tya
	bit.w #1
	beq setup_vwf_1
	
setup_vwf_2:
	txa
	sec
	sbc.w #8
	bmi setup_vwf_0
	bra setup_vwf_end

setup_vwf_1:
	txa
	cmp.w #8
	bcc setup_vwf_end
	lda.w #8
	bra setup_vwf_end

setup_vwf_0:
	lda.w #0
setup_vwf_end:
	sta {charsize}
	
	pla
	ply
	plx
	
	rtl
	
	+;
	lda.w #8
	sta {charsize}
	
	pla
	ply
	plx
	
	rtl

	//Setup Next Char and update shift and size
next_vwf:
	//16-bit A / Index
	pha
	phx
	phy
	
	lda {charsize}
	bne +
	dec {charcurrent}
	clc
	adc {charshift}
	bra ++
	
+;	clc
	adc {charshift}
	cmp.w #$0008
	bcs +
	dec {charcurrent}
+;	and.w #$0007
	sta {charshift}
	
	ply
	plx
	pla
	
	inc {charcurrent}
	inc $9A
	
	rtl

width_list:
	db 16, 16, 16, 16, 16, 16, 16, 14
	db 13, 13, 13, 13, 6,  6,  8,  8
	db 16, 16, 16, 16, 16, 16, 16, 16
	db 16, 16, 16, 14, 12, 12, 12, 12
	db 12, 12, 16, 12, 12, 12, 12, 12
	db 6,  6,  8,  8,  13, 12, 12, 12
	db 12, 12, 16, 13, 13, 13, 13, 14
	db 16, 16, 16, 16, 16, 16, 16, 16
	
	db 16, 16, 16, 16, 16, 16, 16, 16
	db 16, 16, 16, 16, 16, 16, 16, 16
	db 16, 16, 16, 16, 16, 16, 16, 16
	db 16, 16, 16, 16, 16, 16, 16, 16
	db 16, 16, 16, 16, 16, 16, 16, 16
	db 16, 16, 16, 16, 16, 16, 16, 16
	db 16, 16, 16, 16, 16, 16, 16, 16
	db 16, 16, 16, 16, 16, 16, 16, 16

	db 16, 16, 16, 16, 16, 16, 16, 16
	db 16, 16, 16, 16, 16, 16, 16, 16
	db 16, 16, 16, 16, 16, 16, 16, 16
	db 16, 16, 16, 16, 16, 16, 16, 16
	db 16, 14, 14, 14, 13, 14, 15, 14	//ABCDEFGH
	db 6,  11, 14, 14, 16, 16, 16, 14
	db 16, 15, 14, 16, 16, 16, 16, 16
	db 16, 14, 12, 12, 12, 12, 12, 12
	
	db 13, 13, 6,  9,  12, 6,  16, 13	//ghijklmn
	db 12, 12, 12, 10, 12, 11, 13, 14
	db 16, 14, 14, 12, 13, 7,  14, 14
	db 14, 13, 14, 14, 14, 14, 12, 6
	db 13, 16, 6,  6,  6,  16, 8,  7
	db 6,  16, 16, 8,  16, 16, 16, 16
	db 7,  16, 16, 16, 16, 16, 16, 16
	db 16, 16, 16, 16, 16, 16, 16, 16
	
	db 16, 16, 16, 16, 16, 16, 16, 16
	db 16, 16, 16, 16, 16, 16, 16, 16
	db 16, 16, 16, 16, 16, 16, 16, 16
	db 16, 16, 16, 16, 16, 16, 16, 16
	db 16, 16, 16, 16, 16, 16, 16, 16