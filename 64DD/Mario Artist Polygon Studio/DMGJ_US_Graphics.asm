//Mario Artist Polygon Studio
//Graphic Replacement

//Title Screen
//Mario Artist GFX at 0x285BE0 (IA8) 216x12
seek(0x285BE0)
insert "GFX/MARIOARTIST_HALFSIZE.ia8.bin"

//Polygon Studio GFX at 0x286608 - 7440 bytes (IA8) 248x30
seek(0x286608)
insert "GFX/POLYGONSTUDIO.ia8.bin"

//Gallery?
//0x731D70

//Save & Load
//Back Circle Arrow
seek(0x221520)
insert "GFX/BACKCIRCLE.rgba16.bin"

//Yes / No buttons
seek(0x2207A0)
insert "GFX/YES_NO.rgba16.bin"

//Save/Load
seek(0x20A5C0)
insert "GFX/SAVELOAD.i8.bin"

seek(0x233B20) //Load Color
insert "GFX/LOADSELECT.ci8.bin"

seek(0x234360) //Save Color
insert "GFX/SAVESELECT.ci8.bin"