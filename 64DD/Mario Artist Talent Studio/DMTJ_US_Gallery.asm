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

seek(0xFA3F80)
base 0x803D73D0
gallerytalent_dots: //803D73D0
dh $8145, $8145, $8145, $0000
gallerytalent_job: //803D73D8
putTextASCIInoSeek("Job/") 
gallerytalent_birthday: //803D73E0
putTextASCIInoSeek("Birthday/")
db $00
gallerytalent_birthdate1: //803D73EC
dh $8277, $8277, $815E, $8277, $8277, $0000
gallerytalent_birthdate2: //803D7400
dh $8277, $8277, $815E, $8277, $8277, $0000
gallerytalent_age: //803D7414
putTextASCIInoSeek("Age/")
db $00
gallerytalent_ageyo1: //803D741C
dh $8277, $8277, $8277
putTextASCIInoSeek(" years old")
gallerytalent_ageyo2: //803D7428
dh $8277, $8277, $8277
putTextASCIInoSeek(" years old")
gallerytalent_favline: //803D7434
putTextASCIInoSeek("Catchphrase/")
gallerytalent_end:

//Change pointers //803D51E0
seek(0xFA1D90)
dw (gallerytalent_dots), (gallerytalent_job), (gallerytalent_birthday)
dw (gallerytalent_birthdate1), (gallerytalent_birthdate2)
dw (gallerytalent_age), (gallerytalent_ageyo1), (gallerytalent_ageyo2)
dw (gallerytalent_favline)

//Fix Birth Date
seek(0xF5A2B2)
dh $000A

//Move GFX font preload
//Job/
seek(0xF5A692)
dh 0x8044 //Original 8042C860
seek(0xF5A696)
dh 0xE900
seek(0xF5A6A2)
dh (0)

seek(0xF7273E)
dh 0x8044 //Original 8042C860
seek(0xF72742)
dh 0xE900
seek(0xF7274E)
dh (0)

//Birthday/
seek(0xF5A76A)
dh 0x8044 //Original 8042C860
seek(0xF5A76E)
dh 0xE900
seek(0xF5A77A)
dh (0x80 * 4)

seek(0xF7279A)
dh 0x8044 //Original 8042C860
seek(0xF7279E)
dh 0xE900
seek(0xF727AA)
dh (0x80 * 4)

//Age/
seek(0xF5A812)
dh 0x8044 //Original 8042C860
seek(0xF5A816)
dh 0xE900
seek(0xF5A822)
dh (0x80 * (4 + 9))

seek(0xF727F2)
dh 0x8044 //Original 8042C860
seek(0xF727F6)
dh 0xE900
seek(0xF72802)
dh (0x80 * (4 + 9))

//000 years old
seek(0xF5A862)
dh 0x8044 //Original 8042C860
seek(0xF5A866)
dh 0xE900
seek(0xF5A872)
dh (0x80 * (4 + 9 + 4))

seek(0xF7281E)
dh 0x8044 //Original 8042C860
seek(0xF72822)
dh 0xE900
seek(0xF7282E)
dh (0x80 * (4 + 9 + 4))

//Catchphrase/
seek(0xF5A8B2)
dh 0x8044 //Original 8042C860
seek(0xF5A8B6)
dh 0xE900
seek(0xF5A8C2)
dh (0x80 * (4 + 9 + 4 + 13))

seek(0xF7284A)
dh 0x8044 //Original 8042C860
seek(0xF7284E)
dh 0xE900
seek(0xF7285A)
dh (0x80 * (4 + 9 + 4 + 13))

//Display List 804350A0 / 0x80 bytes per char in graphics
//Placement ------- String - GFX PTR
//00000054 00000084 80715000 8042CD98 - <Name>
//0000009D 000000CD 803D73D0 8042D818 - ...
//000000E6 00000116 803D73D8 8042D998 - Job/
//00000116 00000136 80715015 8042DB18 - <Job Name>
//0000014F 0000018F 803D73E0 8042E598 - Birthday/
//0000018F 0000021F 803D73EC 8042E798 - <Birthday Data>
//00000238 00000268 803D7414 8042EC18 - Age/
//00000268 000002A8 803D741C 8042ED98 - <000 years old>
//000002C1 00000331 803D7434 8042EF98 - Favorite Line/
//00000331 00000391 80715030 8042F318 - <Fav Line>
//000003AA 0000041A 80715045 8042FD98 - <Free1>
//00000433 000004E3 8071506E 80431218 - <Free2>
//000004FC 000005BC 80715097 80432698 - <Free3>
//000005D5 00000675 807150C0 80433B18 - <Free4>

//Free space at 8043E900 for font data?

//Filenames
putTextASCII(0xFA401C, "Photo of  00")
putTextASCII(0xFA402C, "All 70 Photo")
putTextASCII(0xFA403C, "Unknown")

//Movie Playlist
putTextASCII(0xFA405C, "Some movies|have been removed|from the playlist.")
putTextASCII(0xFA40A4, "All movies|have been removed|from the playlist.")
putTextASCII(0xFA40F0, "President's Greeting")

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
