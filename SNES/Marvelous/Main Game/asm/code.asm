//Code ASM Hacks

//Relocate Script to 0x300000 / $F0:0000
seekFile($7C82)
asm_relocate_script:
	lda.w #text_script			//Address
	sta $40DBE0
	sta $08
	lda.w #(text_script >> 16)	//Bank

//ASM Hack to disable paging on the Team naming screen
seekFile($2C0FB1)
asm_disable_paging:
	lda.b #0

//Fix for Save & Quit Journal Menu ($2C1EE2)
seekFile($2C1ED2)
asm_menu_fix:
	lda $9AAD,x
	sta $7F009A,x
	lda $9ACB,x
	sta $7F00DA,x
	inx
	inx
	cpx.b #$1E
	bne asm_menu_fix //$EC
	
	fill 36,$EA	//Fill NOPs
	
	lda $75E8
	asl
	clc
	adc.w #$30A0
	sta $7F009A
	