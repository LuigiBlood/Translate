bass "DMTJ_EN_MainDISK.asm"
@echo - Recompressing Overlays...
py -3 nintendo.py "./Temp/8AD9F0.17453.SaveLoad.yay1.bin" "Yay1"
py -3 nintendo.py "./Temp/914B78.AEEC.Kanji.yay1.bin" "Yay1"
py -3 nintendo.py "./Temp/8E7E48.CCC7.GBCam.yay1.bin" "Yay1"
py -3 nintendo.py "./Temp/12D5180.2BDD6.TitleScreen.yay1.bin" "Yay1"
py -3 nintendo.py "./Temp/21B380.14827.UI.yay1.bin" "Yay1"
py -3 nintendo.py "./Temp/12BF830.1272C.MainMenu.yay1.bin" "Yay1"
py -3 nintendo.py "./Temp/FA99C0.27D14.Gallery.yay1.bin" "Yay1"
py -3 nintendo.py "./Temp/147620.7C9B.UI.yay1.bin" "Yay1"
py -3 nintendo.py "./Temp/97BD00.6EEBB.UIFace.yay1.bin" "Yay1"
bass "DMTJ_EN_PatchDISK.asm"
@pause