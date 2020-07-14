//Mario Artist Talent Studio
//Graphic Replacement

//-----------------------
//Main UI YAY1 patches---------------------------------
output "./Temp/147620.7C9B.UI.yay1.bin"

//0x7680 - Button No (IA8 40x40)
seekFile(0x7680)
insert "GFX/BUTTON_NO.ia8.bin"

//0x7CC8 - Button OK (IA8 40x40)
seekFile(0x7CC8)
insert "GFX/BUTTON_OK.ia8.bin"

//0x8310 - Button Back (IA8 40x40)
seekFile(0x8310)
insert "GFX/BUTTON_BACK.ia8.bin"

//0x8958 - Button Save (IA8 40x40)
seekFile(0x8958)
insert "GFX/BUTTON_SAVE.ia8.bin"

//0x8FA0 - Button Yes (IA8 40x40)
seekFile(0x8FA0)
insert "GFX/BUTTON_YES.ia8.bin"

//0x12608 - Font (I4)
seekFile(0x12608)
insert "GFX/FONT_MODIFIED.i4.bin"

//-----------------------
//Title Screen YAY1 patches---------------------------------
output "./Temp/12D5180.2BDD6.TitleScreen.yay1.bin"

//MARIO ARTIST
seekFile(0x1010)
insert "GFX/MARIOARTIST_HALFSIZE.ia8.bin"

//TALENT STUDIO
seekFile(0x25C8)
insert "GFX/TALENTSTUDIO.ia8.bin"

//-----------------------
//Main Menu YAY1 patches---------------------------------
output "./Temp/12BF830.1272C.MainMenu.yay1.bin"
//Mode Select (I8) - 0x30A28 (160x32)
seekFile(0x30A28)
insert "GFX/MENUT_MODESELECT.i8.bin"

//Cursor Speed (IA8) - 0x4170 (136x24) BUGGY
seekFile(0x4170)
insert "GFX/OPTIONT_CURSORSPEED.ia8.bin"

//Sound (IA8) - 0x4E38 (80x24)
seekFile(0x4E38)
insert "GFX/OPTIONT_SOUND.ia8.bin"

//Z Button (IA8) - 0x55C0 (80x24)
seekFile(0x55C0)
insert "GFX/OPTIONT_ZBUTTON.ia8.bin"

//-----------------------
//Save & Load Kanji YAY1 patches---------------------------------
output "./Temp/914B78.AEEC.Kanji.yay1.bin"

//0x10070 - Back (RGBA16 24x72)
seekFile(0x10070)
insert "GFX/SAVELOAD_KANJIBACK.rgba16.bin"

//-----------------------
//Save & Load YAY1 patches---------------------------------
output "./Temp/8AD9F0.17453.SaveLoad.yay1.bin"

//0x25CE0 - Back (CI8 24x72)
seekFile(0x25CE0)
insert "GFX/SAVELOAD_KANJIBACK.ci8.bin"

seekFile(0x26F0)
insert "GFX/SAVELOAD.i8.bin"

seekFile(0x2D5D0) //Load Color
insert "GFX/LOADSELECT.ci8.bin"

seekFile(0x2DE10) //Save Color
insert "GFX/SAVESELECT.ci8.bin"

seekFile(0x1AFD0) //Back Circle Arrow
insert "GFX/BACKCIRCLE.rgba16.bin"

//Yes / No buttons
seekFile(0x1A250)
insert "GFX/YES_NO.rgba16.bin"

//-----------------------
//UI Talent Studio YAY1 patches---------------------------------
output "./Temp/21B380.14827.UI.yay1.bin"
//YAY1 - Shuffle Logo 21B380.14827.UI.yay1.bin (UI Talent Studio)
//RAM 804547A8 - 0x7908 - Palette
seekFile(0x7908)
insert "GFX/SHUFFLE.ci4.pal.bin"
//RAM 804547C8 - 0x7928 - CI4 Pic (24x16)
seekFile(0x7928)
insert "GFX/SHUFFLE.ci4.bin"

output "./Temp/97BD00.6EEBB.UIFace.yay1.bin"
//RAM 80673808 - 0x1A0488 - Skin Color Icon (IA8 24x24)
seekFile(0x1A0488)
insert "GFX/SKINCOLORICON.ia8.bin"


//-----------------------
//Gallery YAY1 patches---------------------------------
output "./Temp/FA99C0.27D14.Gallery.yay1.bin"

//RAM 8068FD08 - 0x2B678 - Amount (replace to empty) (I8 16x16)
seekFile(0x2B678)
fill 256, 0

//RAM 8068FE10 - 0x2B780 - Talent (I8 40x16)
seekFile(0x2B780)
insert "GFX/GALLERY_TALENTS.i8.bin"

//RAM 80665480 - 0xDF0 - Please add a movie entry to the playlist. (I8 184x16)
seekFile(0xDF0)
insert "GFX/GALLERY_MOVIEPLAYLIST.i8.bin"

//-----------------------
//GameBoy Camera YAY1 patches---------------------------------
output "./Temp/8E7E48.CCC7.GBCam.yay1.bin"

seekFile(0x16A0)
insert "GFX/GBCAMERA_LOGO.rgba16.bin"

seekFile(0x15AC0)
insert "GFX/GBCAMERA_SHOOT.rgba16.bin"

seekFile(0x16550)
insert "GFX/GBCAMERA_BACK.rgba16.bin"

seekFile(0x175E0)
insert "GFX/GBCAMERA_PREVNEXT.rgba16.bin"

//-----------------------
//Game Disk patches---------------------------------
outputGame()

//Disk - Talent Genders
//0x92E748 - Gender (IA8 32x130)
seek(0x92E748)
insert "GFX/TALENT_GENDER.ia8.bin"

//Disk - Capture Pak
//0x858750 - Exit I4 24x13
seek(0x858750)
insert "GFX/CAPTURE_EXIT.i4.bin"
//0x8587F8 - Take Picture I4 76x13
seek(0x8587F8)
insert "GFX/CAPTURE_SHOOT.i4.bin"
//0x85CEC0 - Bright I4 28x9
seek(0x85CEC0)
insert "GFX/CAPTURE_BRIGHT.i4.bin"
//0x85CF48 - Contrast I4 40x9
seek(0x85CF48)
insert "GFX/CAPTURE_CONTRAST.i4.bin"
//0x85D008 - Hue I4 28x9
seek(0x85D008)
insert "GFX/CAPTURE_HUE.i4.bin"

//Talent Studio patches---------------------------------
//Image Process (After GBCam/Capture)
//Segment Pointer Table RAM 801F3BF8
//DL 0x212218 - RAM 803C09E8 - Pattern
//DL 0x212380 - RAM 803C0B50 - Face
//RAM 804D5158 (0C001DD8) - 0x85A520 - Please enclose within (I4 96x10)
//RAM 804D5340 (0C001FC0) - 0x85A708 - Face
//RAM 804D53E8 (0C002068) - 0x85A7B0 - Pattern
//RAM 804D5490 (0C002110) - 0x85A858 - Box

//Completely change the GFX data
seek(0x85A520)
base 0x0C001DD8
//I4 96x9 "Please frame the"
T_FRAME_SENTENCE1:
insert "GFX/FRAME_SENTENCE1.i4.bin"
//I4 32x9 "face."
T_FRAME_FACE:
insert "GFX/FRAME_FACE.i4.bin"
//I4 48x10 "pattern."
T_FRAME_PATTERN:
insert "GFX/FRAME_PATTERN.i4.bin"

//Change Display Lists
//Pattern
seek(0x212218)
dw 0xE4354358, 0x0016C330
dw 0xE1000000, 0x00000000
dw 0xF1000000, 0x04000400

dw 0xE4394358, 0x00354330
dw 0xE1000000, 0x01E00000
dw 0xF1000000, 0xFC000400

dw 0xE435436C, 0x0016C358
dw 0xE1000000, 0x00000080
dw 0xF1000000, 0x0400FC00

dw 0xE439436C, 0x00354358
dw 0xE1000000, 0x01E00080
dw 0xF1000000, 0xFC00FC00

dw 0xE7000000, 0x00000000
dw 0xFCFF97FF, 0xFF2DFEFF

dw 0xFD900000, (T_FRAME_SENTENCE1)
dw 0xF5900000, 0x07080200
dw 0xE6000000, 0x00000000
dw 0xF3000000, 0x070EF156
dw 0xE7000000, 0x00000000
dw 0xF5800C00, 0x00080200
dw 0xF2000000, 0x0017C020
dw 0xE42DC360, 0x0018833C
dw 0xE1000000, 0x00000000
dw 0xF1000000, 0x04000400

dw 0xFD900000, (T_FRAME_PATTERN)
dw 0xF5900000, 0x07080200
dw 0xE6000000, 0x00000000
dw 0xF3000000, 0x0709F200
dw 0xE7000000, 0x00000000
dw 0xF5800800, 0x00080200
dw 0xF2000000, 0x000FC024
dw 0xE4378368, 0x002DC340
dw 0xE1000000, 0x00000000
dw 0xF1000000, 0x04000400

dw 0xDF000000, 0x00000000

//Face
seek(0x212380)
dw 0xE4338358, 0x0018C330
dw 0xE1000000, 0x00000000
dw 0xF1000000, 0x04000400

dw 0xE4378358, 0x00338330
dw 0xE1000000, 0x01E00000
dw 0xF1000000, 0xFC000400

dw 0xE433836C, 0x0018C358
dw 0xE1000000, 0x00000080
dw 0xF1000000, 0x0400FC00

dw 0xE437836C, 0x00338358
dw 0xE1000000, 0x01E00080
dw 0xF1000000, 0xFC00FC00

dw 0xE7000000, 0x00000000
dw 0xFCFF97FF, 0xFF2DFEFF

dw 0xFD900000, (T_FRAME_SENTENCE1)
dw 0xF5900000, 0x07080200
dw 0xE6000000, 0x00000000
dw 0xF3000000, 0x070EF156
dw 0xE7000000, 0x00000000
dw 0xF5800C00, 0x00080200
dw 0xF2000000, 0x0017C020
dw 0xE42FC360, 0x001A833C
dw 0xE1000000, 0x00000000
dw 0xF1000000, 0x04000400

dw 0xFD900000, (T_FRAME_FACE)
dw 0xF5900000, 0x07080200
dw 0xE6000000, 0x00000000
dw 0xF3000000, 0x0704F400
dw 0xE7000000, 0x00000000
dw 0xF5800400, 0x00080200
dw 0xF2000000, 0x0007C020
dw 0xE435C360, 0x002FC33C
dw 0xE1000000, 0x00000000
dw 0xF1000000, 0x04000400

dw 0xDF000000, 0x00000000

//Movie Studio patches---------------------------------
//Disk - Main Screen
//0x129E308 - Seconds (IA8) (16x12)
seek(0x129E308)
insert "GFX/MOVIE_SECONDSICON.ia8.bin"

//0x129ECB8 - Scenes (IA8) (16x12)
seek(0x129ECB8)
insert "GFX/MOVIE_SCENESICON.ia8.bin"

//Disk - Select Actor
//0x120E680 - "TALENT" (replace to ACTOR)
seek(0x120E680)
insert "GFX/ACTOR.i4.bin"

//Disk - Shuffle Logo (UI Movie Studio)
//0x1290210 - Palette
seek(0x1290210)
insert "GFX/SHUFFLE.ci4.pal.bin"
//0x1290088 - CI4 Pic (24x16)
seek(0x1290088)
insert "GFX/SHUFFLE.ci4.bin"

//Disk - Movie Editing Studio
//0x119ABA0 - Total, Whole kanjis (could be Total)
seek(0x119ABA0)
insert "GFX/SCENEEDIT_TOTAL.i4.bin"

//0x119AC28 - Scenes
seek(0x119AC28)
insert "GFX/SCENEEDIT_SCENES.i4.bin"

//0x119ADE8 - Seconds
seek(0x119ADE8)
insert "GFX/SCENEEDIT_SECONDS.i4.bin"

//0x119AFF0 - Scene Duration
seek(0x119AFF0)
insert "GFX/SCENEEDIT_SCENEDURATION.i4.bin"

//0x11C1368 - Please record a sound.
seek(0x11C1368)
insert "GFX/SCENEEDIT_RECORD.i4.bin"

//Default Scene Options
//0x11C2E18 - Auto Sound
seek(0x11C2E18)
insert "GFX/SCENEEDIT_OPTION_AUTOSOUND.ci4.bin"
seek(0x11C2F88)
insert "GFX/SCENEEDIT_OPTION_AUTOSOUND.ci4.pal.bin"

//0x11C3420 - Actors
seek(0x11C3420)
insert "GFX/SCENEEDIT_OPTION_ACTORS.ci4.bin"
seek(0x11C3518)
insert "GFX/SCENEEDIT_OPTION_ACTORS.ci4.pal.bin"

//0x11C3B48 - Options Title
seek(0x11C3B48)
insert "GFX/SCENEEDIT_OPTION_DEFAULT.i4.bin"

//0x11C3CB8 - Action Sound
seek(0x11C3CB8)
insert "GFX/SCENEEDIT_OPTION_ACTIONSOUND.ci4.bin"
seek(0x11C3E90)
insert "GFX/SCENEEDIT_OPTION_ACTIONSOUND.ci4.pal.bin"

//0x1197C88 - Make Camera
seek(0x1197C88)
insert "GFX/SCENEEDIT_EDITCAMERA.i4.bin"

//0x1197EB0 - Make Lighting
seek(0x1197EB0)
insert "GFX/SCENEEDIT_EDITLIGHTING.i4.bin"

//0x11980D8 - Make Action
seek(0x11980D8)
insert "GFX/SCENEEDIT_EDITACTION.i4.bin"

//0x1198300 - Make Graffiti
seek(0x1198300)
insert "GFX/SCENEEDIT_EDITGRAFFITI.i4.bin"

//0x1198528 - Record Sound
seek(0x1198528)
insert "GFX/SCENEEDIT_EDITSOUND.i4.bin"

//0x1198750 - Make Caption
seek(0x1198750)
insert "GFX/SCENEEDIT_EDITCAPTION.i4.bin"

//0x102B918 - Seconds (Action Editor)
seek(0x102B918)
insert "GFX/SCENEEDIT_SECONDSACTION.ia8.bin"

//Piano Notes in Sound Effect Selection
seek(0x11B69D0)
insert "GFX/PIANO_LA.i4.bin"

seek(0x11B6AC8)
insert "GFX/PIANO_SI.i4.bin"

seek(0x11B6BC0)
insert "GFX/PIANO_DO.i4.bin"

seek(0x11B6CB8)
insert "GFX/PIANO_RE.i4.bin"

seek(0x11B6DB0)
insert "GFX/PIANO_MI.i4.bin"

seek(0x11B6EA8)
insert "GFX/PIANO_FA.i4.bin"

seek(0x11B6FA0)
insert "GFX/PIANO_SOL.i4.bin"

//Image Process (After GBCam/Capture)
//Segment Pointer Table RAM 801F3BF8
seek(0x12A4818) //RAM 8041C5E8 (04014798)
base 0x04014798
//I4 96x9 "Please frame the"
M_FRAME_SENTENCE1:
insert "GFX/FRAME_SENTENCE1.i4.bin"
//I4 64x10 "background."
M_FRAME_BG:
insert "GFX/FRAME_BACKGROUND.i4.bin"

//Display List Edit
seek(0x12A4F70) //RAM 8041CD40
dw 0xE3000A01, 0x00100000
dw 0xFCFF9BFF, 0xFF0FFE3F
dw 0xE200001C, 0x0C184240
dw 0xFA000000, 0x00000099

dw 0xFD900000, 0x04014770
dw 0xF5900000, 0x07080200
dw 0xE6000000, 0x00000000
dw 0xF3000000, 0x07013800
dw 0xE7000000, 0x00000000
dw 0xF5800200, 0x00080200
dw 0xF2000000, 0x0003C010

dw 0xE4384358, 0x0013C330
dw 0xE1000000, 0x00000000
dw 0xF1000000, 0x04000400
dw 0xE438436C, 0x0013C358
dw 0xE1000000, 0x00000080
dw 0xF1000000, 0x0400FC00
dw 0xE43C4358, 0x00384330
dw 0xE1000000, 0x01E00000
dw 0xF1000000, 0xFC000400
dw 0xE43C436C, 0x00384358
dw 0xE1000000, 0x01E00080
dw 0xF1000000, 0xFC00FC00

//dw 0xFD900000, 0x040147A0
dw 0xFD900000, M_FRAME_BG
dw 0xF5900000, 0x07080200
dw 0xE6000000, 0x00000000
dw 0xF3000000, 0x0709F200
dw 0xE7000000, 0x00000000
dw 0xF5800800, 0x00080200
dw 0xF2000000, 0x000FC024
dw 0xE3000A01, 0x00000000
dw 0xFCFF9BFF, 0xFF377FBF
dw 0xE200001C, 0x00504240
dw 0xE43A8368, 0x002AC340
dw 0xE1000000, 0x00000000
dw 0xF1000000, 0x04000400

//dw 0xFD900000, 0x04014848
dw 0xFD900000, M_FRAME_SENTENCE1
dw 0xF5900000, 0x07080200
dw 0xE6000000, 0x00000000
dw 0xF3000000, 0x070EF156
dw 0xE7000000, 0x00000000
dw 0xF5800C00, 0x00080200
dw 0xF2000000, 0x0017C024
dw 0xE42AC360, 0x0015633C
dw 0xE1000000, 0x00000000
dw 0xF1000000, 0x04000400

//dw 0xFD900000, 0x04014A30
//dw 0xF5900000, 0x07080200
//dw 0xE6000000, 0x00000000
//dw 0xF3000000, 0x070772AB
//dw 0xE7000000, 0x00000000
//dw 0xF5800600, 0x00080200
//dw 0xF2000000, 0x000BC024
//dw 0xE4278364, 0x001B833C
//dw 0xE1000000, 0x00000000
//dw 0xF1000000, 0x04000400

dw 0xDF000000, 0x00000000

//Fonts
seek(0x199B278); insert "GFX/FONT_MODIFIED.i4.bin"
seek(0x19EED38); insert "GFX/FONT_MODIFIED.i4.bin"
seek(0x1A4A778); insert "GFX/FONT_MODIFIED.i4.bin"
seek(0x1AC1FF8); insert "GFX/FONT_MODIFIED.i4.bin"
