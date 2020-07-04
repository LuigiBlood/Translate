//Mario Artist Talent Studio - Japanese to English Translation
//by LuigiBlood

print "Mario Artist Talent Studio - English translation (Disk) v2.0\n"

arch n64.cpu
endian msb
output "Mario Artist - Talent Studio.ndd", create
origin 0x000000; insert "NUD-DMTJ-JPN.ndd" // Include Japanese Mario Artist - Talent Studio N64 DD ROM

include "N64_CPUREGS.asm"

//Unique Macros
macro seek(n) {
  origin {n}
}

macro seekFile(n) {
  origin {n}
}

macro outputGame() {
  output "Mario Artist - Talent Studio.ndd"
}

//Common Macros
include "DMTJ_EN_Macros.asm"


print "- Assembling Main Menu & Others...\n"
include "DMTJ_EN_Other.asm"

print "- Insert Graphics...\n"
include "DMTJ_EN_Graphics.asm"
print "- Insert Hacks...\n"
include "DMTJ_EN_Hack.asm"
