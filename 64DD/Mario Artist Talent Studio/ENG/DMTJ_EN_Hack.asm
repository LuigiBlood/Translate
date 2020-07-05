//Mario Artist Talent Studio
//Code Hacks

outputGame()

//GBCam Hack (Detect all versions of GameBoy Camera JP/US/EU + special versions)
//by Zoinkity
seek(0xAC17C)
addiu a2,r0,0x000C

//"GAMEBOYCAMERA   "
seek(0x138984)
db 0x47, 0x41, 0x4D, 0x45, 0x42, 0x4F, 0x59, 0x43, 0x41, 0x4D, 0x45, 0x52, 0x41, 0x00, 0x00, 0x00

seek(0x8E5DA0)
db 0x47, 0x41, 0x4D, 0x45, 0x42, 0x4F, 0x59, 0x43, 0x41, 0x4D, 0x45, 0x52, 0x41, 0x00, 0x00, 0x00


//8-bit char size - All
//RAM 8011FFB8 - 0x93878 - lhu t2,0(a0)
seek(0x93878)
lbu t2,0(a0)

//RAM 801200A4 - 0x93964 - lhu t9,2(a0)
seek(0x93964)
lbu t9,0(a0)

//RAM 801200E4 - 0x939A4 - lhu t2,2(a0)
seek(0x939A4)
lbu t2,1(a0)

//RAM 80120108 - 0x939C8 - lhu t2,2(a0)
//RAM 8012010C - 0x939CC - addiu a0,a0,2
seek(0x939C8)
lbu t2,1(a0)
addiu a0,a0,1

//RAM 801205C8 - 0x93E88 - lhu a2,0(a1)
seek(0x93E88)
lbu a2,0(a1)

//RAM 80120780 - 0x94040 - lhu a2,2(s1)
//RAM 80120784 - 0x94044 - addiu s1,s1,2
seek(0x94040)
lbu a2,1(s1)
addiu s1,s1,1

//8-bit char size - Save & Load
//Function was seen 3 times
//Function starts at 802BDC40 - ends at 802BDEB4 (628 bytes)
//0x89F2F8 (Save & Load) - 0x8DF2F0 (Camera) - 0x8F8990 (???)
//RAM 802BDC58 - lhu t6,0(a0) - +0x18
seek(0x8F8990 + 0x18)
lbu t6,0(a0)

//RAM 802BDC64 - lhu t7,0(a0) - +0x24
seek(0x8F8990 + 0x24)
lbu t7,0(a0)

//RAM 802BDCA8 - lhu t2,0(a0) - +0x68
seek(0x8F8990 + 0x68)
lbu t2,0(a0)

//RAM 802BDCC0 - lhu t3,0(a0) - +0x80
seek(0x8F8990 + 0x80)
lbu t3,0(a0)

//RAM 802BDCDC - lhu t5,0(a0) - +0x9C
seek(0x8F8990 + 0x9C)
lbu t5,0(a0)

//RAM 802BDCF8 - lhu t7,0(a0) - +0xB8
seek(0x8F8990 + 0xB8)
lbu t7,0(a0)

//RAM 802BDD14 - lhu t9,0(a0) - +0xD4
seek(0x8F8990 + 0xD4)
lbu t9,0(a0)

//RAM 802BDD30 - lhu t1,0(a0) - +0xF0
seek(0x8F8990 + 0xF0)
lbu t1,0(a0)

//RAM 802BDD4C - lhu t3,0(a0) - +0x10C
seek(0x8F8990 + 0x10C)
lbu t3,0(a0)

//RAM 802BDD64 - lhu t6,0(a0) - +0x124
seek(0x8F8990 + 0x124)
lbu t6,0(a0)

//RAM 802BDDA4 - lhu t6,2(a0) - +0x164
seek(0x8F8990 + 0x164)
lbu t6,1(a0)

//RAM 802BDE58 - addiu a0,a0,2 -+0x218
//RAM 802BDE5C - lhu t4,0(a0) - +0x21C
seek(0x8F8990 + 0x218)
addiu a0,a0,1
lbu t4,0(a0)


//More Text Parsing to 8-bit
seek(0x8F9104)
lbu t0,0(t8)
seek(0x8F9104 + 0x14)
lbu t9,0(t1)
seek(0x8F9104 + 0x3C)
lbu t3,0(t4)
seek(0x8F9104 + 0x58)
lbu t7,0(t6)
seek(0x8F9104 + 0x78)
lbu t0,0(t8)
seek(0x8F9104 + 0x98)
lbu t2,0(t9)
seek(0x8F9104 + 0xB8)
lbu t6,0(t3)
seek(0x8F9104 + 0xD8)
lbu t8,0(t5)
seek(0x8F9104 + 0xFC)
lbu a1,0(t1)
seek(0x8F9104 + 0x1A0)
addiu t5,t8,1
seek(0x8F9104 + 0x1AC)
lbu t1,0(t0)


//Percent to 8-bit RAM 802BF4AC - 0xBA0B64
seek(0x8E2C5C)
db 0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x00
seek(0x8E2C70)
db 0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x00

seek(0x90D23C)
db 0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x00
seek(0x90D250)
db 0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x00

seek(0x8E190C + 0x5C)
addiu t3,t2,8
seek(0x8E190C + 0x88)
sb t7,0(t8)
seek(0x8E190C + 0xE8)
addiu t9,t8,-1
seek(0x8E190C + 0x120)
sb t4,0(t5)

seek(0x8FA1B4 + 0x5C)
addiu t3,t2,8
seek(0x8FA1B4 + 0x88)
sb t7,0(t8)
seek(0x8FA1B4 + 0xE8)
addiu t9,t8,-1
seek(0x8FA1B4 + 0x120)
sb t4,0(t5)

//Numbering (Face Editor) 0x94165C
seek(0x94165C + 0x10)
sb t6,0(a0)
jr ra
sb 0,1(a0)
seek(0x94165C + 0x84)
sb t9,0(a0)
seek(0x94165C + 0xAC)
sb t1,1(a0)

//Page Number Text (Generic) 0x1950C0
seek(0x195104)
sb t7,0(a0)
addiu a0,a0,1

seek(0x195118)
sb t8,0(a0)
sb t9,1(a0)

seek(0x195124)
addiu a0,a0,2

seek(0x19515C)
sb t1,0(a0)
addiu a0,a0,1

seek(0x195168)
sb t2,0(a0)
addiu a0,a0,1
sb 0,0(a0)
jr ra
nop

//Page Number Text (Face) RAM 8028614C - 0x93A2CC
seek(0x93A2E0)
sb 0,0(a0)
seek(0x93A308)
nop
nop
nop
nop

seek(0x93A178)	//80285FE8
lbu a0,0(v0)
sb v1,0(v0)
addiu v0,v0,1
seek(0x93A190)
sb 0,0(v0)

//Page Number Text (Expressions) 0x9EDE94
seek(0x9EDE94 + 0x14)
sb 0,0(a0)
seek(0x9EDE94 + 0x3C)
nop
nop
nop
nop

seek(0x9EDD34 + 0xC)
lbu a0,0(v0)
sb v1,0(v0)
addiu v0,v0,1
seek(0x9EDD34 + 0x24)
sb 0,0(v0)

//Page Number Text (Pattern) 0xA2B44C
seek(0xA2B44C + 0x14)
sb 0,0(a0)
seek(0xA2B44C + 0x3C)
nop
nop
nop
nop

seek(0xA2B2EC + 0xC)
lbu a0,0(v0)
sb v1,0(v0)
addiu v0,v0,1
seek(0xA2B2EC + 0x24)
sb 0,0(v0)

//Page Number Text (Kanji - Talent Studio Info)
seek(0x90A5D8)
sb t1,0(t2)
seek(0x90A5F0)
sb t4,2(t5)


//Page Number Text (Background)
seek(0x104573C + 0x14)
sb 0,0(a0)
seek(0x104573C + 0x3C)
nop
nop
nop
nop

seek(0x10455DC + 0xC)
lbu a0,0(v0)
sb v1,0(v0)
addiu v0,v0,1
seek(0x10455DC + 0x24)
sb 0,0(v0)

//Page Number Text (Graffiti) RAM 802801E8 - 0x11C9988
seek(0x11C9988 + 0x14)
sb 0,0(a0)
seek(0x11C9988 + 0x3C)
nop
nop
nop
nop

seek(0x11C9828 + 0xC)
lbu a0,0(v0)
sb v1,0(v0)
addiu v0,v0,1
seek(0x11C9828 + 0x24)
sb 0,0(v0)

//Page Number Text (Camera)
seek(0x10A4608)
sb t0,0(a2)
seek(0x10A4610)
sb t1,2(a2)

//Page Number Text (Lighting)
seek(0x1093284)
sb t1,2(a1)
seek(0x1093290)
sb t0,0(a1)
seek(0x10932A8)
sb t4,0(a1)
seek(0x10932B8)
sb t7,2(a1)

//Intensity (Lighting)
seek(0x1095388)
sb t8,0(v0)
seek(0x10953EC)
sb t7,1(v0)
seek(0x1095414)
sb t9,2(v0)


//Page Number Text (Caption)
seek(0x109057C)
sb t3,2(a3)
seek(0x1090588)
sb t2,0(a3)
seek(0x10905A0)
sb t6,0(a3)
seek(0x10905B0)
sb t9,2(a3)

//Fix KANJI TEXT (Save & Load)
seek(0x89A7B4)	//Next line after 4 chars
sll t5,t4,0
addu t6,sp,t5
sb t3,0x58(t6)

seek(0x89A830)	//Change to "-"
addiu t0,0,0x0D
sll t2,t1,0
addu t3,sp,t2
sb t0,0x58(t3)

seek(0x89A868)	//Next line
sll t9,t8,0
addu t1,sp,t9
sb t7,0x58(t1)

seek(0x89A890)	//Regular Text
sll t5,t4,0
addu t6,sp,t5
sb t3,0x58(t6)

seek(0x89A8CC)	//Terminator
sll t3,t4,0
addu t5,sp,t3
sb 0,0x58(t5)

//Fix KANJI TEXT (Info Editor and Caption Editor)
seek(0x90B868)	//Next line after 4 chars
sll t7,t6,0
addu t8,sp,t7
sb t5,0x4C(t8)

seek(0x90B908)	//Change to "-"
addiu t2,0,0x0D
sll t3,t1,0
addu t4,sp,t3
sb t2,0x4C(t4)

seek(0x90B94C)	//Next line
sll t3,t2,0
addu t4,sp,t3
sb t1,0x4C(t4)

seek(0x90B980)	//Regular Text
sll t1,t2,0
addu t3,sp,t1
sb t0,0x4C(t3)

seek(0x90B9BC)	//Terminator
sll t0,t2,0
addu t1,sp,t0
sb 0,0x4C(t1)
