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

//Easier Team Naming Controls
//B = Backspace
//A = Enter Char
//START = Begin
//Odd = BYETUDLR, Even = AXLR...

//$2C0F75 - $988F75 - START Button (don't touch)
//$2C0FB1 - $988FB1 - L/R Buttons
//$2C0FFE - $988FFE - Left/Right D-Pad (don't touch)
//$2C1032 - $989032 - Up/Down D-Pad (don't touch)
//$2C10A3 - $9890A3 - B Button
//$2C10A9 - $9890A9 - X Button
//$2C10B2 - $9890B2 - Y Button
//$2C10C1 - $9890C1 - A Button (don't touch)
//$7614 - Current Team Name Char
//$9890E6 - Delete Current Char
//$989157 - Go Back one char
seekFile($2C10A3)
	lda $F3
	bit.b #$80
	beq +
	jsr $9157
	jmp $90E6
+;	jmp $90C1
