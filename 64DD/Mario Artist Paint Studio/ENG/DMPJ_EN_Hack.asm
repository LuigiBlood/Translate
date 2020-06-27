//Mario Artist Paint Studio - Various Hacks

//Text Hacks

//Remove Page 00F9011E00D7
seek(0x11E62C)
sb 0,3(v0) //dw 0xA0400003
seek(0x2AAE02) //Kanji Pages
dh 0x00


//Big Text: Use ASCII instead (1 byte)
//Function RAM 8000A884 - Disk 0x7DD44 - Text Rendering
//if it starts with FFFF then Shift-JIS text, if not then small text

seek(0x7E064)
base 0x8000ABA4
//Convert ASCII to Shift-JIS
sll v0,v0,1
lui s1,0x8005
addiu s1,s1,0x08CC
addu s1,s1,v0
lhu s1,0(s1)
//+1 byte (Shift-JIS)
seek(0x7E19C)
addiu s3,s3,1
//+1 byte (New Line)
seek(0x7DF30)
addiu s3,s3,1
//+0 byte (New Line)
seek(0x7E1C4)
nop


//Other Hacks

//International Game Boy Camera support (Zoinkity)
//"GAMEBOYCAMERA" ID to detect US/EU Game Boy Camera - Zoinkity Hack //RAM 0x80237994
seek(0x1D047C)
dw 0x10400003, 0x8FA400B0, 0x10000087, 0x24140014, 0x3C058027, 0x8CA6C4F4, 0x10860002, 0x8CA5C4F8, 0x14850004
//beq v0,0,$802379A4
//lw a0,b0(sp)
//b $80237BBC
//addiu s4,0,$14
//lui a1,$8027
//lw a2,-$3b0c(a1) //8026C4F4 "POCK" -> "BOYC"
//beq a0,a1,$802379B8
//lw a1,-$3b08(a1) //8026C4F8 "ETCA"
//bne a0,a1,$802379C8
seek(0x2EF55F)
db 0x0C

//"BOYC"
seek(0x204FDC)
db 0x42, 0x4F, 0x59, 0x43

//"GAMEBOYCAMERA   "
seek(0x30D520)
db 0x47, 0x41, 0x4D, 0x45, 0x42, 0x4F, 0x59, 0x43, 0x41, 0x4D, 0x45, 0x52, 0x41, 0x00, 0x00, 0x00