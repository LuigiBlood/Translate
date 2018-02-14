//Title Screen YAY1 patches---------------------------------
output "12D5180.2BDD6.TitleScreen.yay1.bin"

//MARIO ARTIST
seekFile(0x1010)
insert "GFX/MARIOARTIST_HALFSIZE.ia8.bin"

//TALENT STUDIO
seekFile(0x25C8)
insert "GFX/TALENTSTUDIO.ia8.bin"
