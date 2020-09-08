//Gallery
//Code Overlay (Disk 0xF53480 / RAM 803868D0)

outputGame()
seek(0xF53480)
base 0x803868D0

//--???
seek(0xFA1DD4)
textEntryH0("This disk is corrupted.")	//このディスクは データが こわれています。
seek(0xFA1E00)
textEntryH0("Please replace the disk.")	//ただしいディスクに いれかえて ください。

seek(0xFA1E44)
textEntryH0("This disk cannot be used.")	//このディスクは ここでは つかうことが
seek(0xFA1E6C)
textEntryH0("")	//できません。


//--Gallery
seek(0xFA2380)
base 0x803D57D0
gallery_undo:
textEntryH0("Undo")			//RAM 803D57D0 - やりなおし
gallery_1number:
textEntryH0("Entry 1")			//RAM 803D57DC - 1ばん
gallery_entryno0:
textEntryH0("Entry No.0")		//RAM 803D57E4 - エントリーNo.0
gallery_entryno10:
textEntryH0("Entry No.10")		//RAM 803D57F8 - エントリーNo.10
gallery_0:
textEntryH0("0")			//RAM 803D5810 - 0
gallery_00:
textEntryH0("00")			//RAM 803D5814 - 00
gallery_slash:
textEntryH0("/")			//RAM 803D581C - /
gallery_0_2:
textEntryH0("0")			//RAM 803D5820 - 0
gallery_00_2:
textEntryH0("00")			//RAM 803D5824 - 00
gallery_save2dpaint:
textEntryH0("Save Picture")		//RAM 803D582C - [2Dさくひん]としてセーブ
gallery_movieplaylist:
textEntryH0("Movie Playlist")		//RAM 803D584C - ムービーのとうろく
gallery_saveplaylist:
textEntryH0("Save Playlist")		//RAM 803D5860 - けってい(セーブ)
gallery_exit:
textEntryH0("Exit")			//RAM 803D5874 - でる
gallery_loadmovie:
textEntryH0("Load Movie")		//RAM 803D587C - [ムービー]のロード
gallery_eraser:
textEntryH0("Erase")			//RAM 803D5894 - とりけし
gallery_watch:
textEntryH0("Watch")			//RAM 803D58A0 - みる
gallery_viewtalent:
textEntryH0("View Talents")		//RAM 803D58A8 - タレントをみる
gallery_watchmovie:
textEntryH0("Watch Movies")		//RAM 803D58B8 - ムービーをみる
gallery_watchmovieinorder:
//textEntryH0("Watch Movie In Order")	//RAM 803D58C8 - アニメーションをじゅんばんにみる
gallery_watchmovieproper:
//textEntryH0("Watch Movie Proper")	//RAM 803D58EC - アニメーションをてきとうにみる
gallery_backmainmenu:
textEntryH0("Back to Main Menu")	//RAM 803D590C - セレクトがめんにもどる

//Repoint
seek(0xF651D6)
dh (gallery_1number)
seek(0xF651DC)
sb t2,0xC/2(t4)
seek(0xF651EE)
dh (gallery_1number)

seek(0xF650CE)
dh (gallery_entryno0)
seek(0xF650D4)
sb t4,0x12/2(t5)
seek(0xF650DE)
dh (gallery_entryno0)

seek(0xF650B6)
dh (gallery_entryno10)

seek(0xF7230A)
dh (gallery_0)
seek(0xF72310)
sb t0,0(t1)
seek(0xF7231A)
dh (gallery_0)

seek(0xF7234A)
dh (gallery_00)
seek(0xF7234C)
sb t6,0(t7)
seek(0xF7236E)
dh (gallery_00)
seek(0xF72370)
sb t0,1(t1)

seek(0xF723DE)
dh (gallery_slash)

seek(0xF72416)
dh (gallery_0_2)
seek(0xF7241C)
sb t4,0(t5)
seek(0xF72426)
dh (gallery_0_2)

seek(0xF7244E)
dh (gallery_00_2)
seek(0xF72450)
sb t9,0(t0)
seek(0xF72472)
dh (gallery_00_2)
seek(0xF72474)
sb t3,1(t4)

seek(0xFA24E0)
dw (gallery_viewtalent)
skip(20)
dw (gallery_watchmovie)
skip(20)
dw (gallery_backmainmenu)
skip(20)
dw (gallery_exit)
skip(20)
dw (gallery_save2dpaint)
skip(20)
dw (gallery_exit)
skip(20)
dw (gallery_watch)
skip(20)
dw (gallery_movieplaylist)
skip(20)
dw (gallery_loadmovie)
skip(20)
dw (gallery_eraser)
skip(20)
dw (gallery_saveplaylist)
skip(20)
dw (gallery_undo)



//Talent Showoff
seek(0xFA3F80)
base 0x803D73D0
gallerytalent_dots:
dh $8145, $8145, $8145, $0000			//RAM 803D73D0 - ・・・
gallerytalent_job:
textEntryASCII0("Job/")				//RAM 803D73D8 - 仕事／
gallerytalent_birthday:
textEntryASCII0("Birthday/")			//RAM 803D73E0 - 誕生日／
db $00
gallerytalent_birthdate1:
dh $8277, $8277, $815E, $8277, $8277, $0000	//RAM 803D73EC - ＸＸ月ＸＸ日生まれ
gallerytalent_birthdate2:
dh $8277, $8277, $815E, $8277, $8277, $0000	//RAM 803D7400 - ＸＸ月ＸＸ日生まれ
gallerytalent_age:
textEntryASCII0("Age/")				//RAM 803D7414 - 年齢／
db $00
gallerytalent_ageyo1:
dh $8277, $8277, $8277				//RAM 803D741C - ＸＸＸ才
textEntryASCII0(" years old")
gallerytalent_ageyo2:
dh $8277, $8277, $8277				//RAM 803D7428 - ＸＸＸ才
textEntryASCII0(" years old")
gallerytalent_favline:
textEntryASCII0("Catchphrase/")			//RAM 803D7434 - 好きなセリフ／
gallerytalent_end:

//Change pointers //803D51E0
seek(0xFA1D90)
dw (gallerytalent_dots), (gallerytalent_job), (gallerytalent_birthday)
dw (gallerytalent_birthdate1), (gallerytalent_birthdate2)
dw (gallerytalent_age), (gallerytalent_ageyo1), (gallerytalent_ageyo2)
dw (gallerytalent_favline)

//Fix Birth Date ASM
seek(0xF5A2B0)
addiu a2,0,0xA

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
putTextASCII(0xFA401C, "Photo of  00")		//記念写真　00人
putTextASCII(0xFA402C, "Photo of all 70")	//70人全員集合
putTextASCII(0xFA403C, "Unknown")		//不明

//Movie Playlist
//登録された内容が変わりました。|一部のムービーを|登録からはずしました。
putTextASCII(0xFA405C, "Some movies have been|removed from the playlist.")
//登録された内容が変わりました。|すべてのムービーを|登録からはずしました。
putTextASCII(0xFA40A4, "All movies have been|removed from the playlist.")
//社長からのごあいさつ
putTextASCII(0xFA40F0, "President's Greeting")
