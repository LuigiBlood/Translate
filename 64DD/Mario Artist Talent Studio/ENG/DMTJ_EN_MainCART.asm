//Mario Artist Talent Studio - Japanese to English Translation
//by LuigiBlood

print "Mario Artist Talent Studio - English translation (Cart) v2.1\n"

arch n64.cpu
endian msb
output "Mario Artist - Talent Studio.n64", create
origin 0x000000; insert "NUD-DMTJ-JPN.n64" // Include Japanese Mario Artist - Talent Studio N64 DD ROM
origin 0x10; dw 0x54C8AD15, 0xE04E8676

include "N64_CPUREGS.asm"

constant seek_diff(0x727D8)

//Unique Macros
macro outputGame() {
  output "Mario Artist - Talent Studio.n64"
  origin 0
  base 0
}

//Common Macros
include "DMTJ_EN_Macros.asm"


print "- Assembling Main Menu & Others...\n"
include "DMTJ_EN_Other.asm"
print "- Assembling Talent Studio...\n"
include "DMTJ_EN_TalentStudio.asm"
print "- Assembling Talent Studio - Shuffle...\n"
include "DMTJ_EN_TalentStudio_Shuffle.asm"
print "- Assembling Movie Studio...\n"
include "DMTJ_EN_MovieStudio.asm"
print "- Assembling Gallery...\n"
include "DMTJ_EN_Gallery.asm"

print "- Assembling Save & Load Overlay...\n"
include "DMTJ_EN_SaveLoad.asm"
print "- Assembling Text Writer Overlay...\n"
include "DMTJ_EN_TextEdit.asm"
print "- Assembling Game Boy Camera Overlay...\n"
include "DMTJ_EN_Camera.asm"

print "- Insert Graphics...\n"
include "DMTJ_EN_Graphics.asm"
print "- Insert Hacks...\n"
include "DMTJ_EN_Hack.asm"
