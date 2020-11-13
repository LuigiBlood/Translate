//VWF Hack by LuigiBlood
arch snes.cpu

//Doc:
//409000 - Text Rendering Buffer
//40A400 - Text Virtual Tileset
//40AE06 - Item Name (Pause Menu)

//44*8=352 pixels wide per line for Search Mode
//48*8=384 pixels wide per line outside Search Mode
//32*8=256 pixels wide per line for Item Name in Pause Menu

//D = 3500, DB = 00
define charcurrent($9C)	//(Global) Current Char Tile
define charshift($EE)	//(Global) Shift
define charsize($F0)	//(Global) Width of 8x16


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
seekFile($2FBD0C)	//Left Half of Char
	jsr setup_vwf_r
seekFile($2FBD3C)	//Right Half of Char
	jsr setup_vwf_r
seekFile($2FBD58)
	jsl next_vwf
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

reset_vwf_ri:
	jsl reset_vwf_direct
	lda.w #$7f7f
	rts

//VWF Hack - Item Name in Pause Menu
seekFile($2FBA48)
	jsr reset_vwf_ri
seekFile($0072B3)
	jsr setup_vwf_ri1
seekFile($0072E6)
	jsr setup_vwf_ri2
seekFile($007307)	
	jsl next_vwf
seekFile($0072A1)
	cmp.w #$002E
	db $90

seekAddr($00FD00)
setup_vwf_ri1:
	and.w #$03FF
	jsl setup_vwf
	rts

setup_vwf_ri2:
	and.w #$07FF
	jsl setup_vwf
	rts


seekFile($2FBF97)
//--Search Mode VWF Rendering
render_vwf_search:
	ldy.w #$0000
	lda.w #$0007
	sta $0F
	-;
	//Upper Tile
	pea $0000
	lda [$04],y
	jsl render_vwf_search_manage
	pla

	//Lower Tile
	pea $0100
	lda [$08],y
	jsl render_vwf_search_manage
	pla

	inx
	inx
	iny
	iny
	dec $0F
	bpl -
	rts
bound_check($2FBFDB)

seekFile($2FE02E)
//--Small Text VWF Rendering
render_vwf_small:
	ldy.w #$0000
	lda.w #$0007
	sta $0F
	-;
	//Upper Tile
	pea $0000
	lda [$04],y
	jsl render_vwf_small_manage
	pla

	//Lower Tile
	pea $0100
	lda [$08],y
	jsl render_vwf_small_manage
	pla

	inx
	inx
	iny
	iny
	dec $0F
	bpl -
	rts
bound_check($2FE068)

seekFile($0073A0)
//--Inventory VWF Rendering
render_vwf_inventory:
	lda.w #$0007
	sta $0F
	-;
	//Upper Tile
	lda [$04],y
	jsl render_vwf_inventory1

	//Lower Tile
	lda [$08],y
	jsl render_vwf_inventory2

	inx
	inx
	iny
	iny
	dec $0F
	bpl -
	rts
bound_check($0073BA)


seekFile((text_script_end & $3FFFFF))
//vwf routine here, A = gfx src, X = gfx dst, Y = vertical pixel
//16-bit A / Index

//--Reset VWF Vars
reset_vwf_direct:
	stz {charshift}
	stz {charsize}
	rtl

reset_vwf:
	//A = Command
	pha
	cmp #($6B-$62)	//Amount
	beq _reset_vwf_skip
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
	bit.w #$0001
	beq +
	lda {charshift}
	beq _reset_vwf_zero
+;	lda {charcurrent}
	inc
	bit.w #$0001
	beq +
	inc
+;	bit.w #$0010
	beq +
	clc
	adc.w #$0010
+;	sta {charcurrent}
	bra _reset_vwf_zero


//--VWF Rendering
render_vwf_main:
	//X = Render Address
	//Stack:
	//$01 - 16b 1st Tile Addr
	//$03 - 16b 2nd Tile Addr
	//$05 - 16b Return Address
	//$07 - 16b First Half
	//$09 - 16b Second Half
	phx
	phx
	jsr render_vwf_addr

	lda {charshift}
	beq +

	plx
	sep #$20

	lda $07-2,s
	and $0D
	sta $07-2,s
	lda $08-2,s
	and $0D
	sta $08-2,s

	lda $409000,x
	and $0C
	xba
	lda $409001,x
	and $0C
	xba

	rep #$20

	ora $07-2,s
	sta $409000,x
	bra ++

+;	plx
	lda $07-2,s
	sta $409000,x

+;	plx
	sep #$20
	lda $09-4,s
	and $0C
	sta $09-4,s
	lda $0A-4,s
	and $0C
	sta $0A-4,s

	lda $409010,x
	and $0D
	xba
	lda $409011,x
	and $0D
	xba
	rep #$20

	ora $09-4,s
	sta $409010,x

	rts

render_vwf_addr:
	//Wrap for second tile
	txa
	and.w #$00F0
	cmp.w #$00F0
	bcc +
	txa
	clc
	adc.w #$0100
	sta $03+2,s

	//Deal with calc error
+;	txa
	and.w #$0100
	beq +
	clc
	adc $01+2,s
	sta $01+2,s
	sta $03+2,s

+;	lda $01+2,s
	clc
	adc $16,s
	sta $01+2,s
	lda $03+2,s
	clc
	adc $16,s
	sta $03+2,s

	rts

render_vwf_shift:
	and.w #$00FF
	xba
render_vwf_shift2:
	phx
	ldx {charshift}
	beq +
-;	lsr
	dex
	bne -
+;	plx
	rts

render_vwf_search_manage:
			//$0E - Address (from 409000)
			//$0B - Return
	phy		//$09
	phx		//$07
	pha		//$05
	pha		//$03
	pha		//$01

	xba
	pha
	and $05+2,s
	sta $0C
	pla
	and.w #$00FF
	eor.w #$00FF
	ora $05,s
	eor.w #$FFFF
	ora $0C

render_vwf_generic_manage:
	sta $0C

	jsr render_vwf_shift

	sep #$20
	sta $03,s
	xba
	sta $01,s
	rep #$20
	
	lda $0C
	xba
	jsr render_vwf_shift

	sep #$20
	sta $04,s
	xba
	sta $02,s
	rep #$20

	lda.w #$00FF
	jsr render_vwf_shift
	sta $0C

	jsr render_vwf_main

	pla
	pla
	pla
	plx
	ply
	rtl


render_vwf_small_manage:
			//$0E - Address (from 409000)
			//$0B - Return
	phy		//$09
	phx		//$07
	pha		//$05
	pha		//$03
	pha		//$01

	xba
	pha
	and $05+2,s
	sta $0C
	pla
	and.w #$00FF
	eor.w #$00FF
	ora $05,s

	jmp render_vwf_generic_manage

render_vwf_inventory1:
	pea $1E06
	jsl render_vwf_inventory_manage
	pla
	rtl
render_vwf_inventory2:
	pea $1F06
	jsl render_vwf_inventory_manage
	pla
	rtl

render_vwf_inventory_manage:
			//$0E - Address (from 409000)
			//$0B - Return
	phy		//$09
	phx		//$07
	pha		//$05
	pha		//$03
	pha		//$01

	jmp render_vwf_generic_manage


//--Setup Char to be rendered
setup_vwf:
	//16-bit A / Index
	//A = Char ID
	phx
	phy
	pha
	
	tay
	lsr
	tax
	lda width_list,x	//Get Char Width
	and.w #$00FF
	tax
	tya
	bit.w #1
	beq setup_vwf_1
	
setup_vwf_2:
	txa					//If Char ID is Odd (Right Half)
	sec					//Then Size = Width - 8
	sbc.w #8			//If Size < 0 then Size = 0
	//bmi setup_vwf_0
	bra setup_vwf_end

setup_vwf_1:
	txa					//If Char ID is Even (Left Half)
	cmp.w #8			//If Width > 8 then Size = 8
	bcc setup_vwf_end	//Else Size = Width
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

//--Setup Next Char and update shift and size
next_vwf:
	//16-bit A / Index
	pha
	phx
	phy
	
	lda {charsize}
	bne +
	//If Char Size == 0 then do not go to next tile
	dec {charcurrent}
	clc
	adc {charshift}
	bra ++

	//If Char Size != 0 then check if next tile is needed
+;	clc
	adc {charshift}
	cmp.w #$0008
	bcs +
	dec {charcurrent}

	//If Size + Shift < 0 then go back a tile
+;
	bpl +
-;	clc
	adc.w #$0008
	dec {charcurrent}
	bmi -
	dec {charcurrent}
+;	and.w #$0007
	sta {charshift}
	
	ply
	plx
	pla
	
	inc {charcurrent}
	inc $9A
	
	rtl

//--List of Pixel Widths per Char
width_list:
//English Translation Font
	db 12, 12, 12, 12, 12, 12, 12, 12
	db 6,  12, 12, 12, 14, 12, 12, 12
	db 12, 12, 12, 14, 12, 14, 14, 14
	db 14, 12, 6,  12, 6,  12, 12, 8
	db 12, 12, 12, 12, 12, 12, 12, 12
	db 12, 12, 12, 12, 12, 12, 12, 12
	db 6,  10, 12, 6,  14, 12, 12, 12
	db 12, 10, 12, 12, 12, 14, 14, 14
	
	db 14, 12, 14, 12, 12, 9,  14, 6
	db 14, 9,  9,  9,  16, 10, 14, 14
	db 16, 16, 16, 13, 14, 15, 15, 14
	db 11, 14, 14, 16, 16, 16, 16, 16
	db 16, 16, 16, 16, 16, 16, 16, 16
	db 16, 16, 16, 16, 16, 16, 16, 16
	db 16, 16, 16, 16, 16, 16, 16, 16
	db 16, 16, 16, 16, 16, 16, 16, 16
	
	db 16, 16, 16, 16, 16, 16, 16, 16
	db 16, 16, 16, 16, 16, 16, 16, 16
	db 16, 16, 16, 16, 16, 16, 16, 16
	db 16, 16, 16, 16, 16, 16, 16, 16
	db 12, 12, 12, 12, 12, 12, 12, 12
	db 6,  12, 12, 12, 14, 12, 12, 12
	db 12, 12, 12, 14, 12, 14, 14, 14
	db 14, 12, 12, 12, 12, 12, 12, 12
	
	db 12, 12, 6,  10, 12, 6,  14, 12
	db 12, 12, 12, 10, 12, 12, 12, 14
	db 14, 14, 14, 12, 12, 8,  12, 12
	db 12, 12, 12, 12, 12, 12, 14, 6
	db 12, 16, 9,  9,  9,  16, 10, 12
	db 6,  12, 14, 7,  16, 16, 16, 16

	fill 255,16

//New Global Font
	db 12, 5,  11, 12, 10, 12, 13, 5
	db 7,  7,  9,  8,  5,  8,  5,  12
	db 10, 10, 10, 10, 10, 10, 10, 10
	db 10, 10, 5,  5,  9,  8,  9,  10
	db 14, 12, 11, 12, 12, 12, 12, 13
	db 12, 6,  11, 12, 10, 13, 13, 13
	db 12, 13, 12, 12, 12, 12, 13, 13
	db 13, 12, 11, 7,  12, 7,  9,  13

	db 7,  12, 12, 11, 12, 11, 11, 12
	db 12, 6,  8,  12, 6,  12, 12, 11
	db 12, 12, 11, 10, 9,  12, 12, 13
	db 12, 12, 12, 8,  4,  8,  12, 16
	db 12, 12, 14, 12, 12, 12, 12, 12
	db 6,  7,  13, 14, 12, 12, 12, 12
	db 12, 12, 12, 11, 11, 11, 11, 11
	db 6,  7,  11, 12, 12, 12, 12, 12

	db 12, 11