//Mario Artist Talent Studio - Japanese to English Translation
//by LuigiBlood
//!!Use after doing English patches for overlays and recompressing them!!

print "- Insert Compressed Overlays...\n"

arch n64.cpu
endian msb
output "Mario Artist - Talent Studio.n64"

include "N64_CPUREGS.asm"

//Unique Macros
macro seek(n) {
  origin {n} - 0x727D8
}

seek(0x147620)
insert "./Temp/147620.7C9B.UI.yay1.bin.yay"
seek(0x21B380)
insert "./Temp/21B380.14827.UI.yay1.bin.yay"
seek(0x8AD9F0)
insert "./Temp/8AD9F0.17453.SaveLoad.yay1.bin.yay"
seek(0x8E7E48)
insert "./Temp/8E7E48.CCC7.GBCam.yay1.bin.yay"
seek(0x914B78)
insert "./Temp/914B78.AEEC.Kanji.yay1.bin.yay"
seek(0x97BD00)
insert "./Temp/97BD00.6EEBB.UIFace.yay1.bin.yay"
seek(0xFA99C0)
insert "./Temp/FA99C0.27D14.Gallery.yay1.bin.yay"
seek(0x12D5180)
insert "./Temp/12D5180.2BDD6.TitleScreen.yay1.bin.yay"
seek(0x12BF830)
insert "./Temp/12BF830.1272C.MainMenu.yay1.bin.yay"
