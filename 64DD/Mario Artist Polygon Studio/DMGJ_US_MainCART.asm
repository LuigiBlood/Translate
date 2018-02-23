//Mario Artist Polygon Studio - Japanese to English Translation
//by LuigiBlood

//Thanks to:
//Cauterize for the Logo
//krom for Initial Translation work
//Popcorn for Translation Help
//Lumpio- for Translation Help

arch n64.cpu
endian msb
output "Mario Artist - Polygon Studio.n64", create
origin 0x000000; insert "NUD-DMGJ-JPN.n64" // Include Japanese Mario Artist - Polygon Studio N64 DD ROM

origin 0x10; dw 0xD0437964, 0xB6FDC192 //New checksum

include "N64_CPUREGS.asm"

//macros
macro seek(n) {
  origin {n} - 0x727D8
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
