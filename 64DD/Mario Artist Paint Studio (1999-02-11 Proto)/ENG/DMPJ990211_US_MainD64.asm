//Mario Artist Paint Studio - Japanese to English Translation
//by LuigiBlood

//Thanks to
//- SourceGaming (for some translation help)
//- Zoinkity (GameBoy Camera hack)

arch n64.cpu
endian msb
output "DMPJ990211_EN.d64", create
origin 0x000000;
insert "DMPJ990211.hdr"	//Header
insert "NUD-TEST-JPN.ndd",0x738C0,0x212E308	//ROM
insert "NUD-TEST-JPN.ndd",0x21CA140,0x5420E0	//RAM

include "N64_CPUREGS.asm"

//Unique Macros
macro seek(n) {
  origin {n}-0x738C0+0x200
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
