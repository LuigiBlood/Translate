//Character Width //RAM 0x800520EC
//XX, YY
//XX = Char width
//YY = Move current char to the left
//List of characters with different width: 0x800508CC
seek(0xC55AC)
db $06, $00 // 。
db $10, $08 // 「
db $08, $00 // 」
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $10, $00
db $05, $00 // Space
db $09, $03 // !
db $0E, $08 // "
db $0D, $00 // #
db $0C, $02 // $
db $0D, $01 // %
db $0C, $01 // &
db $03, $02 // '
db $0E, $09 // (
db $06, $00 // )
db $0C, $02 // *
db $0D, $02 // +
db $04, $00 // ,
db $0D, $02 // -
db $05, $00 // .
db $0E, $00 // /
db $0C, $02 // 0
db $0B, $03 // 1
db $0C, $02 // 2
db $0C, $03 // 3
db $0C, $02 // 4
db $0C, $02 // 5
db $0C, $02 // 6
db $0C, $03 // 7
db $0C, $02 // 8
db $0C, $02 // 9
db $09, $05 // :
db $09, $05 // ;
db $10, $00
db $0D, $01 // =
db $0B, $03 // ~
db $0B, $03
db $0D, $00 // @
db $0D, $01 // A
db $0C, $02 // B
db $0D, $02 // C
db $0D, $02 // D
db $0C, $02 // E
db $0C, $02 // F
db $0C, $01 // G
db $0D, $01 // H
db $0A, $06 // I
db $0B, $02 // J
db $0C, $02 // K
db $0C, $02 // L
db $0E, $01 // M
db $0C, $02 // N
db $0E, $01 // O
db $0D, $03 // P
db $0E, $01 // Q
db $0C, $02 // R
db $0C, $02 // S
db $0D, $02 // T
db $0C, $02 // U
db $0D, $01 // V
db $0E, $00 // W
db $0D, $02 // X
db $0D, $02 // Y
db $0C, $02 // Z
db $10, $00
db $10, $00
db $10, $00
db $0B, $03 // ^
db $10, $00
db $10, $00
db $0C, $02 // a
db $0D, $02 // b
db $0C, $02 // c
db $0C, $02 // d
db $0C, $02 // e
db $0B, $04 // f
db $0C, $02 // g
db $0C, $02 // h
db $0B, $05 // i
db $0B, $04 // j
db $0C, $02 // k
db $0A, $05 // l
db $0E, $01 // m
db $0C, $02 // n
db $0C, $02 // o
db $0C, $02 // p
db $0B, $02 // q
db $0B, $03 // r
db $0B, $03 // s
db $0B, $04 // t
db $0C, $02 // u
db $0C, $02 // v
db $0E, $00 // w
db $0C, $02 // x
db $0C, $02 // y
db $0B, $02 // z
