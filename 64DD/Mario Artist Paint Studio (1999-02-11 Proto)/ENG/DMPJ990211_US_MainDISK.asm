//Mario Artist Paint Studio - Japanese to English Translation
//by LuigiBlood

//Thanks to
//- SourceGaming (for some translation help)
//- Zoinkity (GameBoy Camera hack)

arch n64.cpu
endian msb
output "DMPJ990211_EN.ndd", create
origin 0x000000; insert "NUD-TEST-JPN.ndd" // Include Japanese Mario Artist - Paint Studio N64 DD ROM

include "N64_CPUREGS.asm"

//Unique Macros
macro seek(n) {
  origin {n}
}

//Common Macros
include "DMPJ990211_Macros.asm"

//Patch
include "DMPJ990211_Patch.asm"

//Translation
include "DMPJ990211_US_Hack.asm"
include "DMPJ990211_US_2DPaint.asm"
include "DMPJ990211_US_2DPaint_Artworks.asm"
include "DMPJ990211_US_3DMovie.asm"
