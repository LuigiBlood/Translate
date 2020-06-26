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
include "DMPJ_EN_Macros.asm"

//Translation
include "DMPJ_EN_2DPaint.asm"
include "DMPJ_EN_2DPaint_Artworks.asm"
include "DMPJ_EN_3DWorld.asm"

//Graphics
include "DMPJ_EN_Graphics.asm"

//Hacks
include "DMPJ_EN_Hack.asm"
