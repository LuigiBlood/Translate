output "Mario Artist - Talent Studio.ndd"

//Movie Studio

//Movie Main Screen
seek(0x10BF628)
base 0x80400EF8
moviemainerror_loadsample: //80400EF8
putTextASCIInoSeek("A sample movie is|going to be loaded.|Is it OK?")
moviemainerror_keepmovienotsaved: //80400F2C
//putTextASCIInoSeek("This movie is not saved.||Would you like to keep|this movie in the|Movie Studio?")
moviemainerror_keepmovie: //80400F84
putTextASCIInoSeek("Would you like to keep|this movie in the|Movie Studio?")
moviemainerror_datacorrupted1: //80400FC0
//putTextASCIInoSeek("Save data is corrupted. The data was cleared.")
moviemainerror_datacorrupted2: //80400FF8
putTextASCIInoSeek("Save data is corrupted. The data was cleared.")
moviemainerror_disappear: //80401030
putTextASCIInoSeek("The movie is|going to disappear.|Is it OK?")

seek(0x104F562)
dh (moviemainerror_loadsample)
seek(0x104F58A)
dh $0003
seek(0x104F596)
dh (moviemainerror_keepmovienotsaved)
seek(0x104F5DA)
dh (moviemainerror_keepmovie)
seek(0x104F61E)
dh (moviemainerror_datacorrupted1)
seek(0x104F666)
dh (moviemainerror_datacorrupted2)
seek(0x104F692)
dh (moviemainerror_disappear)

seek(0x10BF9F4)
base 0x804012C4
moviemain_mainmenu:
putTextnoSeek("Back to Main Menu")
moviemain_setupactors:
putTextnoSeek("Actors")
moviemain_setupbg:
putTextnoSeek("Backgrounds")
moviemain_production:
putTextnoSeek("Production")
moviemain_watch:
putTextnoSeek("Watch")
moviemain_saveload:
putTextnoSeek("Save/Load [Movie]")
moviemain_sample1:
putTextnoSeek("Sample 1")
moviemain_sample2:
putTextnoSeek("Sample 2")
moviemain_sample3:
putTextnoSeek("Sample 3")
moviemain_clear:
putTextnoSeek("Clear")

//Pointer changes
seek(0x1052EFE)
dh (moviemain_mainmenu)
seek(0x1053046)
dh (moviemain_setupactors)
seek(0x105313E)
dh (moviemain_setupbg)
seek(0x105322A)
dh (moviemain_production)
seek(0x10532F2)
dh (moviemain_watch)
seek(0x1052F92)
dh (moviemain_saveload)
seek(0x10BFAD0)
dw (moviemain_sample1), (moviemain_sample2), (moviemain_sample3)
seek(0x10534AE)
dh (moviemain_clear)

//Movie Setup BG
seek(0x10BFDE4)
base 0x804016B4
moviebg_exit: //804016B4
putTextnoSeek("Exit")
moviebg_samples: //804016BC
putTextnoSeek("Samples")
moviebg_load2d: //804016D0
putTextnoSeek("Load [2D Paint]")
moviebg_save2d: //804016EC
putTextnoSeek("Save [2D Paint]")
moviebg_bgmselect: //80401708
//putTextnoSeek("Music Select") //UNUSED
moviebg_capturecart: //80401718
putTextnoSeek("Capture Cartridge")
moviebg_gbcamera: //80401730
putTextnoSeek("GameBoy Camera")
moviebg_random: //80401740
putTextnoSeek("Random")
moviebg_undo: //80401754
putTextnoSeek("Undo")
moviebg_erase: //80401760
putTextnoSeek("Erase")

moviebg_bg1: //8040176C
putTextnoSeek("Background 1")
moviebg_sky1: //80401778
//putTextnoSeek("Sky1")
moviebg_sky2: //80401780
putTextnoSeek("Sky")
moviebg_sea1: //80401788
//putTextnoSeek("Sea1")
moviebg_sea2: //80401790
putTextnoSeek("Sea")
moviebg_water1: //80401798
//putTextnoSeek("Water1")
moviebg_water2: //804017A8
putTextnoSeek("Water")
moviebg_desert: //804017B8
putTextnoSeek("Desert")

moviebg_plain: //804017C0
putTextnoSeek("Dawn")
moviebg_moonlight: //804017C8
putTextnoSeek("Night")
moviebg_bamboogrove: //804017D0
putTextnoSeek("Bamboo")
moviebg_snow1: //804017DC
//putTextnoSeek("Snow1")
moviebg_snow2: //804017EC
putTextnoSeek("Snow")
moviebg_forest1: //804017FC
//putTextnoSeek("Forest1")
moviebg_forest2: //80401804
putTextnoSeek("Forest")

moviebg_fall: //8040180C
putTextnoSeek("Fall")
moviebg_cherry: //8040181C
putTextnoSeek("Cherry Blossoms")
moviebg_village1: //80401824
//putTextnoSeek("Town1")
moviebg_village2: //8040182C
//putTextnoSeek("Town2")
moviebg_village3: //80401834
//putTextnoSeek("Town3")
moviebg_village4: //8040183C
putTextnoSeek("Town")
moviebg_road: //80401844
putTextnoSeek("Road")

moviebg_watermill: //8040184C
putTextnoSeek("Mill")
moviebg_castle: //8040185C
putTextnoSeek("Castle")
moviebg_buildings1: //80401864
//putTextnoSeek("City1")
moviebg_buildings2: //8040186C
//putTextnoSeek("City2")
moviebg_buildings3: //80401874
//putTextnoSeek("City3")
moviebg_buildings4: //8040187C
putTextnoSeek("City")
moviebg_wall1: //80401884
//putTextnoSeek("Wall1")

moviebg_wall2: //8040188C
putTextnoSeek("Wall")
moviebg_school: //80401894
putTextnoSeek("School")
moviebg_blackboard: //804018A0
putTextnoSeek("Blackboard")
moviebg_computer: //804018AC
putTextnoSeek("Computer")
moviebg_lockerroom: //804018B8
putTextnoSeek("Locker Room")
moviebg_stairs: //804018C8
putTextnoSeek("Stairs")
moviebg_downtown: //804018D4
putTextnoSeek("Central")

moviebg_apartment1: //804018E4
//putTextnoSeek("Flat1")
moviebg_apartment2: //804018F0
putTextnoSeek("Flat")
moviebg_tatami: //804018FC
putTextnoSeek("Tatami")
moviebg_stage: //80401904
putTextnoSeek("Stage")
moviebg_insidecar: //8040190C
putTextnoSeek("Car Seats")
moviebg_tunnel: //8040191C
putTextnoSeek("Tunnel")
moviebg_ring: //80401928
putTextnoSeek("Ring")

moviebg_earth: //80401930
putTextnoSeek("Earth")
moviebg_moon: //8040193C
putTextnoSeek("Moon")
moviebg_space: //80401948
putTextnoSeek("Space")
moviebg_pipes: //80401954
putTextnoSeek("Pipes")
moviebg_mist: //8040195C
putTextnoSeek("Mist")
moviebg_loveydovey: //80401964
putTextnoSeek("Lovey Dovey")
moviebg_question: //80401970
putTextnoSeek("???")

moviebg_light: //80401978
putTextnoSeek("Light")
moviebg_spot: //80401980
putTextnoSeek("Spot")
moviebg_flames: //8040198C
putTextnoSeek("Fire")
moviebg_timetunnel: //80401998
putTextnoSeek("Wormhole")
moviebg_kaboom: //804019A8
putTextnoSeek("Boom!")
moviebg_jump: //804019B4
putTextnoSeek("Jump!")
moviebg_miracle: //804019C0
putTextnoSeek("Miracle")

//Change pointers
seek(0x10591EE)
dh (moviebg_exit)
seek(0x1059082)
dh (moviebg_samples)
seek(0x1058DF2)
dh (moviebg_load2d)
seek(0x1058F3A)
dh (moviebg_save2d)
seek(0x10592B6)
dh (moviebg_capturecart)
seek(0x10596A2)
dh (moviebg_gbcamera)
seek(0x1059C5E)
dh (moviebg_random)
seek(0x10598EE)
dh (moviebg_undo)
seek(0x105999E)
dh (moviebg_erase)

seek(0x1058CDA)
dh (moviebg_bg1)
seek(0x1058CEA)
dh $0016

seek(0x10C00FC)
dw (moviebg_sky1), (moviebg_sky2), (moviebg_sea1), (moviebg_sea2), (moviebg_water1), (moviebg_water2), (moviebg_desert)
dw (moviebg_plain), (moviebg_moonlight), (moviebg_bamboogrove), (moviebg_snow1), (moviebg_snow2), (moviebg_forest1), (moviebg_forest2)
dw (moviebg_fall), (moviebg_cherry), (moviebg_village1), (moviebg_village2), (moviebg_village3), (moviebg_village4), (moviebg_road)
dw (moviebg_watermill), (moviebg_castle), (moviebg_buildings1), (moviebg_buildings2), (moviebg_buildings3), (moviebg_buildings4), (moviebg_wall1)
dw (moviebg_wall2), (moviebg_school), (moviebg_blackboard), (moviebg_computer), (moviebg_lockerroom), (moviebg_stairs), (moviebg_downtown)
dw (moviebg_apartment1), (moviebg_apartment2), (moviebg_tatami), (moviebg_stage), (moviebg_insidecar), (moviebg_tunnel), (moviebg_ring)
dw (moviebg_earth), (moviebg_moon), (moviebg_space), (moviebg_pipes), (moviebg_mist), (moviebg_loveydovey), (moviebg_question)
dw (moviebg_light), (moviebg_spot), (moviebg_flames), (moviebg_timetunnel), (moviebg_kaboom), (moviebg_jump), (moviebg_miracle)

//Movie Setup BG Filenames
seek(0x10C0530)
base 0x80401E00
moviebg_computer1file:
moviebg_computer2file:
putTextASCIInoSeek("Computer")
moviebg_sky1file:
//putTextASCIInoSeek("Sky1")
moviebg_sky2file:
putTextASCIInoSeek("Sky")
moviebg_sea1file:
//putTextASCIInoSeek("Sea1")
moviebg_sea2file:
putTextASCIInoSeek("Sea")
moviebg_water1file:
//putTextASCIInoSeek("Water1")
moviebg_water2file:
putTextASCIInoSeek("Water")
moviebg_desertfile:
putTextASCIInoSeek("Desert")

moviebg_plainfile:
putTextASCIInoSeek("Dawn")
moviebg_moonlightfile:
putTextASCIInoSeek("Night")
moviebg_bamboogrovefile:
putTextASCIInoSeek("Bamboo")
moviebg_snow1file:
//putTextASCIInoSeek("Snow1")
moviebg_snow2file:
putTextASCIInoSeek("Snow")
moviebg_forest1file:
//putTextASCIInoSeek("Forest1")
moviebg_forest2file:
putTextASCIInoSeek("Forest")

moviebg_fallfile:
putTextASCIInoSeek("Fall")
moviebg_cherryfile:
putTextASCIInoSeek("Cherry Blossoms")
moviebg_village1file:
//putTextASCIInoSeek("Town1")
moviebg_village2file:
//putTextASCIInoSeek("Town2")
moviebg_village3file:
//putTextASCIInoSeek("Town3")
moviebg_village4file:
putTextASCIInoSeek("Town")
moviebg_roadfile:
putTextASCIInoSeek("Road")

moviebg_watermillfile:
putTextASCIInoSeek("Mill")
moviebg_castlefile:
putTextASCIInoSeek("Castle")
moviebg_buildings1file:
//putTextASCIInoSeek("City1")
moviebg_buildings2file:
//putTextASCIInoSeek("City2")
moviebg_buildings3file:
//putTextASCIInoSeek("City3")
moviebg_buildings4file:
putTextASCIInoSeek("City")
moviebg_wall1file:
//putTextASCIInoSeek("Wall1")

moviebg_wall2file:
putTextASCIInoSeek("Wall")
moviebg_schoolfile:
putTextASCIInoSeek("School")
moviebg_blackboardfile:
putTextASCIInoSeek("Blackboard")
moviebg_computerfile:
putTextASCIInoSeek("Computer")
moviebg_lockerroomfile:
putTextASCIInoSeek("Locker Room")
moviebg_stairsfile:
putTextASCIInoSeek("Stairs")
moviebg_downtownfile:
putTextASCIInoSeek("Central")

moviebg_apartment1file:
//putTextASCIInoSeek("Flat1")
moviebg_apartment2file:
putTextASCIInoSeek("Flat")
moviebg_tatamifile:
putTextASCIInoSeek("Tatami")
moviebg_stagefile:
putTextASCIInoSeek("Stage")
moviebg_insidecarfile:
putTextASCIInoSeek("Car Seats")
moviebg_tunnelfile:
putTextASCIInoSeek("Tunnel")
moviebg_ringfile:
putTextASCIInoSeek("Ring")

moviebg_earthfile:
putTextASCIInoSeek("Earth")
moviebg_moonfile:
putTextASCIInoSeek("Moon")
moviebg_spacefile:
putTextASCIInoSeek("Space")
moviebg_pipesfile:
putTextASCIInoSeek("Pipes")
moviebg_mistfile:
putTextASCIInoSeek("Mist")
moviebg_loveydoveyfile:
putTextASCIInoSeek("Lovey Dovey")
moviebg_questionfile:
putTextASCIInoSeek("???")

moviebg_lightfile:
putTextASCIInoSeek("Light")
moviebg_spotfile:
putTextASCIInoSeek("Spot")
moviebg_flamesfile:
putTextASCIInoSeek("Fire")
moviebg_timetunnelfile:
putTextASCIInoSeek("Wormhole")
moviebg_kaboomfile:
putTextASCIInoSeek("Boom!")
moviebg_jumpfile:
putTextASCIInoSeek("Jump!")
moviebg_miraclefile:
putTextASCIInoSeek("Miracle")

//Change pointers
seek(0x10C01DC)
dw (moviebg_computer1file), (moviebg_computer2file)
dw (moviebg_sky1file), (moviebg_sky2file), (moviebg_sea1file), (moviebg_sea2file), (moviebg_water1file), (moviebg_water2file), (moviebg_desertfile)
dw (moviebg_plainfile), (moviebg_moonlightfile), (moviebg_bamboogrovefile), (moviebg_snow1file), (moviebg_snow2file), (moviebg_forest1file), (moviebg_forest2file)
dw (moviebg_fallfile), (moviebg_cherryfile), (moviebg_village1file), (moviebg_village2file), (moviebg_village3file), (moviebg_village4file), (moviebg_roadfile)
dw (moviebg_watermillfile), (moviebg_castlefile), (moviebg_buildings1file), (moviebg_buildings2file), (moviebg_buildings3file), (moviebg_buildings4file), (moviebg_wall1file)
dw (moviebg_wall2file), (moviebg_schoolfile), (moviebg_blackboardfile), (moviebg_computerfile), (moviebg_lockerroomfile), (moviebg_stairsfile), (moviebg_downtownfile)
dw (moviebg_apartment1file), (moviebg_apartment2file), (moviebg_tatamifile), (moviebg_stagefile), (moviebg_insidecarfile), (moviebg_tunnelfile), (moviebg_ringfile)
dw (moviebg_earthfile), (moviebg_moonfile), (moviebg_spacefile), (moviebg_pipesfile), (moviebg_mistfile), (moviebg_loveydoveyfile), (moviebg_questionfile)
dw (moviebg_lightfile), (moviebg_spotfile), (moviebg_flamesfile), (moviebg_timetunnelfile), (moviebg_kaboomfile), (moviebg_jumpfile), (moviebg_miraclefile)

//Placement to be changed
movie_rotationzoomB:
//putTextnoSeek("Rotate / Zoom (Button B)")

//Movie Production (Part 1) 164 chars max
seek(0x10C0C84)
base 0x80402554
prod1_random: //80402554
putTextnoSeek("Random")
prod1_exit: //80402568
putTextnoSeek("Exit")
prod1_undo: //80402570
putTextnoSeek("Undo")
prod1_erasescene: //8040257C
putTextnoSeek("Erase Scene")
prod1_copyscene: //8040258C
putTextnoSeek("Copy Scene")
prod1_pastescene: //8040259C
putTextnoSeek("Paste Scene")
prod1_createscene: //804025B0
putTextnoSeek("Create Scene")
prod1_clearallscenes: //804025CC
putTextnoSeek("Clear All")
prod1_movieediting: //804025E0
putTextnoSeek("Movie Editing")
prod1_options: //804025F8
putTextnoSeek("Options")
prod1_shooting: //8040260C
putTextnoSeek("Shooting")
prod1_direction: //8040261C
putTextnoSeek("Direction")
prod1_shoot00: //80402630
putTextnoSeek("Scene 00")
prod1_playstop: //8040263C
putTextnoSeek("Play/Stop")
prod1_oneallscenes: //80402650
putTextnoSeek("One/All Scene(s)")
prod1_loopnot: //8040266C
putTextnoSeek("Loop")
prod1_watchmovie: //80402680
putTextnoSeek("Watch")

//change pointers
seek(0x10C0DCC)
dw (prod1_createscene)
dw (prod1_erasescene), (prod1_copyscene), (prod1_pastescene), (prod1_clearallscenes)

seek(0x106D1FE)
dh (prod1_random)
seek(0x1062FFA)
dh (prod1_exit)
seek(0x10630FE)
dh (prod1_undo)

seek(0x106A456)
dh (prod1_movieediting)
seek(0x106CB0E)
dh (prod1_options)
seek(0x106A6CE)
dh (prod1_shooting)
seek(0x106AB2A)
dh (prod1_direction)
seek(0x1065AE6)
dh (prod1_shoot00)
seek(0x1065B12)
dh $000C
seek(0x1065B1A)
dh $000E
seek(0x1065B8A)
dh $000C
seek(0x1065BB2)
dh $000E
seek(0x1065B26)
dh (prod1_shoot00)
seek(0x1067032)
dh (prod1_shoot00)
seek(0x1066F86)
dh (prod1_shoot00 + 12)
seek(0x1066F8E)
dh (prod1_shoot00 + 14)
seek(0x1066FFA)
dh (prod1_shoot00 + 12)
seek(0x106702E)
dh (prod1_shoot00 + 14)
seek(0x1069F72)
dh (prod1_playstop)
seek(0x106A122)
dh (prod1_oneallscenes)
seek(0x106A22E)
dh (prod1_loopnot)
seek(0x106A33E)
dh (prod1_watchmovie)

seek(0x10C0F10)
base 0x804027E0
//63 chars
prod1error_fatal1: //804027E0
putTextASCIInoSeek("Fatal error.|Please call Yamashita.")
prod1error_50scenes1: //8040280C
putTextASCIInoSeek("Cannot make|more than 50 scenes.")
prod1error_3secremain: //8040283C
putTextASCIInoSeek("To create a scene,|you need at least|3.0 seconds remaining.")
prod1error_fatal2: //8040287C
//putTextASCIInoSeek("Fatal error.|Please call Yamashita.")
prod1error_50scenes2: //804028A8
//putTextASCIInoSeek("Cannot make|more than 50 scenes.")
prod1error_overtime: //804028D8
putTextASCIInoSeek("Cannot paste as|the movie length will exceed by|10.0 seconds.")
prod1error_clear: //80402920
putTextASCIInoSeek("All the scenes|will disappear,|are you sure?")
prod1error_overtimerandom: //80402954
putTextASCIInoSeek("For a random scene,|you need at least|10.0 seconds remaining.")

seek(0x106AD0A)
dh (prod1error_fatal1)
seek(0x106ADE6)
dh (prod1error_50scenes1)
seek(0x106AE3A)
dh (prod1error_3secremain)
seek(0x106AEBE)
dh (prod1error_fatal1)
seek(0x106B352)
dh (prod1error_50scenes1)
seek(0x106B54E)
dh (prod1error_overtime)
seek(0x106B482)
dh (prod1error_overtime + 48)
seek(0x106B48A)
dh (prod1error_overtime + 48)
seek(0x106B4F6)
dh (prod1error_overtime + 49)
seek(0x106B52E)
dh (prod1error_overtime + 51)
seek(0x106BFBE)
dh (prod1error_clear)
seek(0x106D2C6)
dh (prod1error_overtimerandom)

//Movie Production (Part 2)
seek(0x10C1414)
base 0x80402CE4
prod2_selecttalent: //80402CE4
//putTextnoSeek("Select Actor") //Unused
prod2_selectbg: //80402CF8
//putTextnoSeek("Select Background") //Unused
prod2_repeataction: //80402D0C
putTextnoSeek("Repeat Action")
prod2_item: //80402D24
putTextnoSeek("Item")
prod2_itemscale: //80402D38
putTextnoSeek("Item Scale")

prod2_selectaction: //80402D4C
putTextnoSeek("Select Action")
prod2_selectcamerawork: //80402D60
putTextnoSeek("Select Camera Work")
prod2_makeaction: //80402D78
putTextnoSeek("Make Action")
prod2_makecamerawork1: //80402D8C
//putTextnoSeek("Make Camera Work")
prod2_makecamerawork2: //80402DA4
putTextnoSeek("Make Camera Work")

prod2_bgcolor: //80402DBC
putTextnoSeek("Background Color")
prod2_goback: //80402DD8
putTextnoSeek("Go Back")

prod2_moveaction: //80402DEC
putTextnoSeek("Movement")
prod2_itemaction: //80402E00
putTextnoSeek("Item")
prod2_feelingsaction: //80402E14
putTextnoSeek("Feelings")
prod2_weightaction: //80402E28
putTextnoSeek("Weight")
prod2_rhythmaction: //80402E3C
putTextnoSeek("Rhythm")
prod2_battleaction: //80402E50
putTextnoSeek("Battle")
prod2_actionalbum: //80402E64
putTextnoSeek("Action Album")

prod2_actor1: //80402E7C
putTextnoSeek("Actor 1")
prod2_noactor: //80402E88
putTextnoSeek("No Actor")
prod2_bg1: //80402E98
putTextnoSeek("Background 1")
prod2_nobg: //80402EA4
putTextnoSeek("No Backgrounds")
prod2_times: //80402EB4
putTextnoSeek("1 time(s)")

//change pointers
seek(0x10C15EC)
dw (prod2_moveaction), (prod2_itemaction), (prod2_feelingsaction), (prod2_weightaction)
dw (prod2_rhythmaction), (prod2_battleaction), (prod2_actionalbum)

seek(0x107535E)
dh (prod2_repeataction)
seek(0x1078716)
dh (prod2_item)
seek(0x107A5F6)
dh (prod2_itemscale)

seek(0x1078C0A)
dh (prod2_selectaction)
seek(0x1078F0A)
dh (prod2_selectcamerawork)
seek(0x1079286)
dh (prod2_makeaction)
seek(0x1079292)
dh (prod2_makecamerawork1)
seek(0x107929E)
dh (prod2_makecamerawork2)
seek(0x1079106)
dh (prod2_bgcolor)
seek(0x107C1C6)
dh (prod2_goback)
seek(0x1075CE6)
dh (prod2_actor1)
seek(0x1075CEE)
dh $000C
seek(0x1075CE2)
dh (prod2_noactor)
seek(0x10769C6)
dh (prod2_bg1)
seek(0x10769E2)
dh $0016
seek(0x10769DE)
dh (prod2_nobg)
seek(0x1078332)
dh (prod2_times)

seek(0x10C18B0)
base 0x80403180
prod2error_actordisappear:
putTextASCIInoSeek("The action of the actor|will disappear,|are you sure?")
prod2error_modeldisappear:
putTextASCIInoSeek("The action of the 3D Work|will disappear,|are you sure?")

seek(0x1075D8E)
dh (prod2error_actordisappear)
seek(0x1075D96)
dh (prod2error_modeldisappear)

//Movie Production (Part 3)
seek(0x10C1A34)
base 0x80403304
prod3_actor: //80403304
putTextnoSeek("Actor")
prod3_effect: //80403310
putTextnoSeek("Effect")
prod3_sound: //8040331C
putTextnoSeek("Sound")
prod3_autosound: //80403328
putTextnoSeek("Auto Sound")

prod3_makelighting: //80403338
putTextnoSeek("Make Lighting")
prod3_makegraffiti: //80403348
putTextnoSeek("Make Graffiti")
prod3_makecaption: //80403358
putTextnoSeek("Make Caption")
prod3_recordsound: //8040336C
putTextnoSeek("Record Sound")

prod3_expression_normal: //8040337C
//putTextnoSeek("Normal")
prod3_expression_laugh: //80403394
//putTextnoSeek("Laugh")
prod3_expression_angry: //804033AC
//putTextnoSeek("Angry")
prod3_expression_sad: //804033C4
//putTextnoSeek("Sad")
prod3_expression_smile: //804033DC
//putTextnoSeek("Smile")
prod3_expression_sleep: //804033F4
//putTextnoSeek("Sleep")

prod3_goback: //8040340C
putTextnoSeek("Go Back")
prod3_movementsounds: //80403420
putTextnoSeek("Motion & Sounds")
prod3_animalvoice: //80403434
putTextnoSeek("Animal & Voice")
prod3_instmelody: //80403444
putTextnoSeek("Melody")
prod3_loops: //80403458
putTextnoSeek("Loops")
prod3_environments: //80403468
putTextnoSeek("Environments")
prod3_actorvoice: //8040347C
putTextnoSeek("Actors")
prod3_recorded: //8040348C
putTextnoSeek("Recorded")

seek(0x10C1BD0)
dw (prod3_actor), (prod3_effect), (prod3_autosound), (prod3_sound)
dw (prod3_movementsounds), (prod3_animalvoice), (prod3_instmelody), (prod3_loops)
dw (prod3_environments), (prod3_actorvoice), (prod3_recorded)

seek(0x1087C56)
dh (prod3_goback)
seek(0x1088FF2)
dh (prod3_goback)
seek(0x10894A2)
dh (prod3_goback)

seek(0x10883F2)
dh (prod3_makelighting)
seek(0x10883DA)
dh (prod3_makegraffiti)
seek(0x10883E6)
dh (prod3_makecaption)
seek(0x10883FE)
dh (prod3_recordsound)

putText(0x10C2210, "Exit")
putText(0x10C2230, "Save [2D Paint]")

putTextASCII(0x10C2E20, "Speak into the microphone.")
putTextASCII(0x10C2E40, "...Recording...")
putTextASCII(0x10C2E60, "...Playback...")

putTextASCII(0x10C2F20, "Turn off the power|and insert|the capture cartridge.")
putTextASCII(0x10C2F5C, "The recording|will be erased.|Is it OK?")

//Movie Production Item List
seek(0x10BF208)
base 0x80400AD8

movieitem_none: //80400AD8
putTextnoSeek("None")
movieitem_elecguitar: //80400AE8
putTextnoSeeknoEnd("Electric ")
movieitem_guitar: //80400AE0
putTextnoSeek("Guitar")
movieitem_clarinet: //80400AF8
putTextnoSeek("Clarinet")
movieitem_saxophone: //80400B08
putTextnoSeek("Sax")
movieitem_microphone: //80400B14
putTextnoSeek("Mike")
movieitem_paperfan: //80400B24
putTextnoSeek("Fan")

movieitem_sword: //80400B30
putTextnoSeek("Sword")
movieitem_axe: //80400B38
putTextnoSeek("Axe")
movieitem_spear: //80400B40
putTextnoSeek("Spear")
movieitem_club: //80400B48
putTextnoSeek("Club")
movieitem_ironclaws: //80400B54
putTextnoSeek("Claws")
movieitem_katana: //80400B60
putTextnoSeek("Katana")
movieitem_100tonhammer: //80400B68
putTextnoSeek("100t Hammer")

movieitem_magicstaff: //80400B7C
putTextnoSeek("Staff")
movieitem_magicwand: //80400B8C
putTextnoSeek("Wand")
movieitem_machinegun: //80400BA8
putTextnoSeeknoEnd("Machine ")
movieitem_pistol: //80400B9C
putTextnoSeek("Gun")
movieitem_sfrifle: //80400BCC
putTextnoSeeknoEnd("SF ")
movieitem_rifle: //80400BB4
putTextnoSeek("Rifle")
movieitem_sfgun: //80400BC0
putTextnoSeek("SF Gun")

movieitem_juice: //80400BDC
putTextnoSeek("Juice")
movieitem_fries: //80400BE8
putTextnoSeek("Fries")
movieitem_mushroom: //80400BF8
putTextnoSeek("Shroom")
movieitem_meat: //80400C00
putTextnoSeek("Meat")
movieitem_plushdoll: //80400C10
putTextnoSeek("Doll")
movieitem_bag: //80400C1C
putTextnoSeek("Bag")
movieitem_suitcase: //80400C24
putTextnoSeek("Case")

movieitem_broom: //80400C30
putTextnoSeek("Broom")
movieitem_pickaxe: //80400C38
putTextnoSeek("Pickaxe")
movieitem_umbrella: //80400C44
putTextnoSeek("Parasol")
movieitem_carwheel: //80400C4C
putTextnoSeek("Wheel")
movieitem_fork: //80400C60
putTextnoSeek("Fork")
movieitem_camera: //80400C6C
putTextnoSeek("Camera")
movieitem_gameboy: //80400C74
putTextnoSeek("GameBoy")

seek(0x10BF3B4)
dw (movieitem_none), (movieitem_guitar), (movieitem_elecguitar), (movieitem_clarinet), (movieitem_saxophone), (movieitem_microphone), (movieitem_paperfan)
dw (movieitem_sword), (movieitem_axe), (movieitem_spear), (movieitem_club), (movieitem_ironclaws), (movieitem_katana), (movieitem_100tonhammer)
dw (movieitem_magicstaff), (movieitem_magicwand), (movieitem_pistol), (movieitem_machinegun), (movieitem_rifle), (movieitem_sfgun), (movieitem_sfrifle)
dw (movieitem_juice), (movieitem_fries), (movieitem_mushroom), (movieitem_meat), (movieitem_plushdoll), (movieitem_bag), (movieitem_suitcase)
dw (movieitem_broom), (movieitem_pickaxe), (movieitem_umbrella), (movieitem_carwheel), (movieitem_fork), (movieitem_camera), (movieitem_gameboy)
