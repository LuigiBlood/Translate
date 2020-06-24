//Mario Artist Paint Studio - Japanese to English Translation
//by LuigiBlood

//Thanks to
//- SourceGaming (for some translation help)
//- Zoinkity (GameBoy Camera hack)

arch n64.cpu
endian msb
output "Mario Artist - Paint Studio.ndd", create
origin 0x000000; insert "NUD-DMPJ-JPN.ndd" // Include Japanese Mario Artist - Paint Studio N64 DD ROM

include "N64_CPUREGS.asm"

//Unique Macros
macro seek(n) {
  origin {n}
}

//Common Macros
include "DMPJ_US_Macros.asm"

//Translation
include "DMPJ_US_2DPaint.asm"
include "DMPJ_US_3DWorld.asm"
include "DMPJ_US_SaveLoad.asm"
include "DMPJ_US_GBCam.asm"

//Text Hacks
include "DMPJ_US_TextHack.asm"

//Graphics Hacks
include "DMPJ_US_Graphics.asm"

//GameBoy Camera International Hack
include "DMPJ_US_GBCamHack.asm"

//Remove Page 00F9011E00D7
seek(0x11E62C)
sb 0,3(v0) //dw 0xA0400003
seek(0x2AAE02) //Kanji Pages
dh 0x00

//Gallery is empty (Shift-JIS) 0x1856BC
putTextSJIS2(0x1856BC, "There is no","paintings.")

//Default Box Names (Shift-JIS) 0x186128
putTextASCIIBox(0x186128, "Mario", 0x86A6, "Gallery")
putTextASCIIBox(0x18613C, "Luigi", 0x81A1, "Gallery")
putTextASCIIBox(0x186154, "Wario", 0x819C, "Gallery")
putTextASCIIBox(0x186168, "Peach", 0x86A5, "Gallery")
putTextASCIIBox(0x18617C, "Bowser", 0x86A3, "Gallery")

putTextASCIIBox(0x186190, "Link", 0x86A4, "Box")
putTextASCIIBox(0x1861A4, "Samus", 0x81A5, "Box")
putTextASCIIBox(0x1861B8, "Yoshi", 0x81F4, "Box")
putTextASCIIBox(0x1861CC, "Donkey", 0x81A3, "Box")
putTextASCIIBox(0x1861E0, "Kirby", 0x819A, "Box")

//Main Menu
seek(0x18A168)
base 0x8015BBC0
//2D Paint description (Shift-JIS) 0x18A178 //RAM 0x8015BBD0
desc_2dpaint1:
putTextSJISnoSeek("4 artists")
// 0x18A18C //RAM 0x8015BBE4
desc_2dpaint2:
putTextSJISnoSeek("can draw")
// 0x18A19C //RAM 0x8015BBF4
desc_2dpaint3:
putTextSJISnoSeek("together!")
//2D Movie description (Shift-JIS) 0x18A1B0 //RAM 0x8015BC08
desc_2dmovie1:
putTextSJISnoSeek("Animate")
// 0x18A1C4 //RAM 0x8015BC1C
desc_2dmovie2:
putTextSJISnoSeek("your")
// 0x18A1DC //RAM 0x8015BC34
desc_2dmovie3:
putTextSJISnoSeek("drawings!")
//3D World description (Shift-JIS) 0x18A1F0 //RAM 0x8015BC48
desc_3dworld1:
putTextSJISnoSeek("Explore")
// 0x18A208 //RAM 0x8015BC60
desc_3dworld2:
putTextSJISnoSeek("worlds")
// 0x18A220 //RAM 0x8015BC78
desc_3dworld3:
putTextSJISnoSeek("& take photos!")
//Gallery  description (Shift-JIS) 0x18A238 //RAM 0x8015BC90
desc_gallery1:
putTextSJISnoSeek("Let's look")
// 0x18A24C //RAM 0x8015BCA4
desc_gallery2:
putTextSJISnoSeek("at all your")
// 0x18A264 //RAM 0x8015BCBC
desc_gallery3:
putTextSJISnoSeek("drawings!")

//Change pointers & positions
seek(0x11DE96)
dh (desc_2dpaint1)
seek(0x11DE7E)
dh $001D
seek(0x11DEDA)
dh (desc_2dpaint2)
seek(0x11DEBE)
dh $002D
seek(0x11DF1E)
dh (desc_2dpaint3)
seek(0x11DF02)
dh $003D

seek(0x11DF72)
dh (desc_2dmovie1)
seek(0x11DF5A)
dh $005B
seek(0x11DF5E)
dh $00B1
seek(0x11DFB6)
dh (desc_2dmovie2)
seek(0x11DF9A)
dh $008D
seek(0x11DF9E)
dh $00B1
seek(0x11DFFA)
dh (desc_2dmovie3)
seek(0x11DFDE)
dh $0066
seek(0x11DFE2)
dh $00BE

seek(0x11E04E)
dh (desc_3dworld1)
seek(0x11E036)
dh $0092
seek(0x11E03A)
dh $00B1
seek(0x11E092)
dh (desc_3dworld2)
seek(0x11E076)
dh $00C1
seek(0x11E07A)
dh $00B1
seek(0x11E0D6)
dh (desc_3dworld3)
seek(0x11E0BA)
dh $0093
seek(0x11E0BE)
dh $00BE

seek(0x11E12A)
dh (desc_gallery1)
seek(0x11E112)
dh $00CC
seek(0x11E116)
dh $00AC
seek(0x11E16E)
dh (desc_gallery2)
seek(0x11E152)
dh $00DA
seek(0x11E156)
dh $00B8
seek(0x11E1B2)
dh (desc_gallery3)
seek(0x11E196)
dh $00E8
seek(0x11E19A)
dh $00C4

//Printer Text at 0x239B50 UNUSED?
//64GB GameBoy Printer Text at 0x261240 UNUSED?

//Container (Shift-JIS) 0x2A7FE0 UNUSED?
//Work (Shift-JIS) 0x2A7FEC UNUSED?
//Container (Shift-JIS) 0x2AA920 UNUSED?
