//Mario Artist Polygon Studio - Japanese to English Translation
//by LuigiBlood

//LuigiBlood - Project Leader, Translation, Hacking, Graphic Design
//Cauterize - Logo Design
//krom - Initial Translation Work
//
//Special Thanks:
//Popcorn, Matti Virkkunen, and SilverShroud for translation help/proof-read
//Covarr - For design help

arch n64.cpu
endian msb
output "Mario Artist - Polygon Studio.ndd", create
origin 0x000000; insert "NUD-DMGJ-JPN.ndd" // Include Japanese Mario Artist - Polygon Studio N64 DD ROM

include "N64_CPUREGS.asm"

//macros
macro seek(n) {
  origin {n}
}

include "DMGJ_US_Macros.asm"

//Translation
include "DMGJ_US_ASM.asm"
include "DMGJ_US_Graphics.asm"
include "DMGJ_US_Editor.asm"
include "DMGJ_US_Options.asm"
include "DMGJ_US_Gallery.asm"
include "DMGJ_US_OpenWorld.asm"
include "DMGJ_US_Other.asm"
include "DMGJ_US_Minigames.asm"
include "DMGJ_US_SaveLoad.asm"
