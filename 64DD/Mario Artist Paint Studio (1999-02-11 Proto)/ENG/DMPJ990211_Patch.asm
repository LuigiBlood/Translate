//Patches

//Disable Print Output (Zoinkity)
seek(0x9DB83)
	db $12

//Fix Framebuffer Swapping (Zoinkity)
seek(0x9F0F3)
	db $03

//Force Framebuffer Change for High Resolution (LuigiBlood)
//seek(0xA12E0)
//	addiu sp, sp, -0x20
//	sw ra, 0x14(sp)
//	sw a0, 0x20(sp)
//	sw a1, 0x24(sp)
//	sw a2, 0x28(sp)
//	sw a3, 0x2C(sp)
//	
//	lui t0, 0x800C
//	addiu t0, t0, 0x9A90
//	lw t0, 4(t0)
//	sw a2, 4(t0)
//	
//	lw ra, 0x14(sp)
//	addiu sp, sp, 0x20
//	jr ra
//	nop

//International GameBoy Camera support
//TODO