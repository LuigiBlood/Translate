//Build Marvelous ~Another Treasure Island~ English
arch snes.cpu

include "./asm/macros.asm"

output "Marvelous_FR_LB.sfc", create
seekFile(0)
fill $400000,$FF	//Extend to 4MB
seekFile(0)
insert "./roms/Marvelous_JP.sfc"

include "./asm/insert_fr.asm"
include "./asm/code.asm"
include "./asm/pointers.asm"
include "./asm/vwf.asm"