//-----Main Menu & Save Select VRAM-----

db $FD, $90, $FD, $91, $FD, $92, $FD, $93
db $FD, $94, $FD, $95, $FD, $96, $FD, $97
db $FD, $98, $FD, $99, $FD, $9A
db $FD, $A0, $FD, $A1, $FD, $A2, $FD, $A3
db $FD, $A4, $FD, $A5, $FD, $A6, $FD, $A7
db $FD, $A8, $FD, $A9, $FD, $AA, $FD, $AB
db $FD, $AC, $FD, $AD
//Item
//db $50, $51, $62, $70
//Action
//db $57, $5B, $9E, $9F
//Check
//db $FC, $8E, $3F, $2A
//Button.
//db $90, $5F, $9F, $20, $F0
//Whistle Button
//db $6D, $51, $9B, $5C, $7A, $90, $5F, $9F, $F0
db $F0, $F0, $F0, $F0, $F0

//Unknown
db $33, $28, $04, $33, $2A, $09, $3B, $3C, $39, $35, $1F, $20, $21, $7E

//New Game
db $5D, $5E, $5F, $5C

//"No" (already in english)
db $0D, $36

//"Yes" (already in english)
db $18, $2C, $3A

db $15, $0B, $12, $01, $3A, $0C, $40, $4E, $2C, $00, $3D, $12, $13, $00, $11, $F4
db $03, $19, $49, $2A, $FD, $21, $FD, $2B, $46, $7F, $80, $FD, $13, $2B, $4A
db $5B, $F0, $1F, $20, $21, $22, $23, $43
db $F0, $70, $71, $50, $51, $52, $0B, $11

//Must be empty - For Team names and save counts
db $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0
db $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0
db $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0

//Chapter Names
db $FD, $C8, $FD, $C9, $FD, $CA, $FD, $CB, $FD, $CC, $FD, $CD, $FD, $CE, $FD, $CF
//db $60, $61, $62, $63, $64, $65, $66, $F0
db $FD, $D0, $FD, $D1, $FD, $D2, $FD, $D3, $FD, $D4, $FD, $D5, $FD, $D6, $FD, $D7
//db $67, $68, $69, $6A, $6B, $6C, $6D, $F0
db $FD, $D8, $FD, $D9, $FD, $DA, $FD, $DB, $FD, $DC, $FD, $DD, $FD, $DE, $FD, $DF
//db $6E, $6F, $70, $71, $72, $73, $F0, $F0
db $FD, $E0, $FD, $E1, $FD, $E2, $FD, $E3, $FD, $E4, $FD, $E5, $FD, $E6, $FD, $E7
//db $74, $75, $76, $77, $78, $79, $F0, $F0
db $FD, $E8, $FD, $E9, $FD, $EA, $FD, $EB, $FD, $EC, $FD, $ED, $FD, $EE, $FD, $EF
//db $7A, $7B, $7C, $7D, $F0, $F0, $F0, $F0

//Other
db $64, $65, $66,  $67, $68, $69, $6A, $6B
db $8B, $8C, $8D, $8E, $8F, $90, $91, $92
db $93, $94, $95, $96, $97,  $6D, $6E,  $6F
db $53, $54, $55, $56, $98, $99, $9A, $9B

//Reached Limit of chars

db $FB	//End
//-----Alphabet-----
//Page 1
db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0A, $0B, $0C, $0D, $0E, $0F
db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $F0, $1B, $1C, $1D, $1E, $1F
db $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2A, $2B, $2C, $2D, $2E, $2F
db $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3A, $3B, $3C, $3D, $3E, $3F
db $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4A, $4B, $4C, $4D, $4E, $4F
db $FB
//Page 2
db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0A, $0B, $0C, $0D, $0E, $0F
db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $F0, $1B, $1C, $1D, $1E, $1F
db $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2A, $2B, $2C, $2D, $2E, $2F
db $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3A, $3B, $3C, $3D, $3E, $3F
db $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4A, $4B, $4C, $4D, $4E, $4F
db $FB
//Page 3
db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0A, $0B, $0C, $0D, $0E, $0F
db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $F0, $1B, $1C, $1D, $1E, $1F
db $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2A, $2B, $2C, $2D, $2E, $2F
db $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3A, $3B, $3C, $3D, $3E, $3F
db $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4A, $4B, $4C, $4D, $4E, $4F
db $FB

//-----Chapters VRAM-----
//Ch.
db $5B, $43
//12345 
db $1F, $20, $21, $22, $23
//
db $F0

//Names
db $FD, $C8, $FD, $C9, $FD, $CA, $FD, $CB, $FD, $CC, $FD, $CD, $FD, $CE, $FD, $CF
//db $60, $61, $62, $63, $64, $65, $66, $F0
db $FD, $D0, $FD, $D1, $FD, $D2, $FD, $D3, $FD, $D4, $FD, $D5, $FD, $D6, $FD, $D7
//db $67, $68, $69, $6A, $6B, $6C, $6D, $F0
db $FD, $D8, $FD, $D9, $FD, $DA, $FD, $DB, $FD, $DC, $FD, $DD, $FD, $DE, $FD, $DF
//db $6E, $6F, $70, $71, $72, $73, $F0, $F0
db $FD, $E0, $FD, $E1, $FD, $E2, $FD, $E3, $FD, $E4, $FD, $E5, $FD, $E6, $FD, $E7
//db $74, $75, $76, $77, $78, $79, $F0, $F0
db $FD, $E8, $FD, $E9, $FD, $EA, $FD, $EB, $FD, $EC, $FD, $ED, $FD, $EE, $FD, $EF
//db $7A, $7B, $7C, $7D, $F0, $F0, $F0, $F0

//???????
db $F0, $F0, $F0, $F0

db $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0
db $F0, $F0, $F0, $F0, $F0, $F0, $F0

db $FB
//-----Start from Game Over VRAM-----
//--Chapter 1 (Select)
//Ch. 1
db $43, $89, $8A, $1F
//t
db $F0, $F0, $F0, $F0
//Name
db $FD, $C8, $FD, $C9, $FD, $CA, $FD, $CB, $FD, $CC, $FD, $CD, $FD, $CE, $FD, $CF
//db $60, $61, $62, $63, $64, $65, $66, $F0
//From Tent
db $FD, $B0, $FD, $B1, $FD, $B2, $FD, $B3, $FD, $B4, $FD, $B5, $FD, $B6, $FD, $B7
db $FD, $B8, $FD, $B9, $FD, $BA
db $F0, $F0, $F0, $F0, $F0
//db $05, $39, $36, $34, $F0, $13, $2C, $35, $3B, $F0, $F0, $F0, $F0, $F0, $F0, $F0
//From Ship
db $FD, $B0, $FD, $B1, $FD, $B2, $FD, $B3, $FD, $B4, $FD, $B5, $FD, $B6, $FD, $B7
db $FD, $BB, $FD, $BC, $FD, $BD
db $F0, $F0, $F0, $F0, $F0
//db $05, $39, $36, $34, $F0, $12, $2F, $30, $37, $F0, $F0, $F0, $F0, $F0, $F0, $F0
//Save&Qui
db $FD, $C0, $FD, $C1, $FD, $C2, $FD, $C3, $FD, $C4, $FD, $C5, $FD, $C6, $FD, $C7
db $F0, $F0, $F0, $F0, $F0, $F0, $F0
//db $12, $28, $3D, $2C, $42, $10, $3C, $30, $F0, $F0, $F0, $F0, $F0, $F0, $F0
db $FB

//-Chapter 2 (Select)
//Ch. 2
db $43, $93, $94, $20
//t
db $3B, $F0, $F0, $F0
//Name
db $67, $68, $69, $6A, $6B, $6C, $6D, $F0
//From Ship
db $05, $39, $36, $34, $F0, $12, $2F, $30, $37, $F0, $F0, $F0, $F0, $F0, $F0, $F0
//From Mansion
db $05, $39, $36, $34, $F0, $0C, $28, $35, $3A, $30, $36, $35, $F0, $F0, $F0, $F0
//Save&Qui
db $12, $28, $3D, $2C, $42, $10, $3C, $30, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0
db $FB

//-Chapter 3 (Select)
db $43, $93, $94, $21
db $3B, $F0, $F0, $F0
db $6E, $6F, $70, $71, $72, $73, $F0, $F0
db $05, $39, $36, $34, $F0, $12, $2F, $30, $37, $F0, $F0, $F0, $F0, $F0, $F0, $F0
db $05, $39, $36, $34, $F0, $12, $3B, $28, $29, $33, $2C, $F0, $F0, $F0, $F0, $F0
db $12, $28, $3D, $2C, $42, $10, $3C, $30, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0
db $FB

//-Chapter 4 (Select)
db $43, $93, $94, $22
db $3B, $F0, $F0, $F0
db $74, $75, $76, $77, $78, $79, $F0, $F0
db $05, $39, $36, $34, $F0, $12, $2F, $30, $37, $F0, $F0, $F0, $F0, $F0, $F0, $F0
db $05, $39, $36, $34, $F0, $08, $35, $35, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0
db $12, $28, $3D, $2C, $42, $10, $3C, $30, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0
db $FB

//-Chapter 5 (Select)
db $43, $93, $94, $23
db $3B, $F0, $F0, $F0
db $7A, $7B, $7C, $7D, $F0, $F0, $F0, $F0
db $05, $39, $36, $34, $F0, $12, $2F, $30, $37, $F0, $F0, $F0, $F0, $F0, $F0, $F0
db $05, $39, $36, $34, $F0, $12, $2F, $30, $37, $F0, $F0, $F0, $F0, $F0, $F0, $F0
db $12, $28, $3D, $2C, $42, $10, $3C, $30, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0
db $FB

//-...Swooned... Try Again!
db $FD, $F0, $FD, $F1, $FD, $F2, $FD, $F3, $FD, $F4, $FD, $F5, $FD, $F6, $FD, $F7, $F0, $F0
//db $48, $12, $3E, $36, $36, $35, $2C, $2B, $48, $F0
db $FC, $00, $FC, $01, $FC, $02, $FC, $03, $FC, $04, $FC, $05, $FC, $06, $FC, $07, $FC, $08, $FC, $09
db $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0
//db $13, $39, $40, $F0, $00, $2E, $28, $30, $35, $47, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0
db $FB

//--Chapter 1 (Game Over)
//Ch. 1
db $43, $89, $8A, $1F
//t
db $F0,  $F0, $F0, $F0
//Name
db $FD, $C8, $FD, $C9, $FD, $CA, $FD, $CB, $FD, $CC, $FD, $CD, $FD, $CE, $FD, $CF
//db $60, $61, $62, $63, $64, $65, $66, $F0
//From Tent
db $FD, $B0, $FD, $B1, $FD, $B2, $FD, $B3, $FD, $B4, $FD, $B5, $FD, $B6, $FD, $B7
db $FD, $B8, $FD, $B9, $FD, $BA
db $F0, $F0, $F0, $F0, $F0
//db $05, $39, $36, $34, $F0, $13, $2C, $35, $3B, $F0, $F0, $F0, $F0, $F0, $F0, $F0
//From Ship
db $FD, $B0, $FD, $B1, $FD, $B2, $FD, $B3, $FD, $B4, $FD, $B5, $FD, $B6, $FD, $B7
db $FD, $BB, $FD, $BC, $FD, $BD
db $F0, $F0, $F0, $F0, $F0
//db $05, $39, $36, $34, $F0, $12, $2F, $30, $37, $F0, $F0, $F0, $F0, $F0, $F0, $F0
//Save&Qui
db $FD, $C0, $FD, $C1, $FD, $C2, $FD, $C3, $FD, $C4, $FD, $C5, $FD, $C6, $FD, $C7
db $F0, $F0, $F0, $F0, $F0, $F0, $F0
//db $12, $28, $3D, $2C, $42, $10, $3C, $30, $F0, $F0, $F0, $F0, $F0, $F0, $F0
db $F0, $F0, $F0, $F0
db $FB

//--Chapter 2 (Game Over)
db $43, $93, $94, $20
db $3B, $F0, $F0, $F0
db $67, $68, $69, $6A, $6B, $6C, $6D, $F0
db $05, $39, $36, $34, $F0, $12, $2F, $30, $37, $F0, $F0, $F0, $F0, $F0, $F0, $F0
db $05, $39, $36, $34, $F0, $0C, $28, $35, $3A, $30, $36, $35, $F0, $F0, $F0, $F0
db $12, $28, $3D, $2C, $42, $10, $3C, $30, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0
db $FB

//--Chapter 3 (Game Over)
db $43, $93, $94, $21
db $3B, $F0, $F0, $F0
db $6E, $6F, $70, $71, $72, $73, $F0, $F0
db $05, $39, $36, $34, $F0, $12, $2F, $30, $37, $F0, $F0, $F0, $F0, $F0, $F0, $F0
db $05, $39, $36, $34, $F0, $12, $3B, $28, $29, $33, $2C, $F0, $F0, $F0, $F0, $F0
db $12, $28, $3D, $2C, $42, $10, $3C, $30, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0
db $FB

//--Chapter 4 (Game Over)
db $43, $93, $94, $22
db $3B, $F0, $F0, $F0
db $74, $75, $76, $77, $78, $79, $F0, $F0
db $05, $39, $36, $34, $F0, $12, $2F, $30, $37, $F0, $F0, $F0, $F0, $F0, $F0, $F0
db $05, $39, $36, $34, $F0, $08, $35, $35, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0
db $12, $28, $3D, $2C, $42, $10, $3C, $30, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0
db $FB

//--Chapter 5 (Game Over)
db $43, $93, $94, $23
db $3B, $F0, $F0, $F0
db $7A, $7B, $7C, $7D, $F0, $F0, $F0, $F0
db $05, $39, $36, $34, $F0, $0F, $39, $2C, $3D, $4A, $F0, $03, $36, $36, $39, $F0
db $05, $39, $36, $34, $F0, $0B, $28, $3A, $3B, $F0, $03, $36, $36, $39, $F0, $F0
db $12, $28, $3D, $2C, $42, $10, $3C, $30, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0
db $FB