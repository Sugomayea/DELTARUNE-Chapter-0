/// @description play the right music

if (room == rm_title) {
	scr_musicFunc(sng_titleScreen, 0, 0, 0.7)
}

if (room == rm_asgoreRoom or room == rm_krisAzzy or room == rm_yourBath or room == rm_yourHallway or room == rm_yourHouse) {
	scr_musicFunc(sng_home, 15, 10)
}

if (room == rm_hometownTop or room == rm_ToriHouse or room == rm_hometownTop or room == rm_hometownMiddleTop or room == rm_hometownAlleyway or room == rm_hometownBottom or room == rm_hometownMiddleBottom or room == rm_hometownLake or room == rm_hometownSchool) {
	scr_musicFunc(sng_homeTown, 15, 10)
}

if (room == rm_hometownGraveyard or room == rm_hometownShelter) {
	scr_musicFunc(sng_graveyard, 30, 10)
}