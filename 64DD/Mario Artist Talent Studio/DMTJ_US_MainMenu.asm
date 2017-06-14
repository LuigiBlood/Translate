outputGame()

//Main Menu
putText(0x012BC110, "Talent Studio")
putText(0x012BC138, "Movie Studio")
putText(0x012BC160, "Gallery")
putText(0x012BC188, "Options")

//Options
seek(0x012BC9A8)
base 0x803122C8
option_mono:
putTextnoSeek("Mono")
option_stereo:
putTextnoSeek("Stereo")
option_headphones:
putTextnoSeek("Headphones")
option_slow:
putTextnoSeek("Slow")
option_medium:
putTextnoSeek("Medium")
option_fast:
putTextnoSeek("Fast")
option_sameA:
putTextnoSeek("Same as Button A")
option_slowCursor:
putTextnoSeek("Slow Cursor")
option_save:
putTextnoSeek("Save")

//Change pointers
seek(0x012B9E8E)
dh (option_mono)
seek(0x012B9EB2)
dh (option_stereo)
seek(0x012B9ED6)
dh (option_headphones)
seek(0x012B9EFA)
dh (option_slow)
seek(0x012B9F1E)
dh (option_medium)
seek(0x012B9F42)
dh (option_fast)
seek(0x012B9F66)
dh (option_sameA)
seek(0x012B9F8A)
dh (option_slowCursor)
seek(0x012B9FAE)
dh (option_save)
