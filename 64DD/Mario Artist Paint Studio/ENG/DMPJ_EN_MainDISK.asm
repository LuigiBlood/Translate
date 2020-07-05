//Mario Artist Paint Studio - Japanese to English Translation
//by LuigiBlood

//Thanks to
//- SourceGaming (for some translation help)
//- Zoinkity (GameBoy Camera hack)
print "Mario Artist Paint Studio - English translation (Disk) v2.1\n"

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
include "DMPJ_EN_Macros.asm"

//Translation
print "- Assembling 2D Paint...\n"
include "DMPJ_EN_2DPaint.asm"

print "- Assembling 2D Paint Artwork Names...\n"
include "DMPJ_EN_2DPaint_Artworks.asm"

print "- Assembling 3D World...\n"
include "DMPJ_EN_3DWorld.asm"

print "- Assembling Others...\n"
include "DMPJ_EN_Others.asm"

print "- Assembling GameBoy Camera Overlay...\n"
include "DMPJ_EN_Camera.asm"

print "- Assembling GameBoy Printer Overlay...\n"
include "DMPJ_EN_Printer.asm"

print "- Assembling Save/Load Overlay...\n"
include "DMPJ_EN_SaveLoad.asm"


//Graphics
print "- Insert Graphics...\n"
include "DMPJ_EN_Graphics.asm"

//Hacks
print "- Insert Hacks...\n"
include "DMPJ_EN_Hack.asm"

print "- Done!\n"