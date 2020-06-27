//Hacks that needs improvements

//Function RAM 8000A884 - Disk 0x7DD44 - Text Rendering
//if it starts with FFFF then Shift-JIS text, if not then small text
//A0 = Short X / Y struct, A1 = String

//Function RAM 80001E54 - Disk ???     - Dma from DDROM (src, dst, size)
//Function RAM 80011C50 - Disk 0x85110 - LeoGetKAdr (Kanji)
//Function RAM 80012750 - Disk 0x85C10 - LeoGetAAdr (Ascii)

//Use 64DD ASCII font, not working
seek(0x7E064)
base 0x8000ABA4
//800508CC - Could be used for ASCII conversion
//v0 = char
//s1 = char
//80084F50 - char images (0x80 bytes each)
//80084B30 - char info (0x10 bytes each)
//80276E90 Capture Pak text
//800883B8 - 8009F6F8
//-- XXXX xxxx ???? mmmm AAAAAAAA yyyy ????
//xxxx*mmmm = ??

//Prep s0 as the char data output
lbu s1,0(a0)
lw t0,0x70(sp)
lw t9,0x78(sp)
lw t7,0x40(sp)
li t1, 0x80083c70
sll t0,t9,3
subu t0,t0,t9
sll t0,t0,2
subu t0,t0,t9
sll t0,t0,2
sll t8,s7,4
addu s4,t0,t1
addu s0,t7,t8
//Get Char Address and Info
addiu a0,s1,0x480
addiu a1,s0,0		//dx
addiu a2,s0,4		//dy
jal 0x80012750
addiu a3,s0,8		//cy
//DMA Char DDROM -> RAM
lw t2,0(s5)
li t4,0x80084F50
lui at,0x000A
sll t3,t2,7
addu a1,t3,t4
addu a0,v0,at
jal 0x80001E54
ori a2,0,0x80
//Prep Output
lw t5,0(s0)
addiu t5,t5,1
andi t5,t5,0xFFFE
sh t5,0(s0)
sh t5,2(s0)
lw t5,4(s0)
sh t5,0xC(s0)
li t5,0x800509DC	//Default Data
li t0,0x80084F50
lw t8,0(s5)
sll t9,t8,7
addu t1,t9,t0
sw t1,8(s0)
lw t7,4(t5)
sw t7,4(s0)
lhu t7,2(t5)
sh t7,2(s0)
ori v0,0,0
nop
nop
nop

print pc()

seek(0x7E19C)
addiu s3,s3,1