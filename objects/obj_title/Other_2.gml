//variables
global.start_room = rm_asgoreRoom
global.start_x = 109
global.start_y = 120

global.new_game = false

global.selectedColor = #FDDA0D

global.party_exists = false
global.entered_new_room = false

global.playerOutfit = 0

//control delfaults
global.selectButton = ord("Z")
global.cancelButton = ord("X")
global.sprintButton = ord("X")
global.menuButton = ord("C")
global.upButton = ord("W")
global.leftButton = ord("A")
global.rightButton = ord("D")
global.downButton = ord("S")

//update controls

scr_updateControls()

//party ids
global.pn1 = -1 //placeholder 1
global.p0 = 0 //undyne
global.p1 = 1 //blooky

//room ids
global.rm0 = rm_yourHallway
global.rm1 = rm_hometownMiddleTop

if file_exists("CHAPTER0.ini") {
	instance_create_depth(121.5, 72, 100, obj_buttons_continue)
	
	ini_open("CHAPTER0.ini")
	global.start_room = ini_read_string("Save1", "room", rm_asgoreRoom)
	global.start_x = ini_read_real("Save1", "x", 109)
	global.start_y = ini_read_real("Save1", "y", 120)
	global.party_member_1 = ini_read_real("Save1", "Party1", global.p0)
	global.party_member_2 = ini_read_real("Save1", "Party2", global.p1)
	global.party_member_1_follow_distance = ini_read_real("Save1", "Party1 Distance", 20)
	global.party_member_2_follow_distance = ini_read_real("Save1", "Party2 Distance", 40)
	global.party_exists = ini_read_string("Save1", "Party Exists", "false")
	global.playerOutfit = ini_read_real("Save1", "Outfit", 0)
	ini_close()
} else {
	instance_create_depth(121.5, 72, 100, obj_buttons)
}

//assign party members to correct spots
if (global.party_exists = true) {
	if(global.party_member_1 = -1) {
		global.party_member_1 = obj_partyplaceholder1
	}
	
	if(global.party_member_1 = 0) {
		global.party_member_1 = obj_Undyne
	}

	if(global.party_member_1 = 1) {
		global.party_member_1 = obj_Blooky
	}

	if(global.party_member_2 = -1) {
		global.party_member_1 = obj_partyplaceholder1
	}

	if(global.party_member_2 = 0) {
		global.party_member_2 = obj_Undyne
	}

	if(global.party_member_2 = 1) {
		global.party_member_2 = obj_Blooky
	}
}

with(mControl){
	registerControl("title", true);
	registerControl("player", false);
	registerControl("dialogue", false);
}

if !variable_global_exists("run_map") global.run_map = ds_map_create();
if !variable_global_exists("menu_fn_map") global.menu_fn_map = ds_map_create();