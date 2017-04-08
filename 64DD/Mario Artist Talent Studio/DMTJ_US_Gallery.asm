output "Mario Artist - Talent Studio.ndd"

//Gallery
seek(0xFA2380)
base 0x803D57D0
gallery_undo: //803D57D0
putTextnoSeek("Undo")
gallery_1number: //803D57DC
putTextnoSeek("Entry 1")
gallery_entryno0: //803D57E4
putTextnoSeek("Entry No.0")
gallery_entryno10: //803D57F8
putTextnoSeek("Entry No.10")
gallery_0: //803D5810
putTextnoSeek("0")
gallery_00: //803D5814
putTextnoSeek("00")
gallery_slash: //803D581C
putTextnoSeek("/")
gallery_0_2: //803D5820
putTextnoSeek("0")
gallery_00_2: //803D5824
putTextnoSeek("00")
gallery_save2dpaint: //803D582C
putTextnoSeek("Save [2D Paint]")
gallery_movieplaylist: //803D584C
putTextnoSeek("Movie Playlist")
gallery_saveplaylist: //803D5860
putTextnoSeek("Save Playlist")
gallery_exit: //803D5874
putTextnoSeek("Exit")
gallery_loadmovie: //803D587C
putTextnoSeek("Load [Movie]")
gallery_eraser: //803D5894
putTextnoSeek("Eraser")
gallery_watch: //803D58A0
putTextnoSeek("Watch")
gallery_viewtalent: //803D58A8
putTextnoSeek("View Talents")
gallery_watchmovie: //803D58B8
putTextnoSeek("Watch Movies")
gallery_watchmovieinorder: //803D58C8
//putTextnoSeek("Watch Movie In Order")
gallery_watchmovieproper: //803D58EC
//putTextnoSeek("Watch Movie Proper")
gallery_backmainmenu: //803D590C
putTextnoSeek("Back to Main Menu")

seek(0xF651D6)
dh (gallery_1number)
seek(0xF651DE)
dh $000C
seek(0xF651EE)
dh (gallery_1number)

seek(0xF650CE)
dh (gallery_entryno0)
seek(0xF650D6)
dh $0012
seek(0xF650DE)
dh (gallery_entryno0)

seek(0xF650B6)
dh (gallery_entryno10)

seek(0xF7230A)
dh (gallery_0)
seek(0xF7231A)
dh (gallery_0)

seek(0xF7234A)
dh (gallery_00)
seek(0xF7236E)
dh (gallery_00)

seek(0xF723DE)
dh (gallery_slash)

seek(0xF72416)
dh (gallery_0_2)
seek(0xF72426)
dh (gallery_0_2)

seek(0xF7244E)
dh (gallery_00_2)
seek(0xF72472)
dh (gallery_00_2)

seek(0xFA24E0)
dw (gallery_viewtalent)
seek(origin() + 20)
dw (gallery_watchmovie)
seek(origin() + 20)
dw (gallery_backmainmenu)
seek(origin() + 20)
dw (gallery_exit)
seek(origin() + 20)
dw (gallery_save2dpaint)
seek(origin() + 20)
dw (gallery_exit)
seek(origin() + 20)
dw (gallery_watch)
seek(origin() + 20)
dw (gallery_movieplaylist)
seek(origin() + 20)
dw (gallery_loadmovie)
seek(origin() + 20)
dw (gallery_eraser)
seek(origin() + 20)
dw (gallery_saveplaylist)
seek(origin() + 20)
dw (gallery_undo)