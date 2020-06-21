// General Hacks

// Remove Page
seek(0x1896C0)
sb 0,3(v0) //dw 0xA0400003
