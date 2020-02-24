//VWF Hack by LuigiBlood

//VWF Hack - Search Mode
arch snes.cpu

seekFile($6A800)
insert "all_x6A800_font_2bpp_opti.bin"

//VWF Hack - Search Mode
seekAddr($81AF5A)
jsr reset_vwf

seekAddr($81AFC5)
jsr reset_vwf

seekAddr($81B5A1)
jsr setup_vwf

seekAddr($81B5D1)
jsr setup_vwf

seekAddr($81B5ED)
jsl next_vwf

seekAddr($81B7E8)
jsl main_vwf1

seekAddr($81B802)
jsl main_vwf2

seekAddr($81B877)
bcc $81B864		//Fix

seekAddr($81B862)
bcs $81B879		//Fix

//VWF Hack - Small Text
arch snes.cpu

seekAddr($81CF7D)
jsr reset_vwf

seekAddr($81D04F)
jsr setup_vwf

seekAddr($81D07F)
jsr setup_vwf

seekAddr($81D09B)
jsl next_vwf

seekAddr($81D14E)
jsl main_vwf1s

seekAddr($81D163)
jsl main_vwf2s


seekAddr($81D800)
//vwf routine here, A = gfx src, X = gfx dst, Y = vertical pixel
//16-bit A / Index
define charshift($1D60)
define charsize($1D62)
define charx($1D64)
define chary($1D66)
define chara($1D68)
define charx2($1D6A)
define chardelta($1D6C)
define charmode($1D6E)	//0 = Search, 1 = Small
define chara2($1D70)
define charcurrent($0496)

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
	rts

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
	bra ++
+;	txa
+;	sta {charx2}

	//Deal with calculation error
	txa
	and.w #$0100
	cmp.w #$0100
	bcc +
	txa
	clc
	adc.w #$0100
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
	ora $7e8800,x
	sta $7e8800,x
	eor #$FF
	tyx
	sta $7e8800,x
	
	//Render right tile of char (if needed)
	sep #$20
	lda {chara2}
	beq ++
	
+;	pha
	ldx {charx2}
	rep #$20
	txa
	eor.w #1
	tay
	sep #$20
	pla
	sta $7e8810,x
	eor #$FF
	tyx
	sta $7e8810,x
	
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
	sbc.w #$0140
	bcc +
	
	tay
	lsr
	tax
	lda size_list,x
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
	
	rts
	
	+;
	lda.w #8
	sta {charsize}
	
	pla
	ply
	plx
	
	rts

	//Setup Next Char and update shift and size
next_vwf:
	//16-bit A / Index
	pha
	phx
	phy
	
	lda {charsize}
	bne +
	dec $96
	clc
	adc {charshift}
	bra ++
	
+;	clc
	adc {charshift}
	cmp.w #$0008
	bcs +
	dec $96
+;	and.w #$0007
	sta {charshift}
	
	ply
	plx
	pla
	
	inc $96
	inc $94
	
	rtl

size_list:
	db 16, 14, 14, 14, 13, 14, 15, 14
	db 6,  11, 14, 14, 16, 16, 16, 14
	db 16, 15, 14, 16, 16, 16, 16, 16
	db 16, 14, 12, 12, 12, 12, 12, 12
	db 13, 13, 6,  9,  12, 6,  16, 13
	db 12, 12, 12, 10, 12, 11, 13, 14
	db 16, 14, 14, 12, 13, 7,  14, 14
	db 14, 13, 14, 14, 14, 14, 12, 6
	db 16, 16, 16, 16, 16, 16, 16, 16
	db 16, 16, 16, 16, 16, 16, 16, 16
	db 16, 16, 16, 16, 16, 16, 16, 16
	db 16, 16, 16, 16, 16, 16, 16, 16
	db 16, 16, 16, 16, 16, 16, 16, 16
	db 16, 16, 16, 16, 16, 16, 16, 16
	db 16, 16, 16, 16, 16, 16, 16, 16
	db 16, 16, 16, 16, 16, 16, 16, 16
	db 16, 16, 16, 16, 16, 16, 16, 16