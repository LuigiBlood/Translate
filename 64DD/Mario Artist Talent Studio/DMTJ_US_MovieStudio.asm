outputGame()

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

putTextASCII(0x10C08D8, "Movie Picture")
putTextASCII(0x10C0A10, "Movie")

//Movie Setup Actor
seek(0xF485D4)
base 0x80357DC4
movieactorerror_corrupted: //80357DC4
putTextnoSeek("Data is corrupted.")
movieactorerror_replace: //80357DF0
putTextnoSeek("Please replace the disk.")

seek(0xF48668)
base 0x80357E58
movieactor_rotatezoomB: //80357E58
putTextnoSeek("Rotate/Zoom (Button B)")
movieactor_actor1: //80357E78
putTextnoSeek("Actor 1")
movieactor_remove: //80357E90
putTextnoSeek("Erase")
movieactor_pagefeed11: //80357E9C
putTextnoSeek("1/1")
movieactor_exit: //80357EB0
putTextnoSeek("Exit")
movieactor_selectcast: //80357EB8
putTextnoSeek("Samples")
movieactor_loadtalent: //80357ED4
putTextnoSeek("Load [Talent]")
movieactor_loadmodel: //80357EEC
putTextnoSeek("Load [3D Work]")
movieactor_savetalent: //80357F08
putTextnoSeek("Save [Talent]")
movieactor_selectfromtalentstudio: //80357F20
putTextnoSeek("From the Studio")
movieactor_random: //80357F44
putTextnoSeek("Random")
movieactor_talent1: //80357F58
putTextnoSeek("Talent 1")
movieactor_talent11: //80357F64
putTextnoSeek("Talent 11")
movieactor_work1: //80357F74
putTextnoSeek("3D Work 1")

//803581B0 $0008
putTextASCII(0xF489C0, "The action in which Actor 1|appears will be deleted.|Is it OK?")
//803581FC $0008
putTextASCII(0xF48A0C, "The action in which Actor 1|appears will be deleted.|Is it OK?")
//putTextASCII(0xF48A0C, "The action & effects in which| Actor 1 appears will be deleted.|Is it OK?")
//80358254 $002E
putTextASCII(0xF48A64, "The action in which Actor 1|appears will be deleted.|Is it OK?")
//putTextASCII(0xF48A64, "If you swap the actor with a Talent,|the action & effects in which|Actor 1 appears will be deleted.||Is it OK?")
//803582C4 $002E
putTextASCII(0xF48AD4, "The action in which Actor 1|appears will be deleted.|Is it OK?")
//putTextASCII(0xF48AD4, "If you swap the actor with 3D Work,|the action & effects in which| Actor 1 appears will be deleted.||Is it OK?")
//80358340
putTextASCII(0xF48B50, " 1 2 3")

//change pointers
seek(0xF487A0)
dw (movieactor_exit)
seekFile(origin() + 20)
dw (movieactor_loadtalent)
seekFile(origin() + 20)
dw (movieactor_loadmodel)
seekFile(origin() + 20)
dw (movieactor_savetalent)
seekFile(origin() + 20)
dw (movieactor_selectcast)
seekFile(origin() + 20)
dw (movieactor_selectfromtalentstudio)
seekFile(origin() + 20)
dw (movieactor_random)
seekFile(origin() + 20)
dw (movieactor_actor1)
seekFile(origin() + 20)
dw (movieactor_actor1)
seekFile(origin() + 20)
dw (movieactor_actor1)
seek(0xF488A8)
dw (movieactor_remove)
seekFile(origin() + 20)
dw (movieactor_pagefeed11)

seek(0xF0A2EA)
dh (movieactorerror_corrupted)
seek(0xF0A302)
dh (movieactorerror_replace)

seek(0xF0E0BA)
dh (movieactor_actor1)
seek(0xF0E0C2)
dh $000C
seek(0xF0E0CA)
dh (movieactor_actor1)

seek(0xF0DE02)
dh (movieactor_pagefeed11)
seek(0xF0DE0A)
dh $0000
seek(0xF0DE12)
dh (movieactor_pagefeed11)
seek(0xF0DE1A)
dh $0004

seek(0xF0DF2A)
dh (movieactor_talent1)
seek(0xF0DF32)
dh $000E
seek(0xF0DF3A)
dh (movieactor_talent1)

seek(0xF0DF56)
dh (movieactor_talent1)
seek(0xF0DF5E)
dh $000E
seek(0xF0DF66)
dh (movieactor_talent1)

seek(0xF0DF92)
dh (movieactor_talent1)
seek(0xF0DF9A)
dh $000E
seek(0xF0DFA2)
dh (movieactor_talent1)

seek(0xF0DFBA)
dh (movieactor_talent11)
seek(0xF0DFC2)
dh $0010
seek(0xF0DFCA)
dh (movieactor_talent11)

seek(0xF0DFE6)
dh (movieactor_work1)
seek(0xF0DFEE)
dh $0010
seek(0xF0DFF6)
dh (movieactor_work1)

//ASCII text offset to Actor digit
seek(0xF0CCF2)
dh $0019
seek(0xF0CD0E)
dh $0019
seek(0xF0CD2A)
dh $0019
seek(0xF0CD46)
dh $0019

//Movie Setup 3D model names
putTextASCII(0xF48210, "Car")
putTextASCII(0xF48218, "Airplane")
putTextASCII(0xF48224, "Fighter")
putTextASCII(0xF48230, "UFO")
putTextASCII(0xF48238, "Future Car")
putTextASCII(0xF48248, "Unknown")

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
//movie_rotationzoomB:
//putTextnoSeek("Rotate/Zoom (Button B)") //80402364
seek(0x1060E06)
dh (movieactor_rotatezoomB / 0x10000)
seek(0x1060E0E)
dh (movieactor_rotatezoomB)


//Movie Production (Part 1) 164 chars max
putText(0x10BF130, "") //Remove Page

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

//Movie Direct - Record Menu
putText(0x11C1A08 + 32*0, "Save & Exit")
putText(0x11C1A08 + 32*1, "Record Mode")
putText(0x11C1A08 + 32*2, "Sound Album")
putText(0x11C1A08 + 32*3, "Undo")
putText(0x11C1A08 + 32*4, "Microphone")
putText(0x11C1A08 + 32*5, "Line")
putText(0x11C1A08 + 32*6, "Record")
putText(0x11C1A08 + 32*7, "Stop Recording")

putText(0x11C1A08 + 32*8, "Play/Stop")
putText(0x11C1A08 + 32*9, "*Stop")
putText(0x11C1A08 + 32*10, "Loop")
putText(0x11C1A08 + 32*11, "*Do Not Loop")
putText(0x11C1A08 + 32*12, "Grab Recording")
putText(0x11C1A08 + 32*13, "Replace")
putText(0x11C1A08 + 32*14, "Use this Record")

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

//Movie Production Camera Work List
putText(0xF505CC, "Original")
putText(0xF505F4, "Close-Up")
putText(0xF5061C, "Bust Shot")
putText(0xF50644, "Medium Shot")
putText(0xF5066C, "Full Shot")
putText(0xF50694, "Long Shot")
putText(0xF506BC, "Extreme Long Shot")

putText(0xF506E4, "Side Shot")
putText(0xF5070C, "Back Shot")
putText(0xF50734, "High Angle")
putText(0xF5075C, "Low Angle")
putText(0xF50784, "To the Left")
putText(0xF507AC, "To the Right")
putText(0xF507D4, "Behind Feet")

putText(0xF507FC, "High Angle Rotation")
putText(0xF50824, "Low Angle Rotation")
putText(0xF5084C, "From Left to Right")
putText(0xF50874, "From Right to Left")
putText(0xF5089C, "Above Down to Up")
putText(0xF508C4, "Above Left to Right")
putText(0xF508EC, "From Bottom to Top")

putText(0xF50914, "Zoom In Front")
putText(0xF5093C, "Zoom Out Front")
putText(0xF50964, "Body Rotation")
putText(0xF5098C, "Body Rotation Zoom")
putText(0xF509B4, "Above Rotation Zoom")
putText(0xF509DC, "Below Rotation Zoom")
putText(0xF50A04, "High to Low Angle")

putText(0xF50A2C, "Tilt Rotation Zoom")
putText(0xF50A54, "Tilted Zoom In")
putText(0xF50A7C, "Spin Zoom Out")
putText(0xF50AA4, "Wham")
putText(0xF50ACC, "Shake")
putText(0xF50AF4, "Going In")
putText(0xF50B1C, "Going Out")

//Movie Production Animation List
seek(0xF46510)
base 0x80355D00
motion_boywalk: //80355D00
putText3noSeek($011B, " Walk")
motion_girlwalk: //80355D14
putText3noSeek($011C, " Walk")
motion_slowwalk: //80355D28
putTextnoSeek("Quiet")
motion_angrywalk: //80355D38
putTextnoSeek("Angry")
motion_dizzywalk: //80355D48
putTextnoSeek("Dizzy")
motion_tigercrawl: //80355D58
putTextnoSeeknoEnd("Tiger ")
motion_crawl: //80355D64
putTextnoSeek("Crawl")
motion_boyrun: //80355D74
putText3noSeek($011B, " Running")
motion_girlrun: //80355D88
putText3noSeek($011C, " Running")
motion_bendrun: //80355D9C
putTextnoSeek("Bend Running")
motion_rushrun: //80355DAC
putTextnoSeek("In a Rush")
motion_jogging: //80355DBC
putTextnoSeek("Jogging")
motion_tiredwalk: //80355DC8
putTextnoSeek("Tired")
motion_skip: //80355DD8
putTextnoSeek("Skip")
weight_boystanding: //80355DE4
putText3noSeeknoEnd($011B, " ")
object_still: //80356494
putTextnoSeek("Standing")
weight_girlstanding: //80355DF8
putText3noSeek($011C, " Standing")
weight_lookaround: //80355E0C
putTextnoSeek("Look Around")
weight_battlestance: //80355E1C
putTextnoSeek("Battle Stance")
weight_sitting: //80355E28
putTextnoSeek("Sitting")
weight_sitcrossleg: //80355E30
putTextnoSeek("Cross-legged")
weight_dozing: //80355E38
putTextnoSeek("Dozing Off")
weight_boyjump: //80355E44
putText3noSeek($011B, " Jump")
weight_girljump: //80355E58
putText3noSeek($011C, " Jump")
battle_fallonback: //80355E6C
putTextnoSeek("Fall back")
battle_fallonfront: //80355E7C
putTextnoSeek("Fall front")
feel_unfair: //80355E8C
putTextnoSeek("Unfair!")
battle_faint: //80355E9C
putTextnoSeek("Faint")
battle_stepback: //80355EA8
putTextnoSeek("Step Back")
feel_yup: //80355EBC
putTextnoSeek("Yup!")
feel_donotwant: //80355EC8
putTextnoSeek("I don't want!")
feel_isthatso: //80355ED8
putTextnoSeek("Is that so?")
weight_bow: //80355EEC
putTextnoSeek("Bow")
feel_clap: //80355EFC
putTextnoSeek("Claps")
weight_wave: //80355F10
putTextnoSeek("Wave")
feel_dontknow: //80355F1C
putTextnoSeek("I don't know!")
weight_yawn: //80355F30
putTextnoSeek("Yawning")
weight_sneezing: //80355F40
putTextnoSeek("Sneezing")
battle_collapse: //80355F50
putTextnoSeek("Collapse")
battle_hittop: //80355F5C
putTextnoSeek("Above Hit")
battle_hitfront: //80355F6C
putTextnoSeek("Front Hit")
motion_climb: //80355F7C
putTextnoSeek("Climb")
feel_falling: //80355F88
putTextnoSeek("Falling")
feel_oh: //80355F98
putTextnoSeek("Oh!")
feel_woah: //80355FA4
putTextnoSeek("Woah!")
feel_happy: //80355FB8
putTextnoSeek("Happy!")
feel_hurray: //80355FC8
putTextnoSeek("Hurray!")
feel_yes: //80355FD8
putTextnoSeek("Yes!")
feel_hahaha: //80355FEC
putTextnoSeek("Hahaha!")
feel_ahem: //80356000
putTextnoSeek("Ahem!")
feel_vexed: //80356010
putTextnoSeek("I'm mad!")
feel_nervous: //80356024
putTextnoSeek("Nervous")
feel_crying: //80356034
putTextnoSeek("Crying")
feel_wiping: //80356040
putTextnoSeek("Wiping")
feel_stop: //80356050
putTextnoSeek("Stop!")
feel_sorry: //80356060
putTextnoSeek("Sorry!")
feel_cold: //8035606C
putTextnoSeek("I'm freezing!")
rhythm_shake: //8035607C
putTextnoSeek("Shake")
rhythm_funky: //8035608C
putTextnoSeek("Funky")
rhythm_aerobic: //803560A0
putTextnoSeek("Aerobic")
rhythm_hula: //803560B0
putTextnoSeek("Hula")
rhythm_victory: //803560BC
putTextnoSeek("Victory")
rhythm_robot: //803560D0
motion_robotwalk: //80356328
putTextnoSeek("Robot")
rhythm_ballet: //803560DC
putTextnoSeek("Ballet")
rhythm_cancan: //803560E4
putTextnoSeek("Cancan")
rhythm_bonfest: //803560F4
putTextnoSeek("Bon Dance")
rhythm_cossack: //80356100
putTextnoSeek("Cossack")
rhythm_boytapping: //80356110
putText3noSeek($011B, " Tap")
rhythm_girltapping: //80356124
putText3noSeek($011C, " Tap")
weight_boygreet: //80356138
putText3noSeek($011B, " Greetings")
weight_girlgreet: //8035614C
putText3noSeek($011C, " Greetings")
rhythm_warmingup: //80356160
putTextnoSeek("Warming Up")
weight_situp: //80356174
putTextnoSeek("Sit-up")
rhythm_squatjump: //80356180
putTextnoSeek("Squat Jump")
battle_chop: //8035618C
putTextnoSeek("Chop")
battle_turnkick: //803561A0
putTextnoSeeknoEnd("Turning ")
battle_kick: //80356198
putTextnoSeek("Kick")
battle_punch: //803561AC
putTextnoSeek("Punch")
weight_bodypride: //803561B4
putTextnoSeek("Showoff")
battle_stomping: //803561C4
putTextnoSeek("Stomp")
motion_handstand: //803561D0
putTextnoSeek("Handstand")
motion_skating: //803561E0
putTextnoSeek("Skating")
motion_frontcrawl: //803561F0
putTextnoSeek("Crawl Swim")
motion_breaststroke: //803561FC
putTextnoSeek("Breaststroke")
motion_diverswim: //80356208
putTextnoSeek("Diver Swim")
item_clarinet: //80356218
putTextnoSeek("Clarinet")
item_canewalk: //8035622C
putTextnoSeek("Cane")
item_elecguitar: //80356240
putTextnoSeeknoEnd("Electric ")
item_guitar: //80356288
putTextnoSeek("Guitar")
item_spear: //80356254
putTextnoSeek("Spear")
item_machinegun: //80356264
putTextnoSeeknoEnd("Machine ")
item_shootgun: //80356298
putTextnoSeek("Gun")
item_saxplay: //80356278
putTextnoSeek("Sax")
item_broom: //803562AC
putTextnoSeek("Broom")
item_axe: //803562BC
putTextnoSeek("Axe")
item_sword: //803562D0
putTextnoSeek("Sword")
item_pickaxe: //803562DC
putTextnoSeek("Pickaxe")
item_wand: //803562EC
putTextnoSeek("Wand")
item_mike: //80356300
putTextnoSeek("Sing")
motion_zombiewalk: //80356318
putTextnoSeek("Zombie")
motion_monsterwalk: //80356334
putTextnoSeek("Monster")
battle_spitflames: //80356348
putTextnoSeek("Spit Fire")
weight_herotf: //80356358
putTextnoSeek("Hero Transformation")
weight_herojump: //8035636C
putTextnoSeek("Hero Jump")
motion_fly: //80356380
putTextnoSeek("Fly")
battle_herokick: //8035638C
putTextnoSeek("Hero Kick")
weight_heroinetf: //8035639C
putTextnoSeek("Heroine Transformation")
motion_floating: //803563B0
object_floating: //80356544
putTextnoSeek("Floating")
motion_march: //803563C4
putTextnoSeek("March")
weight_salute: //803563D0
putTextnoSeek("Salute")
motion_flapfly: //803563EC
putTextnoSeeknoEnd("Bird ")
motion_flaprun: //803563DC
putTextnoSeek("Flapping")
item_katana: //80356400
putTextnoSeek("Katana")
item_juice: //80356410
putTextnoSeek("Juice")
item_eatingfries: //80356420
putTextnoSeek("Fries")
item_meat: //80356430
putTextnoSeek("Meat")
item_umbrella: //80356440
putTextnoSeek("Parasol")
item_wheel: //80356454
putTextnoSeek("Wheel")
item_camera: //80356464
putTextnoSeek("Take Photo")
album_action1: //80356474 (8035647E)
putTextnoSeek("Action 1")
album_action10: //80356484 (8035648E)
putTextnoSeek("Action 10")
object_roundabout: //803564A4
putTextnoSeek("Roundabout")
object_somersault: //803564B4
putTextnoSeek("Somersault")
object_drill: //803564C4
putTextnoSeek("Drill")
object_rolling: //803564D4
putTextnoSeek("Rolling")
object_squashed: //803564E8
putTextnoSeek("Squash")
object_crash: //803564FC
putTextnoSeek("Crash")
object_flabby: //80356510
putTextnoSeek("Flabby")
object_inflate: //80356520
putTextnoSeek("Inflate")
object_shrink: //80356534
putTextnoSeek("Shrink")
object_wobbly: //80356554
putTextnoSeek("Wobbly")
object_bounce: //80356564
putTextnoSeek("Bounce")
object_moving: //80356574
putTextnoSeek("Moving???")

//change pointers
seek(0xEF4F12)
dh (album_action1)
seek(0xEF4F1A)
dh $000E
seek(0xEF4F4A)
dh (album_action10)
seek(0xEF4F52)
dh $000E
seek(0xEF4F6E)
dh (album_action10)
seek(0xEF4F72)
dh $0010

seek(0xEF4F92)
dh (album_action10)
seek(0xEF4F9A)
dh $000E
seek(0xEF4FB6)
dh (album_action10)
seek(0xEF4FBA)
dh $0010

seek(0xF46D94)
dw (motion_boywalk), (motion_girlwalk), (motion_slowwalk), (motion_angrywalk), (motion_dizzywalk), (motion_march), (motion_handstand), (motion_boyrun), (motion_girlrun), (motion_bendrun), (motion_rushrun), (motion_jogging), (motion_tiredwalk), (motion_flaprun), (motion_skip), (motion_skating), (motion_zombiewalk), (motion_robotwalk), (motion_monsterwalk), (motion_crawl), (motion_tigercrawl), (motion_fly), (motion_flapfly), (motion_floating), (motion_frontcrawl), (motion_breaststroke), (motion_diverswim), (motion_climb)
dw (item_guitar), (item_elecguitar), (item_clarinet), (item_saxplay), (item_mike), (item_sword), (item_axe), (item_spear), (item_katana), (item_canewalk), (item_wand), (item_shootgun), (item_machinegun), (item_juice), (item_eatingfries), (item_meat), (item_broom), (item_pickaxe), (item_umbrella), (item_wheel), (item_camera)
dw (feel_happy), (feel_hurray), (feel_yes), (feel_hahaha), (feel_yup), (feel_clap), (feel_isthatso), (feel_donotwant), (feel_stop), (feel_ahem), (feel_dontknow), (feel_vexed), (feel_nervous), (feel_falling), (feel_crying), (feel_wiping), (feel_oh), (feel_woah), (feel_unfair), (feel_sorry), (feel_cold)
dw (weight_boystanding), (weight_girlstanding), (weight_battlestance), (weight_lookaround), (weight_sitting), (weight_sitcrossleg), (weight_dozing), (weight_boyjump), (weight_girljump), (weight_herojump), (weight_bow), (weight_boygreet), (weight_girlgreet), (weight_wave), (weight_herotf), (weight_heroinetf), (weight_yawn), (weight_sneezing), (weight_salute), (weight_situp), (weight_bodypride)
dw (rhythm_boytapping), (rhythm_girltapping), (rhythm_shake), (rhythm_funky), (rhythm_aerobic), (rhythm_hula), (rhythm_ballet), (rhythm_robot), (rhythm_victory), (rhythm_cancan), (rhythm_bonfest), (rhythm_cossack), (rhythm_squatjump), (rhythm_warmingup)
dw (battle_punch), (battle_chop), (battle_kick), (battle_turnkick), (battle_herokick), (battle_spitflames), (battle_stomping), (battle_stepback), (battle_fallonback), (battle_fallonfront), (battle_hittop), (battle_hitfront), (battle_faint), (battle_collapse)
dw (album_action1), (album_action10)
dw (object_still), (object_roundabout), (object_somersault), (object_drill), (object_rolling), (object_squashed), (object_crash), (object_flabby), (object_inflate), (object_shrink), (object_floating), (object_wobbly), (object_bounce), (object_moving)

//Movie Direct - Caption Menu
putText(0x1190820 + 40*0, "Exit")
putText(0x1190820 + 40*1, "Random")
putText(0x1190820 + 40*2, "Write Caption")
putText(0x1190820 + 40*3, "Caption Effect")
putText(0x1190820 + 40*4, "Caption Color")
putText(0x1190820 + 40*5, "Undo")

putText(0x1190820 + 40*6, "Subtitle")
putText(0x1190820 + 40*7, "Subtitle Typing")
putText(0x1190820 + 40*8, "Subtitle Limit")
putText(0x1190820 + 40*9, "Subtitle Above")
putText(0x1190820 + 40*10, "Vertical")
putText(0x1190820 + 40*11, "Vertical Bubble")
putText(0x1190820 + 40*12, "Horizontal Bubble")

putText(0x1190820 + 40*13, "Title")
putText(0x1190820 + 40*14, "Flashing")
putText(0x1190820 + 40*15, "Typing")
putText(0x1190820 + 40*16, "Turned")
putText(0x1190820 + 40*17, "Rotation")
putText(0x1190820 + 40*18, "Drop Off")
putText(0x1190820 + 40*19, "Approaching")

putText(0x1190820 + 40*20, "Fall Away")
putText(0x1190820 + 40*21, "Dripping")
putText(0x1190820 + 40*22, "Eerie")
putText(0x1190820 + 40*23, "Elastic")
putText(0x1190820 + 40*24, "Shaking")
putText(0x1190820 + 40*25, "One at a Time")
putText(0x1190820 + 40*26, "Red Line")

putText(0x1190820 + 40*27, "Horizontal Scroll")
putText(0x1190820 + 40*28, "Scroll Above")
putText(0x1190820 + 40*29, "Vertical Scroll")
putText(0x1190820 + 40*30, "Crawl")
putText(0x1190820 + 40*31, "Big Scroll")
putText(0x1190820 + 40*32, "Wave")
putText(0x1190820 + 40*33, "Scoreboard")

putText(0x1190820 + 40*34, "Window")
putText(0x1190820 + 40*35, "Typing Window")
putText(0x1190820 + 40*36, "Sing Along")
putText(0x1190820 + 40*37, "Corner")
putText(0x1190820 + 40*38, "Proper")
putText(0x1190820 + 40*39, "Too Many")
putText(0x1190820 + 40*40, "Scattered")

putText(0x1190820 + 40*41, "0/0")

seek(0x1190F10) //80683DA0
//Random Text TODO Later

//Movie Direct - Camera Work Menu
putText(0x11A07E0 + 48*0, "Exit")
putText(0x11A07E0 + 48*1, "Actor Mode")
putText(0x11A07E0 + 48*2, "Background Mode")
putText(0x11A07E0 + 48*3, "Undo")
putText(0x11A07E0 + 48*4, "Play/Stop")
putText(0x11A07E0 + 48*5, "*Stop")
putText(0x11A07E0 + 48*6, "Loop")
putText(0x11A07E0 + 48*7, "*Do Not Loop")
putText(0x11A07E0 + 48*8, "Origin")
putText(0x11A07E0 + 48*9, "Destination")
putText(0x11A07E0 + 48*10, "Origin to Destination")
putText(0x11A07E0 + 48*11, "Destination to Origin")
putText(0x11A07E0 + 48*12, "Camera Type")
putText(0x11A07E0 + 48*13, "Camera Movement")
putText(0x11A07E0 + 48*14, "Background Display")
putText(0x11A07E0 + 48*15, "Background Scroll")
putText(0x11A07E0 + 48*16, "Get From Previous Scene")
putText(0x11A07E0 + 48*17, "Swap")
putText(0x11A07E0 + 48*18, "Long Shot Reset")
putText(0x11A07E0 + 48*19, "Full Shot Reset")
putText(0x11A07E0 + 48*20, "Medium Shot Reset")
putText(0x11A07E0 + 48*21, "Close-Up Reset")
putText(0x11A07E0 + 48*22, "Rotation Reset")

putText(0x11A07E0 + 48*23, "Normal")
putText(0x11A07E0 + 48*24, "Tilted Right")
putText(0x11A07E0 + 48*25, "Up Right")
putText(0x11A07E0 + 48*26, "Right")
putText(0x11A07E0 + 48*27, "Down Right")
putText(0x11A07E0 + 48*28, "Upside Down")
putText(0x11A07E0 + 48*29, "Down Left")

putText(0x11A07E0 + 48*30, "Left")
putText(0x11A07E0 + 48*31, "Up Left")
putText(0x11A07E0 + 48*32, "Tilted Left")
putText(0x11A07E0 + 48*33, "1 Right Spin")
putText(0x11A07E0 + 48*34, "1 Left Spin")
putText(0x11A07E0 + 48*35, "3 Right Spins")
putText(0x11A07E0 + 48*36, "3 Left Spins")

putText(0x11A07E0 + 48*37, "Left Pivot")
putText(0x11A07E0 + 48*38, "Right Pivot")
putText(0x11A07E0 + 48*39, "Small Shake")
putText(0x11A07E0 + 48*40, "Strong Shake")
putText(0x11A07E0 + 48*41, "Up & Down")
putText(0x11A07E0 + 48*42, "Left & Right")
putText(0x11A07E0 + 48*43, "In & Out")

putText(0x11A07E0 + 48*44, "Normal")
putText(0x11A07E0 + 48*45, "Speed Up")
putText(0x11A07E0 + 48*46, "Speed Down")
putText(0x11A07E0 + 48*47, "Smooth")
putText(0x11A07E0 + 48*48, "Delay")
putText(0x11A07E0 + 48*49, "Stop")
putText(0x11A07E0 + 48*50, "Skip")

putText(0x11A07E0 + 48*51, "Normal")
putText(0x11A07E0 + 48*52, "Upside Down")
putText(0x11A07E0 + 48*53, "Rotate Right")
putText(0x11A07E0 + 48*54, "Rotate Left")

putText(0x11A07E0 + 48*55, "Up")
putText(0x11A07E0 + 48*56, "Down")
putText(0x11A07E0 + 48*57, "Right")
putText(0x11A07E0 + 48*58, "Left")
putText(0x11A07E0 + 48*59, "Scroll Reset")

putText(0x11A07E0 + 48*60, "Zoom Reset X1")
putText(0x11A07E0 + 48*61, "Zoom Reset X2")
putText(0x11A07E0 + 48*62, "Zoom Reset X3")
putText(0x11A07E0 + 48*63, "Zoom Reset X4")

putText(0x11A07E0 + 48*64, "0/0")

//Movie Direct - Menu
putText(0x11A31B8 + 32*0, "Shadow")
putText(0x11A31B8 + 32*1, "Expression")
putText(0x11A31B8 + 32*2, "Eye Blink")
putText(0x11A31B8 + 32*3, "Camera Look") //Unused?
putText(0x11A31B8 + 32*4, "Light")
putText(0x11A31B8 + 32*5, "Graffiti")
putText(0x11A31B8 + 32*6, "Fade In/Out")
putText(0x11A31B8 + 32*7, "Effects")
putText(0x11A31B8 + 32*8, "Filters")
putText(0x11A31B8 + 32*9, "Captions")
putText(0x11A31B8 + 32*10, "Music")
putText(0x11A31B8 + 32*11, "Music Effect")
putText(0x11A31B8 + 32*12, "Sound 1")
putText(0x11A31B8 + 32*13, "Sound 2")
putText(0x11A31B8 + 32*14, "Sound Effect")
putText(0x11A31B8 + 32*15, "Action Sounds")
putText(0x11A31B8 + 32*16, "Reaction Sounds")
putText(0x11A31B8 + 32*17, "Effect Sounds")
putText(0x11A31B8 + 32*18, "Filter Sounds")
putText(0x11A31B8 + 32*19, "Caption Sounds")
putText(0x11A31B8 + 32*20, "Movie Check")

//Movie Direct - Lighting Menu
putText(0x11A5798 + 24*0, "Exit")
putText(0x11A5798 + 24*1, "Light Type")
putText(0x11A5798 + 24*2, "Light Color")
putText(0x11A5798 + 24*3, "Intensity")
putText(0x11A5798 + 24*4, "Background")
putText(0x11A5798 + 24*5, "Undo")
putText(0x11A5798 + 24*6, "Play/Stop")
putText(0x11A5798 + 24*7, "Stop")
putText(0x11A5798 + 24*8, "Loop")
putText(0x11A5798 + 24*9, "Do not loop")
putText(0x11A5798 + 24*10, "Yes")
putText(0x11A5798 + 24*11, "No")

putText(0x11A5798 + 24*12, "Above Right")
putText(0x11A5798 + 24*13, "Above Left")
putText(0x11A5798 + 24*14, "Above")
putText(0x11A5798 + 24*15, "Bottom")
putText(0x11A5798 + 24*16, "Right Side")
putText(0x11A5798 + 24*17, "Left Side")
putText(0x11A5798 + 24*18, "Front")

putText(0x11A5798 + 24*19, "Back")
putText(0x11A5798 + 24*20, "Clashing")
putText(0x11A5798 + 24*21, "Face")
putText(0x11A5798 + 24*22, "Right Hand")
putText(0x11A5798 + 24*23, "Left Hand")
putText(0x11A5798 + 24*24, "Whirl Right")
putText(0x11A5798 + 24*25, "Whirl Left")

putText(0x11A5798 + 24*26, "0/0")
putText(0x11A5798 + 24*27, "Strong")
putText(0x11A5798 + 24*28, "Weak")
putText(0x11A5798 + 24*29, "000")

//Movie Direct - Effect Menu
putText(0x11BB190 + 40*0, "None")
putText(0x11BB190 + 40*1, "Rain")
putText(0x11BB190 + 40*2, "Snow")
putText(0x11BB190 + 40*3, "Thunder")
putText(0x11BB190 + 40*4, "Cherry Blossoms")
putText(0x11BB190 + 40*5, "Bubbles")
putText(0x11BB190 + 40*6, "Space")

putText(0x11BB190 + 40*7, "Flames")
putText(0x11BB190 + 40*8, "Fog")
putText(0x11BB190 + 40*9, "Concentration")
putText(0x11BB190 + 40*10, "Spit Flame")
putText(0x11BB190 + 40*11, "Breath")
putText(0x11BB190 + 40*12, "Heart")
putText(0x11BB190 + 40*13, "Dizzy")

putText(0x11BB190 + 40*14, "Glitter")
putText(0x11BB190 + 40*15, "Halo")
putText(0x11BB190 + 40*16, "Light Ball")
putText(0x11BB190 + 40*17, "Foot Smoke")
putText(0x11BB190 + 40*18, "Magic Shine")
putText(0x11BB190 + 40*19, "Full Power")
putText(0x11BB190 + 40*20, "Energy Beam")

putText(0x11BB190 + 40*21, "Shockwave")
putText(0x11BB190 + 40*22, "Explosion")
putText(0x11BB190 + 40*23, "Many Explosions")
putText(0x11BB190 + 40*24, "Big Head")
putText(0x11BB190 + 40*25, "Appear")
putText(0x11BB190 + 40*26, "Transparent")
putText(0x11BB190 + 40*27, "Disappear")

//Movie Direct - Filter List
putText(0x11BB660 + 40*0, "None")
putText(0x11BB660 + 40*1, "Weak Blur")
putText(0x11BB660 + 40*2, "Strong Blur")
putText(0x11BB660 + 40*3, "Layer Effect")
putText(0x11BB660 + 40*4, "Monochrome")
putText(0x11BB660 + 40*5, "Sepia")
putText(0x11BB660 + 40*6, "Two Colors")

putText(0x11BB660 + 40*7, "Monochrome Frame")
putText(0x11BB660 + 40*8, "Soft Focus")
putText(0x11BB660 + 40*9, "Full Mirage")
putText(0x11BB660 + 40*10, "Simple Mirage")
putText(0x11BB660 + 40*11, "Flashy Colors")
putText(0x11BB660 + 40*12, "Tame Colors")
putText(0x11BB660 + 40*13, "Negative")

putText(0x11BB660 + 40*14, "Mosaic")
putText(0x11BB660 + 40*15, "Noise")
putText(0x11BB660 + 40*16, "Monitor")
putText(0x11BB660 + 40*17, "Enlarge")
putText(0x11BB660 + 40*18, "Reduce")
putText(0x11BB660 + 40*19, "Half Sized")
putText(0x11BB660 + 40*20, "Flip")

putText(0x11BB660 + 40*21, "Split in Two")
putText(0x11BB660 + 40*22, "Split in Four")
putText(0x11BB660 + 40*23, "Film")
putText(0x11BB660 + 40*24, "Drawn")
putText(0x11BB660 + 40*25, "Flabby")
putText(0x11BB660 + 40*26, "Persistence")
putText(0x11BB660 + 40*27, "Still")

//Movie Direct - Fade In/Out List
putText(0x11BBAF8 + 40*0, "None")
putText(0x11BBAF8 + 40*1, "From Black")
putText(0x11BBAF8 + 40*2, "To Black")
putText(0x11BBAF8 + 40*3, "From White")
putText(0x11BBAF8 + 40*4, "To White")
putText(0x11BBAF8 + 40*5, "Open Iris")
putText(0x11BBAF8 + 40*6, "Close Iris")

putText(0x11BBAF8 + 40*7, "Open Rectangle")
putText(0x11BBAF8 + 40*8, "Close Rectangle")
putText(0x11BBAF8 + 40*9, "Horizontal Open")
putText(0x11BBAF8 + 40*10, "Horizontal Close")
putText(0x11BBAF8 + 40*11, "Vertical Open")
putText(0x11BBAF8 + 40*12, "Vertical Close")
putText(0x11BBAF8 + 40*13, "Black")

//Movie Direct - Expressions
putText(0x11BBD4C + 40*0, "None")
putText(0x11BBD4C + 40*1, "Normal Expression")
putText(0x11BBD4C + 40*2, "Laugh Expression")
putText(0x11BBD4C + 40*3, "Angry Expression")
putText(0x11BBD4C + 40*4, "Sad Expression")
putText(0x11BBD4C + 40*5, "Free Expression")
putText(0x11BBD4C + 40*6, "Sleep Expression")

//Movie Direct - Music List
putText(0x11BBF18 + 40*0, "None")
putText3(0x11BBF18 + 40*1, "Rock ", $0110)
putText3(0x11BBF18 + 40*2, "Mystery ", $0110)
putText3(0x11BBF18 + 40*3, "Shamisen ", $0110)
putText3(0x11BBF18 + 40*4, "Jazz ", $0110)
putText3(0x11BBF18 + 40*5, "Techno ", $0110)
putText3(0x11BBF18 + 40*6, "Evil ", $0110)

putText3(0x11BBF18 + 40*7, "Totakeke's Song ", $0110)
putText3(0x11BBF18 + 40*8, "Spy ", $0110)
putText3(0x11BBF18 + 40*9, "Bagpipe ", $0110)
putText3(0x11BBF18 + 40*10, "Recorder ", $0110)
putText3(0x11BBF18 + 40*11, "Sad ", $0110)
putText3(0x11BBF18 + 40*12, "Salsa ", $0110)
putText3(0x11BBF18 + 40*13, "Playful ", $0110) //???

putText3(0x11BBF18 + 40*14, "Waltz ", $0110)
putText3(0x11BBF18 + 40*15, "Tropical ", $0110)
putText3(0x11BBF18 + 40*16, "Hip-Hop ", $0110)
putText3(0x11BBF18 + 40*17, "Horror ", $0110)
putText3(0x11BBF18 + 40*18, "March ", $0110)
putText3(0x11BBF18 + 40*19, "Opening ", $0110)
putText3(0x11BBF18 + 40*20, "Memories ", $0110)

putText3(0x11BBF18 + 40*21, "Lonely ", $0110)
putText3(0x11BBF18 + 40*22, "China ", $0110)
putText3(0x11BBF18 + 40*23, "India ", $0110)
putText3(0x11BBF18 + 40*24, "City ", $0110)
putText3(0x11BBF18 + 40*25, "Noisy ", $0110)
putText3(0x11BBF18 + 40*26, "Morning Coffee ", $0110)
putText3(0x11BBF18 + 40*27, "Meeting ", $0110)

putText4(0x11BBF18 + 40*28, "Fanfare ", $0111, "4.2")
putText4(0x11BBF18 + 40*29, "And Then... ", $0111, "3.0")
putText4(0x11BBF18 + 40*30, "Yeah! ", $0111, "1.8")
putText4(0x11BBF18 + 40*31, "Mario ", $0111, "1.3")
putText4(0x11BBF18 + 40*32, "Shock ", $0111, "1.8")
putText4(0x11BBF18 + 40*33, "Ending ", $0111, "5.0")
putText4(0x11BBF18 + 40*34, "False Move ", $0111, "1.4")

//Movie Direct - Other ON/OFF
putText(0x11BBF18 + 40*35, "Shadow ON/OFF")
putText(0x11BBF18 + 40*36, "Shadow ON/OFF")
putText(0x11BBF18 + 40*37, "Eye Blink ON/OFF")
putText(0x11BBF18 + 40*38, "Eye Blink ON/OFF")
putText(0x11BBF18 + 40*39, "Camera Look ON/OFF")
putText(0x11BBF18 + 40*40, "Camera Look ON/OFF")
putText(0x11BBF18 + 40*41, "Action Sound ON/OFF")
putText(0x11BBF18 + 40*42, "Action Sound ON/OFF")

putText(0x11BBF18 + 40*43, "*")
putText(0x11BBF18 + 40*44, "*")

putText4(0x11BBF18 + 40*45, "Laugh Sound", $00BC, "O/X")
putText4(0x11BBF18 + 40*46, "Angry Sound", $00BC, "O/X")
putText4(0x11BBF18 + 40*47, "Sad Sound", $00BC, "O/X")
putText4(0x11BBF18 + 40*48, "Free Sound", $00BC, "O/X")

putText(0x11BBF18 + 40*49, "*")

putText4(0x11BBF18 + 40*50, "Rain", $00BC, "O/X")
putText4(0x11BBF18 + 40*51, "Snow", $00BC, "O/X")
putText4(0x11BBF18 + 40*52, "Thunder", $00BC, "O/X")
putText4(0x11BBF18 + 40*53, "Cherry Blossoms", $00BC, "O/X")
putText4(0x11BBF18 + 40*54, "Bubbles", $00BC, "O/X")
putText4(0x11BBF18 + 40*55, "Space", $00BC, "O/X")

putText4(0x11BBF18 + 40*56, "Flames", $00BC, "O/X")
putText4(0x11BBF18 + 40*57, "Fog", $00BC, "O/X")
putText4(0x11BBF18 + 40*58, "Concentration", $00BC, "O/X")
putText4(0x11BBF18 + 40*59, "Spit Flame", $00BC, "O/X")
putText4(0x11BBF18 + 40*60, "Breath", $00BC, "O/X")
putText4(0x11BBF18 + 40*61, "Heart", $00BC, "O/X")
putText4(0x11BBF18 + 40*62, "Dizzy", $00BC, "O/X")

putText4(0x11BBF18 + 40*63, "Glitter", $00BC, "O/X")
putText4(0x11BBF18 + 40*64, "Halo", $00BC, "O/X")
putText4(0x11BBF18 + 40*65, "Light Ball", $00BC, "O/X")
putText4(0x11BBF18 + 40*66, "Foot Smoke", $00BC, "O/X")
putText4(0x11BBF18 + 40*67, "Magic Shine", $00BC, "O/X")
putText4(0x11BBF18 + 40*68, "Full Power", $00BC, "O/X")
putText4(0x11BBF18 + 40*69, "Energy Beam", $00BC, "O/X")

putText4(0x11BBF18 + 40*70, "Shockwave", $00BC, "O/X")
putText4(0x11BBF18 + 40*71, "Explosion", $00BC, "O/X")
putText4(0x11BBF18 + 40*72, "Many Explosions", $00BC, "O/X")
putText4(0x11BBF18 + 40*73, "Big Head", $00BC, "O/X")
putText4(0x11BBF18 + 40*74, "Appear", $00BC, "O/X")
putText4(0x11BBF18 + 40*75, "Transparent", $00BC, "O/X")
putText4(0x11BBF18 + 40*76, "Disappear", $00BC, "O/X")

putText(0x11BBF18 + 40*77, "*")

putText4(0x11BBF18 + 40*87, "Simple Mirage", $00BC, "O/X")
putText4(0x11BBF18 + 40*92, "Noise", $00BC, "O/X")
putText4(0x11BBF18 + 40*100, "Film", $00BC, "O/X")

//Subtitle
putText4(0x11BBF18 + 40*105, "Subtitle", $00BC, "O/X")
putText4(0x11BBF18 + 40*106, "Subtitle Typing", $00BC, "O/X")
putText4(0x11BBF18 + 40*107, "Subtitle Limit", $00BC, "O/X")
putText4(0x11BBF18 + 40*108, "Subtitle Above", $00BC, "O/X")
putText4(0x11BBF18 + 40*109, "Vertical", $00BC, "O/X")
putText4(0x11BBF18 + 40*110, "Vertical Bubble", $00BC, "O/X")
//putText4(0x11BBF18 + 40*111, "Horizontal Bubble", $00BC, "O/X") //Unused

putText4(0x11BBF18 + 40*112, "Title", $00BC, "O/X")
putText4(0x11BBF18 + 40*113, "Flashing", $00BC, "O/X")
putText4(0x11BBF18 + 40*114, "Typing", $00BC, "O/X")
putText4(0x11BBF18 + 40*115, "Turned", $00BC, "O/X")
putText4(0x11BBF18 + 40*116, "Rotation", $00BC, "O/X")
putText4(0x11BBF18 + 40*117, "Drop Off", $00BC, "O/X")
putText4(0x11BBF18 + 40*118, "Approaching", $00BC, "O/X")

putText4(0x11BBF18 + 40*118, "Fall Away", $00BC, "O/X")
putText4(0x11BBF18 + 40*119, "Dripping", $00BC, "O/X")
putText4(0x11BBF18 + 40*120, "Eerie", $00BC, "O/X")
putText4(0x11BBF18 + 40*121, "Elastic", $00BC, "O/X")
putText4(0x11BBF18 + 40*122, "Shaking", $00BC, "O/X")
putText4(0x11BBF18 + 40*123, "One at a Time", $00BC, "O/X")
putText4(0x11BBF18 + 40*124, "Red Line", $00BC, "O/X")

//putText4(0x11BBF18 + 40*125, "Horizontal Scroll", $00BC, "O/X") //Unused
putText4(0x11BBF18 + 40*126, "Scroll Above", $00BC, "O/X")
putText4(0x11BBF18 + 40*127, "Vertical Scroll", $00BC, "O/X")
putText4(0x11BBF18 + 40*128, "Scroll Behind", $00BC, "O/X")
putText4(0x11BBF18 + 40*129, "Big Scroll", $00BC, "O/X")
putText4(0x11BBF18 + 40*130, "Wave", $00BC, "O/X")
putText4(0x11BBF18 + 40*131, "Scoreboard", $00BC, "O/X")

putText4(0x11BBF18 + 40*132, "Window", $00BC, "O/X")
putText4(0x11BBF18 + 40*133, "Typing Window", $00BC, "O/X")
putText4(0x11BBF18 + 40*134, "Sing Along", $00BC, "O/X")
putText4(0x11BBF18 + 40*135, "Corner", $00BC, "O/X")
putText4(0x11BBF18 + 40*136, "Proper", $00BC, "O/X")
putText4(0x11BBF18 + 40*137, "Too Many", $00BC, "O/X")
putText4(0x11BBF18 + 40*138, "Scattered", $00BC, "O/X")

//Movie Direct - Music Effects
putText(0x11BD51C + 40*0, "None")
putText(0x11BD51C + 40*1, "Fade In")
putText(0x11BD51C + 40*2, "Fade Out")
putText(0x11BD51C + 40*3, "Half Volume")
putText(0x11BD51C + 40*4, "Faster")
putText(0x11BD51C + 40*5, "Slower")

//Movie Direct - Sound Effects
putText(0x11BD62C + 40*0, "None")
putText(0x11BD62C + 40*1, "Fade In")
putText(0x11BD62C + 40*2, "Fade Out")
putText(0x11BD62C + 40*3, "Echo")

//Movie Direct - Graffiti
putText(0x11BD6D0 + 40*0, "None")
putText(0x11BD6D0 + 40*1, "Graffiti 1")
putText(0x11BD6D0 + 40*2, "Graffiti 2")
putText(0x11BD6D0 + 40*3, "Graffiti 3")
putText(0x11BD6D0 + 40*4, "Graffiti 4")
putText(0x11BD6D0 + 40*5, "Graffiti 5")
putText(0x11BD6D0 + 40*6, "Graffiti 6")

//Movie Direct - Captions
putText(0x11BD7F0 + 40*0, "None")
putText(0x11BD7F0 + 40*1, "Caption 1")
putText(0x11BD7F0 + 40*2, "Caption 2")
putText(0x11BD7F0 + 40*3, "Caption 3")
putText(0x11BD7F0 + 40*4, "Caption 4")
putText(0x11BD7F0 + 40*5, "Caption 5")
putText(0x11BD7F0 + 40*6, "Caption 6")

putText(0x11BD7F0 + 40*7, "Caption 7")
putText(0x11BD7F0 + 40*8, "Caption 8")
putText(0x11BD7F0 + 40*9, "Caption 9")
putText(0x11BD7F0 + 40*10, "Caption 10")
putText(0x11BD7F0 + 40*11, "Caption 11")
putText(0x11BD7F0 + 40*12, "Caption 12")
putText(0x11BD7F0 + 40*13, "Caption 13")

putText(0x11BD7F0 + 40*14, "Caption 14")
putText(0x11BD7F0 + 40*15, "Caption 15")
putText(0x11BD7F0 + 40*16, "Caption 16")
putText(0x11BD7F0 + 40*17, "Caption 17")
putText(0x11BD7F0 + 40*18, "Caption 18")
putText(0x11BD7F0 + 40*19, "Caption 19")
putText(0x11BD7F0 + 40*20, "Caption 20")

putText(0x11BD7F0 + 40*21, "Caption 21")
putText(0x11BD7F0 + 40*22, "Caption 22")
putText(0x11BD7F0 + 40*23, "Caption 23")
putText(0x11BD7F0 + 40*24, "Caption 24")
putText(0x11BD7F0 + 40*25, "Caption 25")
putText(0x11BD7F0 + 40*26, "Caption 26")
putText(0x11BD7F0 + 40*27, "Caption 27")

putText(0x11BD7F0 + 40*28, "Caption 28")
putText(0x11BD7F0 + 40*29, "Caption 29")
putText(0x11BD7F0 + 40*30, "Caption 30")
putText(0x11BD7F0 + 40*31, "Caption 31")
putText(0x11BD7F0 + 40*32, "Caption 32")
putText(0x11BD7F0 + 40*33, "Caption 33")
putText(0x11BD7F0 + 40*34, "Caption 34")

putText(0x11BD7F0 + 40*35, "Caption 35")
putText(0x11BD7F0 + 40*36, "Caption 36")
putText(0x11BD7F0 + 40*37, "Caption 37")
putText(0x11BD7F0 + 40*38, "Caption 38")
putText(0x11BD7F0 + 40*39, "Caption 39")
putText(0x11BD7F0 + 40*40, "Caption 40")
putText(0x11BD7F0 + 40*41, "Caption 41")

putText(0x11BD7F0 + 40*42, "Caption 42")
putText(0x11BD7F0 + 40*43, "Caption 43")
putText(0x11BD7F0 + 40*44, "Caption 44")
putText(0x11BD7F0 + 40*45, "Caption 45")
putText(0x11BD7F0 + 40*46, "Caption 46")
putText(0x11BD7F0 + 40*47, "Caption 47")
putText(0x11BD7F0 + 40*48, "Caption 48")

putText(0x11BD7F0 + 40*49, "Caption 49")
putText(0x11BD7F0 + 40*50, "Caption 50")
putText(0x11BD7F0 + 40*51, "Caption 51")
putText(0x11BD7F0 + 40*52, "Caption 52")
putText(0x11BD7F0 + 40*53, "Caption 53")
putText(0x11BD7F0 + 40*54, "Caption 54")
putText(0x11BD7F0 + 40*55, "Caption 55")

//Movie Direct - Sound List
//-Motion & Sounds
putText(0x11BE448 + 40*0, "None")
putText(0x11BE448 + 40*1, "Step")
putText(0x11BE448 + 40*2, "Puddle Step")
putText(0x11BE448 + 40*3, "Giant Step")
putText(0x11BE448 + 40*4, "Monster Step")
putText(0x11BE448 + 40*5, "Penguin Step")
putText(0x11BE448 + 40*6, "Robot Step")

putText(0x11BE448 + 40*7, "Floor Hit")
putText(0x11BE448 + 40*8, "Slide")
putText(0x11BE448 + 40*9, "Brake")
putText(0x11BE448 + 40*10, "Swing")
putText(0x11BE448 + 40*11, "Big Swing")
putText(0x11BE448 + 40*12, "Punch")
putText(0x11BE448 + 40*13, "Slap")

putText(0x11BE448 + 40*14, "Clap")
putText(0x11BE448 + 40*15, "Polish")
putText(0x11BE448 + 40*16, "Squeaky Bones")
putText(0x11BE448 + 40*17, "Water Drop")
putText(0x11BE448 + 40*18, "Swim")
putText(0x11BE448 + 40*19, "Gas")
putText(0x11BE448 + 40*20, "Applause")

putText(0x11BE448 + 40*21, "Draw Sword")
putText(0x11BE448 + 40*22, "Swords Collide")
putText(0x11BE448 + 40*23, "Sword Hit")
putText(0x11BE448 + 40*24, "Explosion")
putText(0x11BE448 + 40*25, "Gun")
putText(0x11BE448 + 40*26, "SF Gun")
putText(0x11BE448 + 40*27, "Slapstick")

putText(0x11BE448 + 40*28, "Jump")
putText(0x11BE448 + 40*29, "Throw")
putText(0x11BE448 + 40*30, "Fall")
putText(0x11BE448 + 40*31, "Hit")
putText(0x11BE448 + 40*32, "Crush")
putText(0x11BE448 + 40*33, "Lay Egg")
putText(0x11BE448 + 40*34, "Tub")

putText(0x11BE448 + 40*35, "Car Horn")
putText(0x11BE448 + 40*36, "Bicycle Bell")
putText(0x11BE448 + 40*37, "Shutter")
putText(0x11BE448 + 40*38, "Radio Wave")
putText(0x11BE448 + 40*39, "Knock")
putText(0x11BE448 + 40*40, "Pulse")
putText(0x11BE448 + 40*41, "Typewriter")

putText(0x11BE448 + 40*42, "Good")
putText(0x11BE448 + 40*43, "Buzzer")
putText(0x11BE448 + 40*44, "Trumpet Toy")
putText(0x11BE448 + 40*45, "Wobbly")
putText(0x11BE448 + 40*46, "Easy")
putText(0x11BE448 + 40*47, "Beep")
putText(0x11BE448 + 40*48, "Bubble")

putText(0x11BE448 + 40*49, "Yell")
putText(0x11BE448 + 40*50, "Pop")
putText(0x11BE448 + 40*51, "Useless")
putText(0x11BE448 + 40*52, "Point")
putText(0x11BE448 + 40*53, "Bump")
putText(0x11BE448 + 40*54, "Fall Back")
putText(0x11BE448 + 40*55, "Question")

//-Animal & Voice
putText(0x11BE448 + 40*56, "None")
putText(0x11BE448 + 40*57, "Dog")
putText(0x11BE448 + 40*58, "Cat")
putText(0x11BE448 + 40*59, "Monkey")
putText(0x11BE448 + 40*60, "Penguin")
putText(0x11BE448 + 40*61, "Elephant")
putText(0x11BE448 + 40*62, "Pig")

putText(0x11BE448 + 40*63, "Chick")
putText(0x11BE448 + 40*64, "Seagull")
putText(0x11BE448 + 40*65, "Chicken")
putText(0x11BE448 + 40*66, "Crow")
putText(0x11BE448 + 40*67, "Owl")
putText(0x11BE448 + 40*68, "Boo")
putText(0x11BE448 + 40*69, "Yoshi")

putText(0x11BE448 + 40*70, "Baby")
putText(0x11BE448 + 40*71, "Old Man Laugh")
putText(0x11BE448 + 40*72, "Bowser")
putText(0x11BE448 + 40*73, "Laughs")
putText(0x11BE448 + 40*74, "Yeah!")
putText(0x11BE448 + 40*75, "Scream")
putText(0x11BE448 + 40*76, "Appeal")

//-Melody
putText(0x11BE448 + 40*77, "None")
putText(0x11BE448 + 40*78, "1UP")
putText(0x11BE448 + 40*79, "Grow Up")
putText(0x11BE448 + 40*80, "Enter")
putText(0x11BE448 + 40*81, "? Box")
putText(0x11BE448 + 40*82, "Coin")
putText(0x11BE448 + 40*83, "Solved Mystery")

putText(0x11BE448 + 40*84, "Bell")
putText(0x11BE448 + 40*85, "Transform")
putText(0x11BE448 + 40*86, "Horror")
putText(0x11BE448 + 40*87, "Clappers")
putText(0x11BE448 + 40*88, "Orchestra Hit")
putText(0x11BE448 + 40*89, "Cowbell")
putText(0x11BE448 + 40*90, "Conga")

putText(0x11BE448 + 40*91, "Cymbal")
putText(0x11BE448 + 40*92, "Bass Drum")
putText(0x11BE448 + 40*93, "Snare Drum")
putText(0x11BE448 + 40*94, "Timpani")
putText(0x11BE448 + 40*95, "Maracas")
putText(0x11BE448 + 40*96, "Grease Down")
putText(0x11BE448 + 40*97, "Grease Up")

putText(0x11BE448 + 40*98, "Piano Do")
putText(0x11BE448 + 40*99, "Piano Re")
putText(0x11BE448 + 40*100, "Piano Mi")
putText(0x11BE448 + 40*101, "Piano Fa")
putText(0x11BE448 + 40*102, "Piano Sol")
putText(0x11BE448 + 40*103, "Piano La")
putText(0x11BE448 + 40*104, "Piano Si")

putText(0x11BE448 + 40*105, "Guitar C")
putText(0x11BE448 + 40*106, "Guitar D")
putText(0x11BE448 + 40*107, "Guitar E")
putText(0x11BE448 + 40*108, "Guitar F")
putText(0x11BE448 + 40*109, "Guitar G")
putText(0x11BE448 + 40*110, "Guitar A")
putText(0x11BE448 + 40*111, "Guitar B")

//-Loops
putText(0x11BE448 + 40*112, "None")
putText(0x11BE448 + 40*113, "Engine")
putText(0x11BE448 + 40*114, "Helicopter")
putText(0x11BE448 + 40*115, "Airplane")
putText(0x11BE448 + 40*116, "Spring")
putText(0x11BE448 + 40*117, "Siren")
putText(0x11BE448 + 40*118, "Telephone")

putText(0x11BE448 + 40*119, "Conveyor")
putText(0x11BE448 + 40*120, "Clock")
putText(0x11BE448 + 40*121, "Machine Gun")
putText(0x11BE448 + 40*122, "Drum Roll")
putText(0x11BE448 + 40*123, "Bee")
putText(0x11BE448 + 40*124, "Spray")
putText(0x11BE448 + 40*125, "Creak")

putText(0x11BE448 + 40*126, "Full Power")
putText(0x11BE448 + 40*127, "Spit Flame")
putText(0x11BE448 + 40*128, "Flame")
putText(0x11BE448 + 40*129, "Concentration")
putText(0x11BE448 + 40*130, "Halo")
putText(0x11BE448 + 40*131, "Star")
putText(0x11BE448 + 40*132, "Noise")

putText(0x11BE448 + 40*133, "Small Voices")
putText(0x11BE448 + 40*134, "Bigger")
putText(0x11BE448 + 40*135, "Smaller")
putText(0x11BE448 + 40*136, "Inflate")
putText(0x11BE448 + 40*137, "Deflate")
putText(0x11BE448 + 40*138, "Appear")
putText(0x11BE448 + 40*139, "Disappear")

//-Environments
putText(0x11BE448 + 40*140, "None")
putText(0x11BE448 + 40*141, "Rain")
putText(0x11BE448 + 40*142, "Strong Wind")
putText(0x11BE448 + 40*143, "Weak Wind")
putText(0x11BE448 + 40*144, "Thunder")
putText(0x11BE448 + 40*145, "Wave")
putText(0x11BE448 + 40*146, "Underwater")

putText(0x11BE448 + 40*147, "Eerie")
putText(0x11BE448 + 40*148, "Mysterious")
putText(0x11BE448 + 40*149, "Jungle")
putText(0x11BE448 + 40*150, "Cheer")
putText(0x11BE448 + 40*151, "Crowd")
putText(0x11BE448 + 40*152, "Congestion")
putText(0x11BE448 + 40*153, "Night")

//-Actors
putText(0x11BE448 + 40*154, "Actor 1 Laugh")
putText(0x11BE448 + 40*155, "Actor 1 Angry")
putText(0x11BE448 + 40*156, "Actor 1 Sad")
putText(0x11BE448 + 40*157, "Actor 1 Free")
putText(0x11BE448 + 40*158, "Actor 1 Record")

putText(0x11BE448 + 40*159, "Actor 2 Laugh")
putText(0x11BE448 + 40*160, "Actor 2 Angry")
putText(0x11BE448 + 40*161, "Actor 2 Sad")
putText(0x11BE448 + 40*162, "Actor 2 Free")
putText(0x11BE448 + 40*163, "Actor 2 Record")

putText(0x11BE448 + 40*164, "Actor 3 Laugh")
putText(0x11BE448 + 40*165, "Actor 3 Angry")
putText(0x11BE448 + 40*166, "Actor 3 Sad")
putText(0x11BE448 + 40*167, "Actor 3 Free")
putText(0x11BE448 + 40*168, "Actor 3 Record")

//-Recorded
putText(0x11BE448 + 40*169, "Record 1 Pitch +2")
putText(0x11BE448 + 40*170, "Record 1 Pitch +1")
putText(0x11BE448 + 40*171, "Record 1 Normal")
putText(0x11BE448 + 40*172, "Record 1 Pitch -1")
putText(0x11BE448 + 40*173, "Record 1 Pitch -2")
putText(0x11BE448 + 40*174, "Record 1 Loop")

putText(0x11BE448 + 40*175, "Record 2 Pitch +2")
putText(0x11BE448 + 40*176, "Record 2 Pitch +1")
putText(0x11BE448 + 40*177, "Record 2 Normal")
putText(0x11BE448 + 40*178, "Record 2 Pitch -1")
putText(0x11BE448 + 40*179, "Record 2 Pitch -2")
putText(0x11BE448 + 40*180, "Record 2 Loop")

putText(0x11BE448 + 40*181, "Record 3 Pitch +2")
putText(0x11BE448 + 40*182, "Record 3 Pitch +1")
putText(0x11BE448 + 40*183, "Record 3 Normal")
putText(0x11BE448 + 40*184, "Record 3 Pitch -1")
putText(0x11BE448 + 40*185, "Record 3 Pitch -2")
putText(0x11BE448 + 40*186, "Record 3 Loop")

//Movie Direct - Light Types
putText(0x11C01B8 + 40*0, "Original")
putText(0x11C01B8 + 40*1, "Noon")
putText(0x11C01B8 + 40*2, "Morning")
putText(0x11C01B8 + 40*3, "Evening")
putText(0x11C01B8 + 40*4, "Night")
putText(0x11C01B8 + 40*5, "Red & Blue")
putText(0x11C01B8 + 40*6, "Moving Light")

putText(0x11C01B8 + 40*7, "Dimmed")
putText(0x11C01B8 + 40*8, "Light in the Dark")
putText(0x11C01B8 + 40*9, "Below Light")
putText(0x11C01B8 + 40*10, "Face Light")
putText(0x11C01B8 + 40*11, "Backlight")
putText(0x11C01B8 + 40*12, "Frontlight")
putText(0x11C01B8 + 40*13, "Silhouette")

//Movie Direct - Options Menu
putText(0x11C4888 + 40*0, "Save & Exit")

putText(0x11C4888 + 40*1, "Shadows")
putText(0x11C4888 + 40*2, "Eye Blink")
putText(0x11C4888 + 40*3, "Camera Look")
putText(0x11C4888 + 40*4, "Produce Sounds")
putText(0x11C4888 + 40*5, "Reaction Voices")
putText(0x11C4888 + 40*6, "Effect Sounds")
putText(0x11C4888 + 40*7, "Transition Sounds")
putText(0x11C4888 + 40*8, "Caption Sounds")

putText(0x11C4888 + 40*9, "No Shadows")
putText(0x11C4888 + 40*10, "No Eye Blinks")
putText(0x11C4888 + 40*11, "No Camera Look")
putText(0x11C4888 + 40*12, "No Sound")
putText(0x11C4888 + 40*13, "No Reaction Voice")
putText(0x11C4888 + 40*14, "No Effect Sound")
putText(0x11C4888 + 40*15, "No Transition Sound")
putText(0x11C4888 + 40*16, "No Caption Sound")

//Movie Production - Action Maker
seek(0x10298CC)
base 0x802A54BC
movieactionmake_getprevious: //802A54BC
putTextnoSeek("Get From Previous Scene")
movieactionmake_resetpose: //802A54DC
putTextnoSeek("Reset Pose")
movieactionmake_position: //802A54F0
putTextnoSeek("Current Frame")
movieactionmake_moveentirebody: //802A57A0
putTextnoSeeknoEnd("Move ")
movieactionmake_entirebody: //802A5508
putTextnoSeek("Actor")
movieactionmake_head: //802A5518
putTextnoSeek("Head")
movieactionmake_top: //802A5520
putTextnoSeek("Torso")
movieactionmake_rightarm: //802A5528
movieactionmake_rightforearm: //802A55B0
putTextnoSeek("Right Arm")
movieactionmake_leftarm: //802A5534
movieactionmake_leftforearm: //802A55C0
putTextnoSeek("Left Arm")
movieactionmake_righthand: //802A5540
movieactionmake_rightwrist: //802A55D0
putTextnoSeek("Right Hand")
movieactionmake_lefthand: //802A5548
movieactionmake_leftwrist: //802A55DC
putTextnoSeek("Left Hand")
movieactionmake_waist: //802A5554
putTextnoSeek("Waist")
movieactionmake_rightleg: //802A555C
putTextnoSeek("Right Leg")
movieactionmake_leftleg: //802A5568
putTextnoSeek("Left Leg")
movieactionmake_rightfoot: //802A5574
putTextnoSeek("Right Foot")
movieactionmake_leftfoot: //802A5584
putTextnoSeek("Left Foot")
movieactionmake_upperbody: //802A5594
putTextnoSeek("Upper Body")
movieactionmake_lowerbody: //802A55A4
putTextnoSeek("Lower Body")
//movieactionmake_rightforearm: //802A55B0
//putTextnoSeek("Right Forearm")
//movieactionmake_leftforearm: //802A55C0
//putTextnoSeek("Left Forearm")
//movieactionmake_rightwrist: //802A55D0
//putTextnoSeek("Right Wrist")
//movieactionmake_leftwrist: //802A55DC
//putTextnoSeek("Left Wrist")
movieactionmake_grabaction: //802A55EC
putTextnoSeeknoEnd("Grab ")
movieactionmake_selectaction: //802A5694
putTextnoSeek("Action")
movieactionmake_setinalbum: //802A5600
putTextnoSeek("Replace")
movieactionmake_getfromalbum: //802A5614
putTextnoSeek("Use Action")
movieactionmake_rotationzoomB: //802A562C
putTextnoSeek("Rotate/Zoom (Button B)")
movieactionmake_pose1: //802A564C
putTextnoSeek("Pose 1")
movieactionmake_sound1: //802A5658
putTextnoSeek("Sound 1")
movieactionmake_loop: //802A5660
putTextnoSeek("Loop")
movieactionmake_poseONOFFswitch: //802A5674
putTextnoSeek("Pose ON/OFF")
//movieactionmake_selectaction: //802A5694
//putTextnoSeek("Action")
movieactionmake_selectactionsound: //802A56A8
putTextnoSeek("Sound")
movieactionmake_copypose: //802A56C4
putTextnoSeek("Copy")
movieactionmake_pastepose: //802A56D4
putTextnoSeek("Paste")
movieactionmake_flippose: //802A56E8
putTextnoSeek("Flip Pose")
movieactionmake_undo: //802A56FC
putTextnoSeek("Undo")
movieactionmake_cameraplacement: //802A5708
putTextnoSeek("Camera Place")
movieactionmake_saveexit: //802A5718
putTextnoSeeknoEnd("Save & ")
movieactionmake_exit: //802A5734
putTextnoSeek("Exit")
movieactionmake_actionalbum: //802A573C
putTextnoSeek("Action Album")
movieactionmake_playstop: //802A5750
putTextnoSeek("Play/Stop")
movieactionmake_shorten: //802A5764
putTextnoSeek("Shorten")
movieactionmake_lengthen: //802A5778
putTextnoSeek("Lengthen")
movieactionmake_random: //802A578C
putTextnoSeek("Random")
//movieactionmake_moveentirebody: //802A57A0
//putTextnoSeek("Move Actor")
movieactionmake_movepart: //802A57B8
putTextnoSeek("Move Body Part")
movieactionmake_rotatepart: //802A57CC
putTextnoSeek("Twist Body Part")
movieactionmake_soundONOFFswitch: //802A57DC
putTextnoSeek("Sound ON/OFF")

seek(0x1021E3E)
dh (movieactionmake_position)
seek(0x1021F4A)
dh (movieactionmake_entirebody)
seek(0x1021FC2)
dh (movieactionmake_entirebody)
seek(0x10220A6)
dh (movieactionmake_entirebody)
seek(0x1021F2A)
dh (movieactionmake_head)
seek(0x1021F9A)
dh (movieactionmake_head)
seek(0x102207E)
dh (movieactionmake_head)
seek(0x1022092)
dh (movieactionmake_top)
seek(0x10220E2)
dh (movieactionmake_rightarm)
seek(0x1021FFE)
dh (movieactionmake_rightforearm)
seek(0x10220CE)
dh (movieactionmake_leftarm)
seek(0x1021FEA)
dh (movieactionmake_leftforearm)
seek(0x102210A)
dh (movieactionmake_righthand)
seek(0x1022026)
dh (movieactionmake_rightwrist)
seek(0x10220F6)
dh (movieactionmake_lefthand)
seek(0x1022012)
dh (movieactionmake_leftwrist)
seek(0x10220BA)
dh (movieactionmake_waist)
seek(0x1022132)
dh (movieactionmake_rightleg)
seek(0x102211E)
dh (movieactionmake_leftleg)
seek(0x102215A)
dh (movieactionmake_rightfoot)
seek(0x1022146)
dh (movieactionmake_leftfoot)
seek(0x1021FAE)
dh (movieactionmake_upperbody)
seek(0x1021FD6)
dh (movieactionmake_lowerbody)
seek(0x10221DE)
dh (movieactionmake_grabaction)
seek(0x10222BA)
dh (movieactionmake_grabaction)
seek(0x102226A)
dh (movieactionmake_setinalbum)
seek(0x102220E)
dh (movieactionmake_getfromalbum)
seek(0x1022346)
dh (movieactionmake_rotationzoomB)
seek(0x102238E)
dh (movieactionmake_pose1)
seek(0x1022396)
dh $000A
seek(0x10223EA)
dh (movieactionmake_pose1)
seek(0x102243E)
dh (movieactionmake_sound1)
seek(0x1022446)
dh $000C
seek(0x102249A)
dh (movieactionmake_sound1)
seek(0x1022552)
dh (movieactionmake_saveexit)
seek(0x102253E)
dh (movieactionmake_exit)

seek(0x1029C14)
dw (movieactionmake_exit)
seekFile(origin() + 20)
dw (movieactionmake_actionalbum)
seekFile(origin() + 20)
dw (movieactionmake_playstop)
seekFile(origin() + 20)
dw (movieactionmake_loop)
seekFile(origin() + 20)
dw (movieactionmake_shorten)
seekFile(origin() + 20)
dw (movieactionmake_lengthen)
seekFile(origin() + 44)
dw (movieactionmake_random)
seekFile(origin() + 20)
dw (movieactionmake_poseONOFFswitch)
seekFile(origin() + 20)
dw (movieactionmake_selectaction)
seekFile(origin() + 20)
dw (movieactionmake_selectactionsound)
seekFile(origin() + 20)
dw (movieactionmake_soundONOFFswitch)
seekFile(origin() + 20)
dw (movieactionmake_copypose)
seekFile(origin() + 20)
dw (movieactionmake_pastepose)
seekFile(origin() + 20)
dw (movieactionmake_flippose)
seekFile(origin() + 20)
dw (movieactionmake_undo)
seekFile(origin() + 20)
dw (movieactionmake_cameraplacement)
seekFile(origin() + 20)
dw (movieactionmake_moveentirebody)
seekFile(origin() + 20)
dw (movieactionmake_movepart)
seekFile(origin() + 20)
dw (movieactionmake_rotatepart)
seekFile(origin() + 20)
dw (movieactionmake_resetpose)
seekFile(origin() + 20)
dw (movieactionmake_getprevious)
seekFile(origin() + 164)
dw (movieactionmake_undo)

putTextASCII(0x102A100, "This Action|will be deleted.|Is it OK?")

//Movie Direct - Graffiti Menu
seek(0x11DDCF8)
base 0x80294558
moviegraffiti_exit: //80294558
putTextnoSeek("Exit")
moviegraffiti_undo: //80294560
putTextnoSeek("Undo")
moviegraffiti_draw: //8029456C
putTextnoSeek("Draw")
moviegraffiti_animate: //80294578
putTextnoSeek("Animate")
moviegraffiti_display: //8029458C
putTextnoSeek("Display")
moviegraffiti_graffitialbum: //802945A4
putTextnoSeek("Graffiti Album")

moviegraffiti_behindactor: //802945B8
putTextnoSeek("Back")
moviegraffiti_frontactor: //802945CC
putTextnoSeek("Front")
moviegraffiti_nextcaption: //802945DC
putTextnoSeek("Caption")

moviegraffiti_normal: //802945EC
putTextnoSeek("Normal")
moviegraffiti_flash: //802945F4
putTextnoSeek("Flash")
moviegraffiti_transparent: //80294600
putTextnoSeek("Clear")
moviegraffiti_fromright: //80294610
putTextnoSeek("From Right")
moviegraffiti_scrollright: //80294624
putTextnoSeek("Scroll Right")
moviegraffiti_scrollup: //80294634
putTextnoSeek("Scroll Up")
moviegraffiti_loopright: //80294644
putTextnoSeek("Loop")

moviegraffiti_diagonalscroll: //8029464C
putTextnoSeek("Diagonal")
moviegraffiti_flying: //80294660
putTextnoSeek("Fly")
moviegraffiti_turning: //80294668
putTextnoSeek("Turn")
moviegraffiti_fall: //80294670
putTextnoSeek("Fall")
moviegraffiti_splithorizontal: //80294678
putTextnoSeek("Up/Down")
moviegraffiti_splitvertical: //80294688
putTextnoSeek("Left/Right")
moviegraffiti_crushed: //8029469C
putTextnoSeek("Crush")

moviegraffiti_growbig: //802946A8
putTextnoSeek("Closer")
moviegraffiti_growsmall: //802946B8
putTextnoSeek("Away")
moviegraffiti_wobble: //802946C8
putTextnoSeek("Wobble")
moviegraffiti_rotatetwice: //802946DC
putTextnoSeeknoEnd("More ")
moviegraffiti_rotate: //802946D0
putTextnoSeek("Rotation")
moviegraffiti_rise: //802946E8
putTextnoSeek("Rise")
moviegraffiti_backscroll: //802946F4
putTextnoSeek("Crawl")

seek(0x11D9072)
dh (moviegraffiti_exit)
seek(0x11D957A)
dh (moviegraffiti_undo)
seek(0x11D913A)
dh (moviegraffiti_draw)
seek(0x11D924E)
dh (moviegraffiti_animate)
seek(0x11D935A)
dh (moviegraffiti_display)
seek(0x11D9466)
dh (moviegraffiti_graffitialbum)

seek(0x11DDEA8)
dw (moviegraffiti_normal), (moviegraffiti_flash), (moviegraffiti_transparent), (moviegraffiti_fromright), (moviegraffiti_scrollright), (moviegraffiti_scrollup), (moviegraffiti_loopright)
dw (moviegraffiti_diagonalscroll), (moviegraffiti_flying), (moviegraffiti_turning), (moviegraffiti_fall), (moviegraffiti_splithorizontal), (moviegraffiti_splitvertical), (moviegraffiti_crushed)
dw (moviegraffiti_growbig), (moviegraffiti_growsmall), (moviegraffiti_wobble), (moviegraffiti_rotate), (moviegraffiti_rotatetwice), (moviegraffiti_rise), (moviegraffiti_backscroll)
dw (moviegraffiti_behindactor), (moviegraffiti_frontactor), (moviegraffiti_nextcaption)

//Graffiti Editor
seek(0x11DD5E4)
base 0x80293E44
moviegraffitiedit_page: //80293E44
putTextnoSeek("")
moviegraffitiedit_pen: //80293E4C
putTextnoSeek("Pen")
moviegraffitiedit_spray: //80293E54
putTextnoSeek("Spray")
moviegraffitiedit_thin: //80293E60
moviegraffitiedit_erasethin: //80293F80
putTextnoSeek("Thin")
moviegraffitiedit_normal: //80293E68
moviegraffitiedit_erasenormal: //80293F8C
putTextnoSeek("Normal")
moviegraffitiedit_thick: //80293E70
moviegraffitiedit_erasethick: //80293F94
putTextnoSeek("Thick")
moviegraffitiedit_shapes: //80293E78
putTextnoSeek("Shape")
moviegraffitiedit_eraser: //80293E80
putTextnoSeek("Eraser")
moviegraffitiedit_fill: //80293E8C
moviegraffitiedit_erasecolor: //80293FD8
putTextnoSeek("Fill")
moviegraffitiedit_characterstamps: //80293E98
putTextnoSeek("Character Stamps")
moviegraffitiedit_stampcolor: //80293EA8
putTextnoSeek("Stamp Color")
moviegraffitiedit_clear: //80293EB8
putTextnoSeek("Clear")
moviegraffitiedit_undo: //80293EC8
putTextnoSeek("Undo")
moviegraffitiedit_free: //80293ED4
//putTextnoSeek("Free")
moviegraffitiedit_line: //80293EE0
putTextnoSeek("Line")
moviegraffitiedit_filledrectangle: //80293EF8
putTextnoSeeknoEnd("Filled ")
moviegraffitiedit_rectangle: //80293EEC
putTextnoSeek("Rectangle")
moviegraffitiedit_filledcircle: //80293F18
putTextnoSeeknoEnd("Filled ")
moviegraffitiedit_circle: //80293F10
putTextnoSeek("Circle")
moviegraffitiedit_12page: //80293F2C
putTextnoSeek("1/2")
moviegraffitiedit_hiragana: //80293F3C
putTextnoSeek("Hiragana")
moviegraffitiedit_katakana: //80293F48
putTextnoSeek("Katakana")
moviegraffitiedit_kanji: //80293F54
putTextnoSeek("Kanji")
moviegraffitiedit_uppercase: //80293F5C
putTextnoSeek("Uppercase")
moviegraffitiedit_lowercase: //80293F68
putTextnoSeek("Lowercase")
moviegraffitiedit_numbersymbol: //80293F70
putTextnoSeek("Number/Symbol")
moviegraffitiedit_exit: //80293FA0
putTextnoSeek("Exit")
moviegraffitiedit_cut: //80293FA8
putTextnoSeek("Cut")
moviegraffitiedit_grid: //80293FBC
putTextnoSeek("Grid")
moviegraffitiedit_colorpattern1: //80293FEC
putTextnoSeek("Color Pattern 1")

seek(0x11D0AC2)
dh (moviegraffitiedit_shapes)
seek(0x11D0EC6)
dh (moviegraffitiedit_eraser)
seek(0x11CE7BA)
dh (moviegraffitiedit_fill)
seek(0x11CEDBA)
dh (moviegraffitiedit_characterstamps)
seek(0x11D150E)
dh (moviegraffitiedit_stampcolor)
seek(0x11CCD9A)
dh (moviegraffitiedit_clear)
seek(0x11CDEDA)
dh (moviegraffitiedit_undo)
seek(0x11D09F6)
dh (moviegraffitiedit_exit)
seek(0x11D2036)
dh (moviegraffitiedit_cut)
seek(0x11D1A1A)
dh (moviegraffitiedit_grid)
seek(0x11CE062)
dh (moviegraffitiedit_colorpattern1)
seek(0x11CE086)
dh (moviegraffitiedit_colorpattern1 + 28)

seek(0x11DD7AC)
dw (moviegraffitiedit_pen), (moviegraffitiedit_spray), (moviegraffitiedit_thin), (moviegraffitiedit_normal), (moviegraffitiedit_thick), (moviegraffitiedit_line), (moviegraffitiedit_rectangle), (moviegraffitiedit_circle), (moviegraffitiedit_filledrectangle), (moviegraffitiedit_filledcircle), (moviegraffitiedit_hiragana), (moviegraffitiedit_katakana), (moviegraffitiedit_kanji), (moviegraffitiedit_lowercase), (moviegraffitiedit_uppercase), (moviegraffitiedit_numbersymbol), (moviegraffitiedit_erasethin), (moviegraffitiedit_erasenormal), (moviegraffitiedit_erasethick), (moviegraffitiedit_thin), (moviegraffitiedit_normal), (moviegraffitiedit_thick), (moviegraffitiedit_rectangle), (moviegraffitiedit_circle), (moviegraffitiedit_erasecolor)

//Graffiti Album
putText(0x11F6138 + 40*0, "Save & Exit")
putText(0x11F6138 + 40*1, "Undo")
putText(0x11F6138 + 40*2, "Grab Graffiti")
putText(0x11F6138 + 40*3, "Replace")
putText(0x11F6138 + 40*4, "Use Graffiti")

putTextASCII(0x11DE000, "This Graffiti|will be deleted.|Is it OK?")

//Image Processing Text (after Capture or GBCam)
putText(0x12A5138, "OK")
putText(0x12A514C, "Undo")
putText(0x12A5160, "Back")
