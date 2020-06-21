//Mario Artist Paint Studio - Japanese to English Translation
//by LuigiBlood

//Thanks to
//- SourceGaming (for some translation help)
//- Zoinkity (GameBoy Camera hack)

arch n64.cpu
endian msb
output "DMPJ990211_fix.ndd", create
origin 0x000000; insert "NUD-TEST-JPN.ndd" // Include Japanese Mario Artist - Paint Studio N64 DD ROM

include "N64_CPUREGS.asm"

//macros
macro seek(n) {
  origin {n}
}

//Patch
include "DMPJ990211_Patch.asm"
