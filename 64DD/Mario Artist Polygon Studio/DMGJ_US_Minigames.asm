//Mario Artist Polygon Studio
//Minigames

//Menu
//BOOM BEAT
seek(0x966260)
dw 0x8050F3D8
dw minigame_b, minigame_o, minigame_o, minigame_m
dw 0x8050EDE0, 0x8050F0F8
dw minigame_b, minigame_e, minigame_a, minigame_t
dw 0x8050F3D8

//Go Go Pack
//Credits
seek(0x99BFF8)
base 0x804EAB50
gogopack_credits1:
  putTextASCIInoSeek("Director/Healthy Matsuoka")
gogopack_credits2:
  putTextASCIInoSeek("Programming/Happy Nishiyama (Lead)")
gogopack_credits3:
  putTextASCIInoSeek("          Smiley Ida (Sound)")
gogopack_credits4:
  putTextASCIInoSeek("          Fancy Kawamoto (Junior)")
gogopack_credits5:
  putTextASCIInoSeek("2D Graphics/Lovely Onishi")
gogopack_credits6:
  putTextASCIInoSeek("3D Graphics/Lee Fujii")
gogopack_credits7:
  putTextASCIInoSeek("Music/Puppy Totaka")
gogopack_credits8:
  putTextASCIInoSeek("Producer/Referee Sawano")
gogopack_credits9:
gogopack_credits10:
  putTextASCIInoSeek(" ")

seek(0x99B9F8)
dw gogopack_credits1, gogopack_credits2, gogopack_credits3, gogopack_credits4, gogopack_credits5
dw gogopack_credits6, gogopack_credits7, gogopack_credits8, gogopack_credits9, gogopack_credits10

//Rendering at 0x80538C08 (0x80 bytes per char)
//Render Text at 80580000 instead
seek(0x99349C)
lui t1, 0x8058 //RAM 804E1FF4

//Absolutely not sane as the checks are not changed but it works.
seek(0x99353E)
dh 0x1100 //0x80 * 34 character limitation

//Sound Bomber
putTextASCII(0x9FECF8, "SHOOT")
putTextASCII(0x9FED18, "BLOCK")
putTextASCII(0x9FED38, "FLIES")
putTextASCII(0x9FED58, "JUMP")
putTextASCII(0x9FED78, "RACE")
putTextASCII(0x9FED98, "ROULETTE")
putTextASCII(0x9FEDB8, "MAZE")
putTextASCII(0x9FEDD8, "BASEBALL")

putTextASCII(0x9FEEF8, "SHOOT")
putTextASCII(0x9FEF18, "BLOCK")
putTextASCII(0x9FEF38, "FLIES")
putTextASCII(0x9FEF58, "JUMP")
putTextASCII(0x9FEF78, "RACE")
putTextASCII(0x9FEF98, "ROULETTE")
putTextASCII(0x9FEFB8, "MAZE")
putTextASCII(0x9FEFD8, "BASEBALL")

putTextASCII(0x9FF010, "Ready?")
putTextASCII(0x9FF050, "Ready?")

putTextASCII(0x9FF088, "NICE!")
putTextASCII(0x9FF0C8, "CLEAR!")

putTextASCII(0x9FF128, "EXTRA LIFE")

putTextASCII(0x9FF148, "TRY NEXT MUSIC")
putTextASCII(0x9FF188, "TRY NEXT MUSIC")

putTextASCII(0x9FF1B8, "GAME OVER")
putTextASCII(0x9FF1F8, "GAME OVER")
