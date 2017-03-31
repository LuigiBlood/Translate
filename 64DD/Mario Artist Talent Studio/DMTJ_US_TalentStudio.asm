output "Mario Artist - Talent Studio.ndd"

//Talent Studio
//Part 1

seek(0x20BA80)
base 0x803BA250
//Menu
menu1_back:
putTextnoSeek("Back to Main Menu")
menu1_saveload:
putTextnoSeek("Save/Load [Talent]")
menu1_selecttype:
putTextnoSeek("Select Type")
menu1_hair:
putTextnoSeek("Hair")
menu1_faceskin:
putTextnoSeek("Face & Skin")
menu1_body:
putTextnoSeek("Body")
menu1_voice:
putTextnoSeek("Voice")
menu1_info:
putTextnoSeek("Talent's Name")
menu1_mike:
putTextnoSeek("Microphone")
menu1_music1:
putTextnoSeek("Music 1")
menu1_music2:
putTextnoSeek("Music 2")
menu1_music3:
putTextnoSeek("Music 3")
menu1_showtime:
putTextnoSeek("Show Time")
menu1_showtimeedit:
//putTextnoSeek("Show Time Edit")
menu1_choosepose:
//putTextnoSeek("Choose a Pose")
menu1_mousespeed:
//putTextnoSeek("Mouse Speed")

//Type Select
menu2_current:
putTextnoSeek("Current Talent")
menu2_choosetalent:
putTextnoSeek("Choose Talent")
menu2_choosebody:
putTextnoSeek("Choose Body Type")
menu2_cloth:
//putTextnoSeek("Cloth Character")

//Talent Edit
menu3_makeface:
putTextnoSeek("Make a face / Select skin color")
menu3_makepattern:
putTextnoSeek("Make a pattern")
menu3_capturecart:
putTextnoSeek("Capture Cartridge")
menu3_gbcamera:
putTextnoSeek("GameBoy Camera")
menu3_load2ddrawing:
putTextnoSeek("Load [2D Drawing]")
menu3_makeup:
putTextnoSeek("Makeup")
menu3_expressions:
putTextnoSeek("Expressions")
menu3_facealbum:
putTextnoSeek("Face Album")
menu3_back:
putTextnoSeek("Back")
menu3_savequit:
putTextnoSeek("Save & Quit")
menu3_pagefeed:
//putTextnoSeek("Page Feed")
menu3_random:
putTextnoSeek("Random")
menu3_clear:
putTextnoSeek("Clear")
menu3_undo:
putTextnoSeek("Undo")
menu3_changeposition:
putTextnoSeek("Change Position")
menu3_changerotation:
putTextnoSeek("Change Rotation")
menu3_changesize:
putTextnoSeek("Change Size")
menu3_color1:
putTextnoSeek("Color 1")
menu3_color2:
putTextnoSeek("Color 2")
menu3_pattern1:
putTextnoSeek("Pattern 1")
menu3_pattern2:
putTextnoSeek("Pattern 2")
menu3_mark:
putTextnoSeek("Mark")
menu3_changetexture:
putTextnoSeek("Change Texture")
menu3_coloralbum:
putTextnoSeek("Color Album")
menu3_patternalbum:
putTextnoSeek("Pattern Album")
menu3_everyaxis1:
putTextnoSeek("Every Axis")
menu3_redaxis1:
putTextnoSeek("Red Axis")
menu3_greenaxis1:
putTextnoSeek("Green Axis")
menu3_blueaxis1:
putTextnoSeek("Blue Axis")
menu3_aroundredaxis:
putTextnoSeek("Around Red Axis")
menu3_aroundgreenaxis:
putTextnoSeek("Around Green Axis")
menu3_aroundblueaxis:
putTextnoSeek("Around Blue Axis")
menu3_everyaxis2:
//putTextnoSeek("Every Axis")
menu3_redaxis2:
//putTextnoSeek("Red Axis")
menu3_greenaxis2:
//putTextnoSeek("Green Axis")
menu3_blueaxis2:
//putTextnoSeek("Blue Axis")
menu3_reset:
putTextnoSeek("Reset")

menu4_outline:
putTextnoSeek("Outline")
menu4_hair:
putTextnoSeek("Hair")
menu4_nose:
putTextnoSeek("Nose")
menu4_ears:
putTextnoSeek("Ears")
menu4_beard:
putTextnoSeek("Beard")
menu4_helmet:
putTextnoSeek("Helmet")
menu4_hat:
putTextnoSeek("Hat")
menu4_glasses:
putTextnoSeek("Glasses")
menu4_access1:
putTextnoSeek("Earrings")
menu4_access2:
putTextnoSeek("Accessories")

menu5_clothing:
putTextnoSeek("Clothing")
menu5_body:
putTextnoSeek("Body")
menu5_shirts:
putTextnoSeek("Swimwear & Shirts")
menu5_tights:
putTextnoSeek("Tight Suits")
menu5_top:
putTextnoSeek("Top")
menu5_various:
putTextnoSeek("Various Suits")
menu5_pants:
putTextnoSeek("Pants")
menu5_socks:
putTextnoSeek("Socks")
menu5_shoes:
putTextnoSeek("Shoes")
menu5_gloves:
putTextnoSeek("Gloves")
menu5_option:
putTextnoSeek("Option")
menu5_ratio:
putTextnoSeek("H/B Ratio")
menu5_shape:
putTextnoSeek("Body Shape")
menu5_18:
putTextnoSeek("1:8")
menu5_175:
putTextnoSeek("1:7.5")
menu5_165:
putTextnoSeek("1:6.5")
menu5_155:
putTextnoSeek("1:5.5")
menu5_15:
putTextnoSeek("1:5")
menu5_standard:
putTextnoSeek("Standard")
menu5_14:
putTextnoSeek("1:4")
menu5_135:
putTextnoSeek("1:3.5")
menu5_13:
putTextnoSeek("1:3")
menu5_125:
putTextnoSeek("1:2.5")
menu5_12:
putTextnoSeek("1:2")
menu5_large:
putTextnoSeek("Large")
menu5_slim:
putTextnoSeek("Slim")
menu5_muscle:
putTextnoSeek("Muscle")
menu5_manga:
putTextnoSeek("Manga")
menu5_glamor:
putTextnoSeek("Glamor")
menu5_pera:
//putTextnoSeek("Pera")
menu5_ok:
putTextnoSeek("OK")
menu5_back:
putTextnoSeek("Back")
menu5_noseposition:
putTextnoSeek("Nose Position")
menu5_skincolor:
putTextnoSeek("Skin Color")

menu6_dance:
putTextnoSeek("Dance")
menu6_sports:
putTextnoSeek("Sports")
menu6_life:
putTextnoSeek("Life")
menu6_various:
putTextnoSeek("Various")

menu6_hideicon:
//putTextnoSeek("Hide Icon") //???
menu6_backnormal:
putTextnoSeek("Back to Normal State") //???
menu6_defaultdata:
//putTextnoSeek("Set Default Data") //???
menu6_motion:
putTextnoSeek("Motion") //???

menu7_bg:
putTextnoSeek("Background")
menu7_light:
putTextnoSeek("Light")
menu7_camera:
putTextnoSeek("Camera")
menu7_graffiti1:
putTextnoSeek("Graffiti")
menu7_graffiti2:
putTextnoSeek("Graffiti 2")
menu7_freecamera:
putTextnoSeek("Free Camera")
menu7_picturecamera:
putTextnoSeek("Picture Camera")
menu7_upperbodycamera:
putTextnoSeek("Upperbody Camera")
menu7_fullbodycamera:
putTextnoSeek("Fullbody Camera")
menu7_set:
putTextnoSeek("Set")
menu7_cancel:
putTextnoSeek("Cancel")
menu7_normalface:
putTextnoSeek("Normal")
menu7_laughface:
putTextnoSeek("Laugh")
menu7_angryface:
putTextnoSeek("Angry")
menu7_sadface:
putTextnoSeek("Sad")
menu7_smileface:
putTextnoSeek("Smile")
menu7_standard:
//putTextnoSeek("Standard")
menu7_direction:
putTextnoSeek("Direction")
menu7_draw:
putTextnoSeek("Draw")
menu7_slow:
putTextnoSeek("Slow")
menu7_medium:
putTextnoSeek("Medium")
menu7_fast:
putTextnoSeek("Fast")
menu7_nohelp:
putTextnoSeek("Without Help")
menu7_withhelp:
putTextnoSeek("With Help")

menu8_selecttype:
putTextnoSeek("Select Type")
menu8_selectheight:
putTextnoSeek("Select Height")
menu8_selectsize:
putTextnoSeek("Select Size") //???
menu8_malevoice:
putTextnoSeek("Male Voice")
menu8_femalevoice:
putTextnoSeek("Female Voice")
menu8_plus3:
putTextnoSeek("+3")
menu8_plus2:
putTextnoSeek("+2")
menu8_plus1:
putTextnoSeek("+1")
menu8_standard1:
//putTextnoSeek("Standard")
menu8_minus1:
putTextnoSeek("-1")
menu8_minus2:
putTextnoSeek("-2")
menu8_minus3:
putTextnoSeek("-3")
menu8_plus3_2:
//putTextnoSeek("+3")
menu8_plus2_2:
//putTextnoSeek("+2")
menu8_plus1_2:
//putTextnoSeek("+1")
menu8_standard2:
//putTextnoSeek("Standard")
menu8_minus1_2:
//putTextnoSeek("-1")
menu8_minus2_2:
//putTextnoSeek("-2")
menu8_minus3_2:
//putTextnoSeek("-3")
menu8_listenlaugh:
putTextnoSeek("Listen (Laugh Face)")
menu8_listenangry:
putTextnoSeek("Listen (Angry Face)")
menu8_listensad:
putTextnoSeek("Listen (Sad Face)")
menu8_listenfree:
putTextnoSeek("Listen (Smile Face)")

//Change pointers

//Talent Menu & Face
seek(0x20C564)
dw (menu1_back)
seek(origin() + 0x24)
dw (menu1_saveload)
seek(origin() + 0x24)
dw (menu1_selecttype)
seek(origin() + 0x24)
dw (menu1_hair)
seek(origin() + 0x24)
dw (menu1_faceskin)
seek(origin() + 0x24)
dw (menu1_voice)
seek(origin() + 0x24)
dw (menu1_body)
seek(origin() + 0x24)
dw (menu1_info)
seek(origin() + 0x24)
dw (menu1_music1)
seek(origin() + 0x24)
dw (menu1_music2)
seek(origin() + 0x24)
dw (menu1_music3)
seek(origin() + 0x24)
dw (menu1_showtime)
seek(origin() + 0x24)
dw (menu1_mike)
seek(origin() + 0x24)
dw (menu1_showtimeedit)
seek(origin() + 0x24)
dw (menu1_choosepose)
seek(origin() + 0x24)
dw (menu1_mousespeed)
seek(origin() + 0x24)
dw (menu3_back)
seek(origin() + 0x24)
dw (menu3_savequit)
seek(origin() + 0x24)
dw (menu3_back)
seek(origin() + 0x24)
dw (menu3_back)
seek(origin() + 0x24)
dw (menu3_back)
seek(origin() + 0x24)
dw (menu3_back)
seek(origin() + 0x24)
dw (menu3_pagefeed)
seek(origin() + 0x24)
dw (menu3_pagefeed)
seek(origin() + 0x24)
dw (menu3_pagefeed)
seek(origin() + 0x24)
dw (menu3_pagefeed)
seek(origin() + 0x24)
dw (menu3_pagefeed)
seek(origin() + 0x24)
dw (menu2_current)
seek(origin() + 0x24)
dw (menu2_choosetalent)
seek(origin() + 0x24)
dw (menu2_choosebody)
seek(origin() + 0x24)
dw (menu2_cloth)
seek(origin() + 0x24)
dw (menu3_makeface)
seek(origin() + 0x24)
dw (menu3_capturecart)
seek(origin() + 0x24)
dw (menu3_gbcamera)
seek(origin() + 0x24)
dw (menu3_load2ddrawing)
seek(origin() + 0x24)
dw (menu3_makeup)
seek(origin() + 0x24)
dw (menu3_expressions)
seek(origin() + 0x24)
dw (menu3_facealbum)

//Pattern Menu
seek(origin() + 0x74)
dw (menu3_undo)
seek(origin() + 0x24)
dw (menu3_makepattern)
seek(origin() + 0x24)
dw (menu3_capturecart)
seek(origin() + 0x24)
dw (menu3_gbcamera)
seek(origin() + 0x24)
dw (menu3_load2ddrawing)

//GameBoy Camera Menu
seek(origin() + 0x4C)
dw (menu5_back)
seek(origin() + 0x24)
dw (menu5_ok)
seek(origin() + 0x24)
dw (menu5_skincolor)
seek(origin() + 0x24)
dw (menu5_noseposition)

//Voice Menu
seek(origin() + 0x24)
dw (menu5_back)
seek(origin() + 0x24)
dw (menu8_selecttype)
seek(origin() + 0x24)
dw (menu8_selectheight)
seek(origin() + 0x24)
dw (menu8_listenlaugh)
seek(origin() + 0x24)
dw (menu8_listenangry)
seek(origin() + 0x24)
dw (menu8_listensad)
seek(origin() + 0x24)
dw (menu8_listenfree)

//Show Time Menu
seek(origin() + 0x24)
dw (menu3_random)
seek(origin() + 0x24)
dw (menu6_dance)
seek(origin() + 0x24)
dw (menu6_sports)
seek(origin() + 0x24)
dw (menu6_life)
seek(origin() + 0x24)
dw (menu6_various)

//???
seek(origin() + 0x24)
dw (menu6_hideicon)
seek(origin() + 0x4C)
dw (menu6_backnormal)
seek(origin() + 0x24)
dw (menu6_defaultdata)

//Common Editor Menu
seek(0x20D248)
dw (menu4_outline)
seek(origin() + 0x24)
dw (menu4_hair)
seek(origin() + 0x24)
dw (menu4_nose)
seek(origin() + 0x24)
dw (menu4_ears)
seek(origin() + 0x24)
dw (menu4_beard)
seek(origin() + 0x24)
dw (menu4_helmet)
seek(origin() + 0x24)
dw (menu4_hat)
seek(origin() + 0x24)
dw (menu4_glasses)
seek(origin() + 0x24)
dw (menu4_access1)
seek(origin() + 0x24)
dw (menu4_access2)
seek(origin() + 0x24)
dw (menu3_changeposition)
seek(origin() + 0x24)
dw (menu3_changerotation)
seek(origin() + 0x24)
dw (menu3_changesize)
seek(origin() + 0x24)
dw (menu3_clear)
seek(origin() + 0x24)
dw (menu3_undo)
seek(origin() + 0x24)
dw (menu3_color1)
seek(origin() + 0x24)
dw (menu3_pattern1)
seek(origin() + 0x24)
dw (menu3_color2)
seek(origin() + 0x24)
dw (menu3_pattern2)
seek(origin() + 0x24)
dw (menu3_mark)
seek(origin() + 0x24)
dw (menu3_changetexture)
seek(origin() + 0x24)
dw (menu3_coloralbum)
seek(origin() + 0x24)
dw (menu3_patternalbum)

//???
seek(origin() + 0x24)
dw (menu6_motion)
seek(origin() + 0x24)
dw (menu7_bg)
seek(origin() + 0x24)
dw (menu7_light)
seek(origin() + 0x24)
dw (menu7_camera)
seek(origin() + 0x24)
dw (menu7_graffiti1)
seek(origin() + 0x24)
dw (menu7_graffiti2)

//Axis
seek(0x20D838)
dw (menu3_everyaxis1)
seek(origin() + 0x24)
dw (menu3_redaxis1)
seek(origin() + 0x24)
dw (menu3_greenaxis1)
seek(origin() + 0x24)
dw (menu3_blueaxis1)
seek(origin() + 0x24)
dw (menu3_aroundredaxis)
seek(origin() + 0x24)
dw (menu3_aroundgreenaxis)
seek(origin() + 0x24)
dw (menu3_aroundblueaxis)
seek(origin() + 0x24)
dw (menu3_everyaxis1)
//dw (menu3_everyaxis2)
seek(origin() + 0x24)
dw (menu3_redaxis1)
//dw (menu3_redaxis2)
seek(origin() + 0x24)
dw (menu3_greenaxis1)
//dw (menu3_greenaxis2)
seek(origin() + 0x24)
dw (menu3_blueaxis1)
//dw (menu3_blueaxis2)
seek(origin() + 0x24)
dw (menu3_reset)
seek(origin() + 0x24)
dw (menu3_reset)
seek(origin() + 0x24)
dw (menu3_aroundredaxis)
seek(origin() + 0x24)
dw (menu3_aroundgreenaxis)
seek(origin() + 0x24)
dw (menu3_aroundblueaxis)


//Voice Menu
seek(0x20E210)
dw (menu8_malevoice)
seek(origin() + 0x24)
dw (menu8_femalevoice)
seek(origin() + 0x24)
dw (menu8_plus3)
seek(origin() + 0x24)
dw (menu8_plus2)
seek(origin() + 0x24)
dw (menu8_plus1)
seek(origin() + 0x24)
dw (menu5_standard)
seek(origin() + 0x24)
dw (menu8_minus1)
seek(origin() + 0x24)
dw (menu8_minus2)
seek(origin() + 0x24)
dw (menu8_minus3)
seek(origin() + 0x24)
dw (menu8_plus3)
//dw (menu8_plus3_2)
seek(origin() + 0x24)
dw (menu8_plus2)
//dw (menu8_plus2_2)
seek(origin() + 0x24)
dw (menu8_plus1)
//dw (menu8_plus1_2)
seek(origin() + 0x24)
dw (menu5_standard)
//dw (menu8_standard2)
seek(origin() + 0x24)
dw (menu8_minus1)
//dw (menu8_minus1_2)
seek(origin() + 0x24)
dw (menu8_minus2)
//dw (menu8_minus2_2)
seek(origin() + 0x24)
dw (menu8_minus3)
//dw (menu8_minus3_2)

//???
seek(0x20E6C0)
dw (menu7_set)
seek(origin() + 0x24)
dw (menu7_cancel)
seek(origin() + 0x24)
dw (menu3_reset)
seek(origin() + 0x24)
dw (menu7_freecamera)
seek(origin() + 0x24)
dw (menu7_picturecamera)
seek(origin() + 0x24)
dw (menu7_upperbodycamera)
seek(origin() + 0x24)
dw (menu7_fullbodycamera)
seek(origin() + 0x24)
dw (menu7_normalface)
seek(origin() + 0x24)
dw (menu7_laughface)
seek(origin() + 0x24)
dw (menu7_angryface)
seek(origin() + 0x24)
dw (menu7_sadface)
seek(origin() + 0x24)
dw (menu7_smileface)
seek(origin() + 0x24)
dw (menu5_standard)
seek(origin() + 0x24)
dw (menu7_direction)
seek(origin() + 0x24)
dw (menu7_draw)

//???
seek(0x20EBC0)
dw (menu7_slow)
seek(origin() + 0x24)
dw (menu7_medium)
seek(origin() + 0x24)
dw (menu7_fast)
seek(origin() + 0x24)
dw (menu7_nohelp)
seek(origin() + 0x24)
dw (menu7_withhelp)

//Clothing Edit Menu
seek(0x20F05C)
dw (menu5_clothing)
seek(origin() + 0x24)
dw (menu5_body)
seek(origin() + 0x30)
dw (menu5_shirts)
seek(origin() + 0x24)
dw (menu5_tights)
seek(origin() + 0x24)
dw (menu5_top)
seek(origin() + 0x24)
dw (menu5_pants)
seek(origin() + 0x24)
dw (menu5_socks)
seek(origin() + 0x24)
dw (menu5_shoes)
seek(origin() + 0x24)
dw (menu5_gloves)
seek(origin() + 0x24)
dw (menu5_option)
seek(origin() + 0x24)
dw (menu5_various)

//Body Shape Edit Menu
seek(0x20F520)
dw (menu5_ratio)
seek(origin() + 0x24)
dw (menu5_shape)
seek(origin() + 0x48)
dw (menu5_18)
seek(origin() + 0x24)
dw (menu5_175)
seek(origin() + 0x24)
dw (menu5_165)
seek(origin() + 0x24)
dw (menu5_155)
seek(origin() + 0x24)
dw (menu5_15)
seek(origin() + 0x24)
dw (menu5_standard)
seek(origin() + 0x24)
dw (menu5_14)
seek(origin() + 0x24)
dw (menu5_135)
seek(origin() + 0x24)
dw (menu5_13)
seek(origin() + 0x24)
dw (menu5_125)
seek(origin() + 0x24)
dw (menu5_12)

seek(0x20F788)
dw (menu5_large)
seek(origin() + 0x24)
dw (menu5_slim)
seek(origin() + 0x24)
dw (menu5_muscle)
seek(origin() + 0x24)
dw (menu5_manga)
seek(origin() + 0x24)
dw (menu5_glamor)
seek(origin() + 0x24)
dw (menu5_pera)
seek(origin() + 0x24)
dw (menu3_reset)

//Part 2
seek(0x212BC0)
base 0x803C1390
menu9_malebodytype:
//dh 0x011B
//putTextnoSeek(" Body Type")
menu9_femalebodytype:
//dh 0x011C
//putTextnoSeek(" Body Type")
menu9_otherbodytype:
//putTextnoSeek("? Body Type")
menu9_remove:
//putTextnoSeek("Remove")
menu9_selectedcolor:
putTextnoSeek("Selected Color")
menu9_createdcolor:
putTextnoSeek("Created Color")
menu9_firstcolor:
putTextnoSeek("First Color")
menu9_willbeselected:
putTextnoSeek("Will be selected")
menu9_willbecreated:
putTextnoSeek("Will be created")
menu9_willbefirst:
putTextnoSeek("Will be first")
menu9_musicoff:
putTextnoSeek("Music OFF")
menu9_rotationB:
putTextnoSeek("Rotate (Button B)")
menu9_rotationzoomB:
putTextnoSeek("Rotate / Zoom (Button B)")

menu10_karate:
putTextnoSeek("Karate")
menu10_conductor:
putTextnoSeek("Conductor")
menu10_mosquito:
putTextnoSeek("Mosquito")
menu10_specialtraining:
putTextnoSeek("Special Training")
menu10_bodybuilder:
putTextnoSeek("Bodybuilder")
menu10_train:
putTextnoSeek("Train")
menu10_balancebeam:
putTextnoSeek("Balance Beam")
menu10_sexypose:
putTextnoSeek("Sexy Pose")
menu10_limbodance:
putTextnoSeek("Limbo Dance")
menu10_disco:
putTextnoSeek("Disco")
menu10_supermodel:
putTextnoSeek("Super Model")
menu10_toilet:
putTextnoSeek("Toilet")
menu10_raindance:
putTextnoSeek("Rain Dance")
menu10_happystep:
putTextnoSeek("Happy Step")
menu10_typhoon:
putTextnoSeek("Typhoon")
menu10_jump:
putText4noSeek($0002, "I will jump!", $0002)
menu10_cleanup:
putTextnoSeek("Clean Up")
menu10_classic:
putTextnoSeek("Classic")
menu10_samurai:
putTextnoSeek("Samurai")
menu10_nonstoplaughs:
putTextnoSeek("Nonstop Laughs")
menu10_pitcher:
putTextnoSeek("Pitcher")
menu10_leakage:
putTextnoSeek("Leakage")
menu10_training:
putTextnoSeek("Training")
menu10_telephone:
putTextnoSeek("Telephone")
menu10_boxing:
putTextnoSeek("Boxing")
menu10_surprise:
putTextnoSeek("Surprise!")
menu10_monster:
putTextnoSeek("Monster")
menu10_flamenco:
putTextnoSeek("Flamenco")
menu10_basicpose:
putTextnoSeek("Basic Pose") //Unused?

menu11_edit1:
putTextnoSeek("Edit 1")
menu11_edit2:
putTextnoSeek("Edit 2")
menu11_edit3:
putTextnoSeek("Edit 3")
menu11_edit4:
putTextnoSeek("Edit 4")
menu11_stop:
putTextnoSeek("Stop")
menu11_play:
putTextnoSeek("Play")


faceoutline_normal:
common_normal:
putTextnoSeek("Normal")
faceoutline_slim:
common_slim:
putTextnoSeek("Slim")
faceoutline_smallchin:
putTextnoSeek("Small Chin")
faceoutline_round:
putTextnoSeek("Round")
faceoutline_heartshape:
putTextnoSeek("Heart-shaped")
faceoutline_long:
putTextnoSeek("Long")
faceoutline_ellipse:
putTextnoSeek("Ellipse")
faceoutline_egg:
putTextnoSeek("Egg-shaped")
faceoutline_rectangle:
putTextnoSeek("Rectangle")
faceoutline_pentagon:
putTextnoSeek("Pentagon")
faceoutline_base:
putTextnoSeek("Base")
faceoutline_square:
putTextnoSeek("Square")
faceoutline_bigchin:
putTextnoSeek("Big Chin")
faceoutline_plump:
putTextnoSeek("Plump")
faceoutline_diamond:
putTextnoSeek("Diamond-shaped")
faceoutline_cheekbone:
putTextnoSeek("Cheekbone")
faceoutline_broadbean:
putTextnoSeek("Broad Bean")
faceoutline_pear:
putTextnoSeek("Pear")
faceoutline_chubby:
putTextnoSeek("Chubby")
faceoutline_stretched:
putTextnoSeek("Stretched")
faceoutline_homely:
putTextnoSeek("Homely")

hair_none:
common_none:
putTextnoSeek("None")
hair_close:
putTextnoSeek("Close cut")
hair_sports:
putTextnoSeek("Sports")
hair_73:
putTextnoSeek("7:3")
hair_boy:
putTextnoSeek("Boy")
hair_shortcut:
putTextnoSeek("Short cut")
hair_bowcut:
putTextnoSeek("Bow cut")
hair_normal:
//putTextnoSeek("Normal")
hair_sidepart:
putTextnoSeek("Side part")
hair_shorthair:
putTextnoSeek("Short hair")
hair_roughshort:
putTextnoSeek("Rough short")
hair_girl:
putTextnoSeek("Girl")
hair_pin:
putTextnoSeek("Pin")
hair_semilong:
putTextnoSeek("Semi-long")
hair_bobbed:
putTextnoSeek("Bobbed")
hair_long:
//putTextnoSeek("Long")
hair_perm:
putTextnoSeek("Perm")
hair_semilongsidepart:
putTextnoSeek("Semi-long side part")
hair_roughlong:
putTextnoSeek("Rough long")
hair_longperm:
putTextnoSeek("Long Perm")
hair_longhair:
putTextnoSeek("Long hair")
hair_pigtailsshort:
putTextnoSeek("Short Pigtails")
hair_pigtailslong:
putTextnoSeek("Long Pigtails")
hair_pigtailsexplosive:
putTextnoSeek("Explosive Pigtails")
hair_bun:
putTextnoSeek("Bun")
hair_ponytail:
putTextnoSeek("Ponytail")
hair_tied:
putTextnoSeek("Tied")
hair_onion:
putTextnoSeek("Onion")
hair_tiedabove:
putTextnoSeek("Tied above")
hair_chonmage:
putTextnoSeek("Chonmage")
hair_feudallord:
putTextnoSeek("Feudal Lord")
hair_allback:
putTextnoSeek("All back")
hair_oldwoman:
putTextnoSeek("Old woman")
hair_traditional:
putTextnoSeek("Traditional")
hair_buddha:
putTextnoSeek("Buddha")
hair_oldman:
putTextnoSeek("Old man")
hair_barcode:
putTextnoSeek("Barcode")
hair_doctor:
putTextnoSeek("Doctor")
hair_shortbob:
putTextnoSeek("Short bob")
hair_bobcat:
putTextnoSeek("Bobcat")
hair_morose:
putTextnoSeek("Morose")
hair_honey:
putTextnoSeek("Honey")
hair_hero:
putTextnoSeek("Hero")
hair_commando:
putTextnoSeek("Commando")
hair_mohawk:
putTextnoSeek("Mohawk")
hair_hairband:
putTextnoSeek("Hairband")
hair_regent:
putTextnoSeek("Regent")
hair_afro:
putTextnoSeek("Afro")
hair_clown:
putTextnoSeek("Clown")

hat_none:
//putTextnoSeek("None")
hat_baseballcap:
putTextnoSeek("Baseball Cap")
hat_newsboycap:
putTextnoSeek("Newsboy Cap")
hat_tulip:
putTextnoSeek("Tulip")
hat_beret:
putTextnoSeek("Beret")
hat_militaryboy:
putTextnoSeek("Military Boy")
hat_knitcap:
putTextnoSeek("Knit Cap")
hat_strawhat:
putTextnoSeek("Straw Hat")
hat_flowerhat:
putTextnoSeek("Flower Hat")
hat_cowboy:
putTextnoSeek("Cowboy")
hat_tyrolean:
putTextnoSeek("Tyrolean")
hat_sombrero:
putTextnoSeek("Sombrero")
hat_bandana:
putTextnoSeek("Bandana")
hat_swimcap:
putTextnoSeek("Swim cap")
hat_tophat:
putTextnoSeek("Top hat")
hat_academiccap:
putTextnoSeek("Academic cap")
hat_gicap:
putTextnoSeek("GI cap")
hat_sailor:
putTextnoSeek("Sailor")
hat_uniformcap:
putTextnoSeek("Uniform Cap")
hat_pith:
putTextnoSeek("Pith Helmet")
hat_helmet:
putTextnoSeek("Helmet")
hat_china:
putTextnoSeek("China hat")
hat_party:
putTextnoSeek("Party hat")
hat_santa:
putTextnoSeek("Santa Claus")
hat_turban:
putTextnoSeek("Turban")
hat_viking:
putTextnoSeek("Viking")
hat_pirate:
putTextnoSeek("Pirate hat")
hat_mariocap:
putTextnoSeek("Mario cap")

helmet_none:
//putTextnoSeek("None")
helmet_rabbit:
putTextnoSeek("Rabbit")
helmet_rooster:
putTextnoSeek("Rooster")
helmet_mummy:
putTextnoSeek("Mummy")
helmet_golem:
putTextnoSeek("Golem")
helmet_skeleton:
putTextnoSeek("Skeleton")
helmet_monster:
//putTextnoSeek("Monster")

helmet_robot:
putTextnoSeek("Robot")
helmet_mechman:
putTextnoSeek("Mech Man")
helmet_mechlady:
putTextnoSeek("Mech Lady")
helmet_hero:
//putTextnoSeek("Hero")
helmet_rangerman:
putTextnoSeek("Ranger Man")
helmet_rangerwoman:
putTextnoSeek("Ranger Woman")
helmet_woodman:
putTextnoSeek("Wood Man")

helmet_discboy:
putTextnoSeek("Disc Boy")
helmet_fairy:
putTextnoSeek("Fairy")
helmet_flyman:
putTextnoSeek("Fly Man")
helmet_flywoman:
putTextnoSeek("Fly Woman")
helmet_spacehelmet:
putTextnoSeek("Space Helmet")
helmet_kabuto:
putTextnoSeek("Kabuto")
helmet_knight:
putTextnoSeek("Knight")

nose_regular:
putTextnoSeek("Regular")
nose_tall:
putTextnoSeek("Tall")
nose_little:
putTextnoSeek("Little")
nose_big:
putTextnoSeek("Big")
nose_hook:
putTextnoSeek("Hook")
nose_rising:
putTextnoSeek("Rising")
nose_dumpling:
putTextnoSeek("Dumpling")
nose_mario:
putTextnoSeek("Mario")
nose_link:
putTextnoSeek("Link")
nose_witch:
putTextnoSeek("Witch")
nose_long:
//putTextnoSeek("Long")
nose_horn:
putTextnoSeek("Horn")
nose_gorilla:
putTextnoSeek("Gorilla")
nose_pig:
putTextnoSeek("Pig")

ears_regular:
//putTextnoSeek("Regular")
ears_round:
putTextnoSeek("Round")
ears_angular:
putTextnoSeek("Angular")
ears_plump:
putTextnoSeek("Plump")
ears_sharp:
putTextnoSeek("Sharp")
ears_sagging:
putTextnoSeek("Sagging")
ears_alien:
putTextnoSeek("Alien")
ears_circle:
putTextnoSeek("Circle")
ears_mario:
putTextnoSeek("Mario")
ears_link:
putTextnoSeek("Link")
ears_horn:
putTextnoSeek("Horn")
ears_robot:
putTextnoSeek("Robot")
ears_devil:
putTextnoSeek("Devil")
ears_donut:
putTextnoSeek("Doughnut")

beard_none:
//putTextnoSeek("None")
beard_small:
putTextnoSeek("Small")
beard_oldman:
putTextnoSeek("Old man")
beard_great:
putTextnoSeek("Great")
beard_spear:
putTextnoSeek("Spear")
beard_catfish:
putTextnoSeek("Catfish")
beard_hermit:
putTextnoSeek("Hermit")
beard_jaw:
putTextnoSeek("Jaw")
beard_beard:
putTextnoSeek("Beard")
beard_wario:
putTextnoSeek("Wario")
beard_jagged:
putTextnoSeek("Jagged sideburns")
beard_prince:
putTextnoSeek("Prince")
beard_trident:
putTextnoSeek("Trident")
beard_tulip:
putTextnoSeek("Tulip")

glasses_none:
//putTextnoSeek("None")
glasses_round:
putTextnoSeek("Round")
glasses_roundrim:
putTextnoSeek("Round Rim")
glasses_angular:
putTextnoSeek("Angular")
glasses_angularrim:
putTextnoSeek("Angular Rim")
glasses_blackrim:
putTextnoSeek("Black Rim")
glasses_turtle:
putTextnoSeek("Turtle")
glasses_zamas:
putTextnoSeek("Zamas")
glasses_double:
putTextnoSeek("Double")
glasses_sun:
putTextnoSeek("Sunglasses")
glasses_sharpsun:
putTextnoSeek("Sharp Sunglasses")
glasses_film:
putTextnoSeek("Film")
glasses_partymask:
putTextnoSeek("Party Mask")
glasses_eyemask:
putTextnoSeek("Eye Mask")
glasses_flower:
putTextnoSeek("Flower")
glasses_spin:
putTextnoSeek("Spin")
glasses_heart:
putTextnoSeek("Heart")
glasses_eyecandy:
putTextnoSeek("Eye Candy") //Pierdeer
glasses_3d:
putTextnoSeek("3D")
glasses_monocle:
putTextnoSeek("Monocle")
glasses_broken:
putTextnoSeek("Broken")
glasses_eyepatch:
putTextnoSeek("Eyepatch")
glasses_pirate:
putTextnoSeek("Pirate")
glasses_swim:
putTextnoSeek("Swim")
glasses_moto:
putTextnoSeek("Motorcycle")
glasses_ski:
putTextnoSeek("Ski")
glasses_diver:
putTextnoSeek("Diver")
glasses_sniper:
putTextnoSeek("Sniper")

earrings_none:
//putTextnoSeek("None")
earrings_moon:
putTextnoSeek("Moon")
earrings_heart:
putTextnoSeek("Heart")
earrings_star:
putTextnoSeek("Star")
earrings_sapphire:
putTextnoSeek("Sapphire")
earrings_emerald:
putTextnoSeek("Emerald")
earrings_mixed:
putTextnoSeek("Mixed")
earrings_flowers:
putTextnoSeek("Flowers")
earrings_ribbons:
putTextnoSeek("Ribbons")
earrings_buns:
putTextnoSeek("Buns")
earrings_wings:
putTextnoSeek("Wings")
earrings_bats:
putTextnoSeek("Bats")
earrings_antennae:
putTextnoSeek("Antennae")
earrings_fins:
putTextnoSeek("Fins")
earrings_cat:
putTextnoSeek("Cat Ears")
earrings_bear:
putTextnoSeek("Bear Ears")
earrings_bull:
putTextnoSeek("Bull Horns")
earrings_deer:
putTextnoSeek("Deer Horns")
earrings_devil:
putTextnoSeek("Devil Horns")
earrings_alien:
putTextnoSeek("Alien Horns")
earrings_mech:
putTextnoSeek("Mech Horns")

access_none:
//putTextnoSeek("None")
access_mole:
putTextnoSeek("Mole")
access_beak:
putTextnoSeek("Beak")
access_dog:
putTextnoSeek("Dog")
access_clothespin:
putTextnoSeek("Clothespin")
access_bow:
putTextnoSeek("Bow")
access_flower:
putTextnoSeek("Flower")
access_tiara:
putTextnoSeek("Tiara")
access_crown:
putTextnoSeek("Crown")
access_headphone:
putTextnoSeek("Headphone")
access_shampoohat:
putTextnoSeek("Shampoo Hat")
access_ring:
putTextnoSeek("Ring")
access_herohead:
putTextnoSeek("Hero's Head")
access_antenna:
putTextnoSeek("Antenna")
access_dragonfly:
putTextnoSeek("Dragonfly")
access_stagbeetle:
putTextnoSeek("Stag Beetle")
access_butterfly:
putTextnoSeek("Butterfly")
access_squirrel:
putTextnoSeek("Squirrel")
access_pacifier:
putTextnoSeek("Pacifier")
access_mask:
putTextnoSeek("Mask")
access_protection:
putTextnoSeek("Protection")

undershirt_male_none:
//putTextnoSeek("None") //Unused
undershirt_male_briefs:
putTextnoSeek("Briefs")
undershirt_male_running:
putTextnoSeek("Running Shirt")
undershirt_male_sleeveless:
putTextnoSeek("Sleeveless")
undershirt_male_small:
putTextnoSeek("Small T-shirt")
undershirt_male_father:
putTextnoSeek("Father's Shirt")
undershirt_male_long:
putTextnoSeek("Long sleeves")

underpants_male_none:
//putTextnoSeek("None")
underpants_male_pants:
putTextnoSeek("Pants")
underpants_male_fitness:
putTextnoSeek("Fitness")
underpants_male_wrestler:
putTextnoSeek("Wrestler")
underpants_male_festival:
putTextnoSeek("Festival")
underpants_male_tracksuit:
putTextnoSeek("Tracksuit")
underpants_male_bodysuit:
putTextnoSeek("Bodysuit")

socks_male_none:
//putTextnoSeek("None")
socks_male_tabi:
putTextnoSeek("Tabi")
socks_male_regular:
//putTextnoSeek("Regular")
socks_male_long:
//putTextnoSeek("Long")
socks_male_sports:
//putTextnoSeek("Sports")
socks_male_baseball:
putTextnoSeek("Baseball")
socks_male_taping:
putTextnoSeek("Taping")

pants_male_none:
//putTextnoSeek("None")
pants_male_shorts:
putTextnoSeek("Shorts")
pants_male_running:
putTextnoSeek("Running")
pants_male_boxing:
putTextnoSeek("Boxing")
pants_male_safari:
putTextnoSeek("Safari")
pants_male_jeans:
putTextnoSeek("Jeans")
pants_male_chino:
putTextnoSeek("Chino")
pants_male_trousers:
putTextnoSeek("Trousers")
pants_male_slacks:
putTextnoSeek("Slacks")
pants_male_loose:
putTextnoSeek("Loose")
pants_male_bellyband:
putTextnoSeek("Belly Band")
pants_male_overalls:
putTextnoSeek("Overalls")
pants_male_hakama:
putTextnoSeek("Hakama")
pants_male_jersey:
putTextnoSeek("Jersey")
pants_male_skin:
putTextnoSeek("Skin")
pants_male_aladdin:
putTextnoSeek("Aladdin")
pants_male_prince:
putTextnoSeek("Prince")
pants_male_uniform:
putTextnoSeek("Uniform")
pants_male_karate:
putTextnoSeek("Karate")
pants_male_torn:
putTextnoSeek("Torn")
pants_male_protector:
putTextnoSeek("Protector")

shirt_male_none:
//putTextnoSeek("None")
shirt_male_tshirt:
putTextnoSeek("T-shirt")
shirt_male_polo:
putTextnoSeek("Polo Shirt")
shirt_male_trainer:
putTextnoSeek("Trainer")
shirt_male_shirt:
putTextnoSeek("Shirt")
shirt_male_vest:
putTextnoSeek("Vest")
shirt_male_jacket:
putTextnoSeek("Jacket")
shirt_male_flashy:
putTextnoSeek("Flashy Jacket")
shirt_male_suit:
putTextnoSeek("Suit")
shirt_male_leather:
putTextnoSeek("Leather Jacket")
shirt_male_down:
putTextnoSeek("Down Jacket")
shirt_male_sweater:
putTextnoSeek("Sweater")
shirt_male_businessshirt:
putTextnoSeek("Business Shirt")
shirt_male_school:
putTextnoSeek("School")
shirt_male_robe:
putTextnoSeek("Robe")
shirt_male_latin:
putTextnoSeek("Latin")
shirt_male_prince:
putTextnoSeek("Prince")
shirt_male_uniform:
putTextnoSeek("Uniform")
shirt_male_karate:
putTextnoSeek("Karate")
shirt_male_torn:
putTextnoSeek("Torn")
shirt_male_protector:
//putTextnoSeek("Protector")

option_none:
//putTextnoSeek("None")
option_angel:
putTextnoSeek("Angel Wings")
option_devil:
putTextnoSeek("Devil Wings")
option_bee:
putTextnoSeek("Bee Wings")
option_butterfly:
putTextnoSeek("Butterfly Wings")
option_robot:
putTextnoSeek("Robot Wings")
option_handmade:
putTextnoSeek("Handmade Wings")
option_plush:
putTextnoSeek("Plush Doll")
option_schoolbag:
putTextnoSeek("School Bag")
option_basket:
putTextnoSeek("Bamboo Basket")
option_gas:
putTextnoSeek("Gas Cylinder")
option_swordshield:
putTextnoSeek("Sword & Shield")
option_shell:
putTextnoSeek("Turtle Shell")
option_thundergod:
putTextnoSeek("Thunder God")

shoes_male_none:
//putTextnoSeek("None")
shoes_male_sneakers:
putTextnoSeek("Sneakers")
shoes_male_sports:
//putTextnoSeek("Sports")
shoes_male_dress:
putTextnoSeek("Dress Shoes")
shoes_male_loafers:
putTextnoSeek("Loafers")
shoes_male_shortboots:
putTextnoSeek("Short Boots")
shoes_male_strapboots:
putTextnoSeek("Strap Boots")
shoes_male_longboots:
putTextnoSeek("Long Boots")
shoes_male_mario:
putTextnoSeek("Mario Shoes")
shoes_male_link:
putTextnoSeek("Link Shoes")
shoes_male_hiking:
putTextnoSeek("Hiking Boots")
shoes_male_geta:
putTextnoSeek("Geta")
shoes_male_tabi:
putTextnoSeek("Tabi Boots")
shoes_male_flipflops:
putTextnoSeek("Flip-flops")
shoes_male_enamel:
putTextnoSeek("Enamel Shoes")
shoes_male_rubber:
putTextnoSeek("Rubber Boots")
shoes_male_skates:
putTextnoSeek("Skates")
shoes_male_kungfu:
putTextnoSeek("Kung Fu")
shoes_male_flipper:
putTextnoSeek("Flippers")
shoes_male_sharp:
//putTextnoSeek("Sharp")
shoes_male_animal:
putTextnoSeek("Animal")

gloves_male_none:
//putTextnoSeek("None")
gloves_male_mario:
putTextnoSeek("Mario")
gloves_male_cotton:
putTextnoSeek("Cotton")
gloves_male_boxing:
putTextnoSeek("Boxing")
gloves_male_sports:
//putTextnoSeek("Sports")
gloves_male_half:
putTextnoSeek("Half Mitt")
gloves_male_bandage:
putTextnoSeek("Bandage")
gloves_male_gauntlet:
putTextnoSeek("Gauntlet")
gloves_male_leather:
putTextnoSeek("Leather")
gloves_male_mitten:
putTextnoSeek("Mitten")
gloves_male_wrist:
putTextnoSeek("Wristband")
gloves_male_bracelet:
putTextnoSeek("Bracelet")
gloves_male_crab:
putTextnoSeek("Crab")
gloves_male_animal:
//putTextnoSeek("Animal")

undershirt_female_none:
//putTextnoSeek("None") //Unused
undershirt_female_bikini:
putTextnoSeek("Bikini")
undershirt_female_sports:
//putTextnoSeek("Sports")
undershirt_female_navel:
putTextnoSeek("Navel")
undershirt_female_highneck:
putTextnoSeek("High Neck")
undershirt_female_small:
//putTextnoSeek("Small T-shirt")
undershirt_female_long:
putTextnoSeek("Long sleeves")

underpants_female_none:
//putTextnoSeek("None")
underpants_female_fitness:
//putTextnoSeek("Fitness")
underpants_female_tights:
putTextnoSeek("Tights")
underpants_female_onepiece:
putTextnoSeek("One piece")
underpants_female_leotard:
putTextnoSeek("Leotard")
underpants_female_campaign:
putTextnoSeek("Campaign")
underpants_female_bodysuit:
//putTextnoSeek("Bodysuit")

socks_female_none:
//putTextnoSeek("None")
socks_female_tabi:
//putTextnoSeek("Tabi")
socks_female_folded:
putTextnoSeek("Folded")
socks_female_regular:
//putTextnoSeek("Regular")
socks_female_long:
//putTextnoSeek("Long")
socks_female_loose:
//putTextnoSeek("Loose")
socks_female_knee:
putTextnoSeek("Knee")

pants_female_none:
//putTextnoSeek("None")
pants_female_hotpants:
putTextnoSeek("Hotpants")
pants_female_pumpkin:
putTextnoSeek("Pumpkin")
pants_female_culottes:
putTextnoSeek("Culottes")
pants_female_knit:
putTextnoSeek("Knit")
pants_female_jeans:
//putTextnoSeek("Jeans")
pants_female_slim:
//putTextnoSeek("Slim")
pants_female_trousers:
//putTextnoSeek("Trousers")
pants_female_slacks:
//putTextnoSeek("Slacks")
pants_female_loose:
//putTextnoSeek("Loose")
pants_female_balloon:
putTextnoSeek("Balloon")
pants_female_nylon:
putTextnoSeek("Nylon")
pants_female_hakama:
//putTextnoSeek("Hakama")
pants_female_jumpsuit:
putTextnoSeek("Jumpsuit")
pants_female_miniskirt:
putTextnoSeek("Miniskirt")
pants_female_minipleats:
putTextnoSeek("Mini Pleats")
pants_female_child:
putTextnoSeek("Child")
pants_female_semi:
putTextnoSeek("Semi-tight")
pants_female_pleats:
putTextnoSeek("Pleats")
pants_female_idol:
putTextnoSeek("Idol")
pants_female_protector:
//putTextnoSeek("Protector")

shirt_female_none:
//putTextnoSeek("None")
shirt_female_tshirt:
//putTextnoSeek("T-shirt")
shirt_female_shortsleeved:
putTextnoSeek("Short-sleeved")
shirt_female_blouse:
putTextnoSeek("Blouse")
shirt_female_sailor:
//putTextnoSeek("Sailor")
shirt_female_businessshirt:
//putTextnoSeek("Business Shirt")
shirt_female_rough:
putTextnoSeek("Rough Jacket")
shirt_female_jacket:
//putTextnoSeek("Jacket")
shirt_female_suit:
//putTextnoSeek("Suit")
shirt_female_furcoat:
putTextnoSeek("Fur Coat")
shirt_female_down:
putTextnoSeek("Down Jacket")
shirt_female_sweater:
//putTextnoSeek("Sweater")
shirt_female_knit:
putTextnoSeek("Knit")
shirt_female_vest:
//putTextnoSeek("Vest")
shirt_female_kimono:
putTextnoSeek("Kimono")
shirt_female_onepiece:
//putTextnoSeek("One piece")
shirt_female_sexy:
putTextnoSeek("Sexy Dress")
shirt_female_formal:
putTextnoSeek("Formal Dress")
shirt_female_santa:
putTextnoSeek("Santa Coat")
shirt_female_sheer:
putTextnoSeek("Sheer Jacket")
shirt_female_protector:
//putTextnoSeek("Protector")

shoes_female_none:
//putTextnoSeek("None")
shoes_female_sneakers:
//putTextnoSeek("Sneakers")
shoes_female_sports:
//putTextnoSeek("Sports")
shoes_female_leather:
//putTextnoSeek("Leather")
shoes_female_loafers:
//putTextnoSeek("Loafers")
shoes_female_pumps:
putTextnoSeek("Pumps")
shoes_female_highheels:
putTextnoSeek("High Heels")
shoes_female_stringsandals:
putTextnoSeek("String Sandals")
shoes_female_shortboots:
//putTextnoSeek("Short Boots")
shoes_female_halfboots:
putTextnoSeek("Half Boots")
shoes_female_longboots:
//putTextnoSeek("Long Boots")
shoes_female_strapboots:
//putTextnoSeek("Strap Boots")
shoes_female_flipflops:
//putTextnoSeek("Flip-flops")
shoes_female_zori:
putTextnoSeek("Zori")
shoes_female_sandals:
putTextnoSeek("Sandals")
shoes_female_rubber:
//putTextnoSeek("Rubber Boots")
shoes_female_skates:
putTextnoSeek("Skates")
shoes_female_kungfu:
//putTextnoSeek("Kung Fu")
shoes_female_flipper:
//putTextnoSeek("Flippers")
shoes_female_sharp:
//putTextnoSeek("Sharp")
shoes_female_animal:
//putTextnoSeek("Animal")

gloves_female_none:
//putTextnoSeek("None")
gloves_female_leather:
//putTextnoSeek("Leather")
gloves_female_mitten:
//putTextnoSeek("Mitten")
gloves_female_shorty:
putTextnoSeek("Shorty")
gloves_female_armlong:
putTextnoSeek("Arm Long")
gloves_female_racelong:
putTextnoSeek("Race Arm Long")
gloves_female_race:
putTextnoSeek("Race")
gloves_female_half:
putTextnoSeek("Half Mitt")
gloves_female_gauntlet:
//putTextnoSeek("Gauntlet")
gloves_female_wrist:
//putTextnoSeek("Wristband")
gloves_female_armband:
putTextnoSeek("Arm Band")
gloves_female_bracelet:
//putTextnoSeek("Bracelet")
gloves_female_crab:
//putTextnoSeek("Crab")
gloves_female_animal:
//putTextnoSeek("Animal")

various_other_none:
//putTextnoSeek("None")
various_other_rabbit:
//putTextnoSeek("Rabbit")
various_other_rooster:
//putTextnoSeek("Rooster")
various_other_mummy:
//putTextnoSeek("Mummy")
various_other_golem:
//putTextnoSeek("Golem")
various_other_skeleton:
//putTextnoSeek("Skeleton")
various_other_monster:
//putTextnoSeek("Monster")
various_other_robot:
//putTextnoSeek("Robot")
various_other_mechman:
//putTextnoSeek("Mech Man")
various_other_mechlady:
//putTextnoSeek("Mech Lady")
various_other_hero:
//putTextnoSeek("Hero")
various_other_rangerman:
//putTextnoSeek("Ranger Man")
various_other_rangerwoman:
//putTextnoSeek("Ranger Woman")
various_other_woodman:
//putTextnoSeek("Wood Man")
various_other_discboy:
//putTextnoSeek("Disc Boy")
various_other_fairy:
//putTextnoSeek("Fairy")
various_other_flyman:
//putTextnoSeek("Fly Man")
various_other_flywoman:
//putTextnoSeek("Fly Woman")
various_other_spacesuit:
putTextnoSeek("Space Suit")
various_other_armor:
putTextnoSeek("Armor")
various_other_knight:
//putTextnoSeek("Knight")

//32 chars too much

//Change pointers
seek(0x2147B4)

//Outline (Face)
dw (common_normal), (common_slim), (faceoutline_smallchin)
dw (faceoutline_round), (faceoutline_heartshape), (faceoutline_long), (faceoutline_ellipse)
dw (faceoutline_egg), (faceoutline_rectangle), (faceoutline_pentagon), (faceoutline_base)
dw (faceoutline_square), (faceoutline_bigchin), (faceoutline_plump), (faceoutline_diamond)
dw (faceoutline_cheekbone), (faceoutline_broadbean), (faceoutline_pear), (faceoutline_chubby)
dw (faceoutline_stretched), (faceoutline_homely)

//Hair (Face)
dw (common_none), (hair_close)
dw (hair_sports), (hair_73), (hair_boy), (hair_shortcut)
dw (hair_bowcut), (common_normal), (hair_sidepart), (hair_shorthair)
dw (hair_roughshort), (hair_girl), (hair_pin), (hair_semilong)
dw (hair_bobbed), (faceoutline_long), (hair_perm), (hair_semilongsidepart)
dw (hair_roughlong), (hair_longperm), (hair_longhair), (hair_pigtailsshort)
dw (hair_pigtailslong), (hair_pigtailsexplosive), (hair_bun), (hair_ponytail)
dw (hair_tied), (hair_onion), (hair_tiedabove), (hair_chonmage)
dw (hair_feudallord), (hair_allback), (hair_oldwoman), (hair_traditional)
dw (hair_buddha), (hair_oldman), (hair_barcode), (hair_doctor)
dw (hair_shortbob), (hair_bobcat), (hair_morose), (hair_honey)
dw (hair_hero), (hair_commando), (hair_mohawk), (hair_hairband)
dw (hair_regent), (hair_afro), (hair_clown)

//Hat (Face)
dw (common_none)
dw (hat_baseballcap), (hat_newsboycap), (hat_tulip), (hat_beret)
dw (hat_militaryboy), (hat_knitcap), (hat_strawhat), (hat_flowerhat)
dw (hat_cowboy), (hat_tyrolean), (hat_sombrero), (hat_bandana)
dw (hat_swimcap), (hat_tophat), (hat_academiccap), (hat_gicap)
dw (hat_sailor), (hat_uniformcap), (hat_pith), (hat_helmet)
dw (hat_china), (hat_party), (hat_santa), (hat_turban)
dw (hat_viking), (hat_pirate), (hat_mariocap)

//Helmet (Face)
dw (common_none)
dw (helmet_rabbit), (helmet_rooster), (helmet_mummy), (helmet_golem)
dw (helmet_skeleton), (menu10_monster), (helmet_robot), (helmet_mechman)
dw (helmet_mechlady), (hair_hero), (helmet_rangerman), (helmet_rangerwoman)
dw (helmet_woodman), (helmet_discboy), (helmet_fairy), (helmet_flyman)
dw (helmet_flywoman), (helmet_spacehelmet), (helmet_kabuto), (helmet_knight)

//Nose (Face)
dw (nose_regular), (nose_tall), (nose_little), (nose_big)
dw (nose_hook), (nose_rising), (nose_dumpling), (nose_mario)
dw (nose_link), (nose_witch), (faceoutline_long), (nose_horn)
dw (nose_gorilla), (nose_pig)

//Ears (Face)
dw (nose_regular), (ears_round)
dw (ears_angular), (ears_plump), (ears_sharp), (ears_sagging)
dw (ears_alien), (ears_circle), (ears_mario), (ears_link)
dw (ears_horn), (ears_robot), (ears_devil), (ears_donut)

//Beard (Face)
dw (common_none), (beard_small), (beard_oldman), (beard_great)
dw (beard_spear), (beard_catfish), (beard_hermit), (beard_jaw)
dw (beard_beard), (beard_wario), (beard_jagged), (beard_prince)
dw (beard_trident), (beard_tulip)

//Glasses (Face)
dw (common_none), (glasses_round)
dw (glasses_roundrim), (glasses_angular), (glasses_angularrim), (glasses_blackrim)
dw (glasses_turtle), (glasses_zamas), (glasses_double), (glasses_sun)
dw (glasses_sharpsun), (glasses_film), (glasses_partymask), (glasses_eyemask)
dw (glasses_flower), (glasses_spin), (glasses_heart), (glasses_eyecandy)
dw (glasses_3d), (glasses_monocle), (glasses_broken), (glasses_eyepatch)
dw (glasses_pirate), (glasses_swim), (glasses_moto), (glasses_ski)
dw (glasses_diver), (glasses_sniper)

//Earrings (Face)
dw (common_none), (earrings_moon)
dw (earrings_heart), (earrings_star), (earrings_sapphire), (earrings_emerald)
dw (earrings_mixed), (earrings_flowers), (earrings_ribbons), (earrings_buns)
dw (earrings_wings), (earrings_bats), (earrings_antennae), (earrings_fins)
dw (earrings_cat), (earrings_bear), (earrings_bull), (earrings_deer)
dw (earrings_devil), (earrings_alien), (earrings_mech)

//Accessories (Face)
dw (common_none)
dw (access_mole), (access_beak), (access_dog), (access_clothespin)
dw (access_bow), (access_flower), (access_tiara), (access_crown)
dw (access_headphone), (access_shampoohat), (access_ring), (access_herohead)
dw (access_antenna), (access_dragonfly), (access_stagbeetle), (access_butterfly)
dw (access_squirrel), (access_pacifier), (access_mask), (access_protection)

//Undershirt (Male)
dw (common_none), (undershirt_male_briefs), (undershirt_male_running), (undershirt_male_sleeveless)
dw (undershirt_male_small), (undershirt_male_father), (undershirt_male_long)

//Underpants (Male)
dw (common_none)
dw (underpants_male_pants), (underpants_male_fitness), (underpants_male_wrestler), (underpants_male_festival)
dw (underpants_male_tracksuit), (underpants_male_bodysuit)

//Socks (Male)
dw (common_none), (socks_male_tabi)
dw (nose_regular), (faceoutline_long), (hair_sports), (socks_male_baseball)
dw (socks_male_taping)

//Pants (Male)
dw (common_none), (pants_male_shorts), (pants_male_running)
dw (pants_male_boxing), (pants_male_safari), (pants_male_jeans), (pants_male_chino)
dw (pants_male_trousers), (pants_male_slacks), (pants_male_loose), (pants_male_bellyband)
dw (pants_male_overalls), (pants_male_hakama), (pants_male_jersey), (pants_male_skin)
dw (pants_male_aladdin), (pants_male_prince), (pants_male_uniform), (pants_male_karate)
dw (pants_male_torn), (pants_male_protector)

//Shirt (Male)
dw (common_none), (shirt_male_tshirt)
dw (shirt_male_polo), (shirt_male_trainer), (shirt_male_shirt), (shirt_male_vest)
dw (shirt_male_jacket), (shirt_male_flashy), (shirt_male_suit), (shirt_male_leather)
dw (shirt_male_down), (shirt_male_sweater), (shirt_male_businessshirt), (shirt_male_school)
dw (shirt_male_robe), (shirt_male_latin), (shirt_male_prince), (shirt_male_uniform)
dw (shirt_male_karate), (shirt_male_torn), (pants_male_protector)

//Options
dw (common_none)
dw (option_angel), (option_devil), (option_bee), (option_butterfly)
dw (option_robot), (option_handmade), (option_plush), (option_schoolbag)
dw (option_basket), (option_gas), (option_swordshield), (option_shell)
dw (option_thundergod)

//Shoes (Male)
dw (common_none), (shoes_male_sneakers), (hair_sports)
dw (shoes_male_dress), (shoes_male_loafers), (shoes_male_shortboots), (shoes_male_strapboots)
dw (shoes_male_longboots), (shoes_male_mario), (shoes_male_link), (shoes_male_hiking)
dw (shoes_male_geta), (shoes_male_tabi), (shoes_male_flipflops), (shoes_male_enamel)
dw (shoes_male_rubber), (shoes_male_skates), (shoes_male_kungfu), (shoes_male_flipper)
dw (ears_sharp), (shoes_male_animal)

//Gloves (Male)
dw (common_none), (gloves_male_mario)
dw (gloves_male_cotton), (gloves_male_boxing), (hair_sports), (gloves_male_half)
dw (gloves_male_bandage), (gloves_male_gauntlet), (gloves_male_leather), (gloves_male_mitten)
dw (gloves_male_wrist), (gloves_male_bracelet), (gloves_male_crab), (shoes_male_animal)

//Undershirt (Female)
dw (common_none), (undershirt_female_bikini), (hair_sports), (undershirt_female_navel)
dw (undershirt_female_highneck), (undershirt_male_small), (undershirt_male_long)

//Underpants (Female)
dw (common_none)
dw (underpants_male_fitness), (underpants_female_tights), (underpants_female_onepiece), (underpants_female_leotard)
dw (underpants_female_campaign), (underpants_male_bodysuit)

//Socks (Female)
dw (common_none), (socks_male_tabi)
dw (socks_female_folded), (nose_regular), (faceoutline_long), (pants_male_loose)
dw (socks_female_knee)

//Pants (Female)
dw (common_none), (pants_female_hotpants), (pants_female_pumpkin)
dw (pants_female_culottes), (pants_female_knit), (pants_male_jeans), (common_slim)
dw (pants_male_trousers), (pants_male_slacks), (pants_male_loose), (pants_female_balloon)
dw (pants_female_nylon), (pants_male_hakama), (pants_female_jumpsuit), (pants_female_miniskirt)
dw (pants_female_minipleats), (pants_female_child), (pants_female_semi), (pants_female_pleats)
dw (pants_female_idol), (pants_male_protector)

//Shirt (Female)
dw (common_none), (shirt_male_tshirt)
dw (shirt_female_shortsleeved), (shirt_female_blouse), (hat_sailor), (shirt_male_businessshirt)
dw (shirt_female_rough), (shirt_male_jacket), (shirt_male_suit), (shirt_female_furcoat)
dw (shirt_female_down), (shirt_male_sweater), (shirt_female_knit), (shirt_male_vest)
dw (shirt_female_kimono), (underpants_female_onepiece), (shirt_female_sexy), (shirt_female_formal)
dw (shirt_female_santa), (shirt_female_sheer), (pants_male_protector)

//Shoes (Female)
dw (common_none)
dw (shoes_male_sneakers), (hair_sports), (gloves_male_leather), (shoes_male_loafers)
dw (shoes_female_pumps), (shoes_female_highheels), (shoes_female_stringsandals), (shoes_male_shortboots)
dw (shoes_female_halfboots), (shoes_male_longboots), (shoes_male_strapboots), (shoes_male_flipflops)
dw (shoes_female_zori), (shoes_female_sandals), (shoes_male_rubber), (shoes_female_skates)
dw (shoes_male_kungfu), (shoes_male_flipper), (ears_sharp), (shoes_male_animal)

//Gloves (Female)
dw (common_none), (gloves_male_leather), (gloves_male_mitten), (gloves_female_shorty)
dw (gloves_female_armlong), (gloves_female_racelong), (gloves_female_race), (gloves_male_half)
dw (gloves_male_gauntlet), (gloves_male_wrist), (gloves_female_armband), (gloves_male_bracelet)
dw (gloves_male_crab), (shoes_male_animal)

//Various
dw (common_none), (helmet_rabbit)
dw (helmet_rooster), (helmet_mummy), (helmet_golem), (helmet_skeleton)
dw (menu10_monster), (helmet_robot), (helmet_mechman), (helmet_mechlady)
dw (hair_hero), (helmet_rangerman), (helmet_rangerwoman), (helmet_woodman)
dw (helmet_discboy), (helmet_fairy), (helmet_flyman), (helmet_flywoman)
dw (various_other_spacesuit), (various_other_armor), (helmet_knight)

dw (menu10_disco)
dw (menu10_raindance), (menu10_flamenco), (menu10_classic), (menu10_limbodance)
dw (menu10_happystep), (menu10_sexypose), (menu10_training), (menu10_pitcher)
dw (menu10_specialtraining), (menu10_bodybuilder), (menu10_karate), (menu10_boxing)
dw (menu10_balancebeam), (menu10_mosquito), (menu10_cleanup), (menu10_leakage)
dw (menu10_telephone), (menu10_train), (menu10_toilet), (menu10_typhoon)
dw (menu10_samurai), (menu10_monster), (menu10_surprise), (menu10_jump)
dw (menu10_supermodel), (menu10_nonstoplaughs), (menu10_conductor), 0
dw 0, 0, 0, (menu10_basicpose)
dw (menu11_edit1), (menu11_edit2), (menu11_edit3), (menu11_edit4)


seek(0x1953F2)
dh (menu9_musicoff)
seek(0x19543E)
dh (menu9_firstcolor)
seek(0x195462)
dh (menu9_selectedcolor)
seek(0x19546A)
dh (menu9_createdcolor)
seek(0x19549E)
dh (menu9_willbefirst)
seek(0x1954C2)
dh (menu9_willbeselected)
seek(0x1954CA)
dh (menu9_willbecreated)

seek(0x19574E)
dh (menu9_rotationB)
seek(0x195756)
dh (menu9_rotationzoomB)

//menu9_malebodytype
//menu9_femalebodytype
//menu9_otherbodytype
//menu9_remove //Unused?
