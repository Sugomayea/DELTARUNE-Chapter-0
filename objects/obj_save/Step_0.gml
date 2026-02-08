if place_meeting(x, y, obj_interactLaserParent) {
	audio_play_sound(sfx_heal, 1, false)
	scr_txtb(box, pos, lines)
	wait = true
}

if wait = true and !instance_exists(mObjDlg) {
	instance_create_depth(x, y, -1000, obj_saveMenu)
	obj_player.canMove = false
}

if instance_exists(obj_saveMenu) {
	
	//move soul
	if obj_saveMenu.selected = 1 and global.leftButtonPressed1 and obj_saveMenu.saved = false {
		obj_saveMenu.selected = 0
		audio_play_sound(sfx_move, 1, false)
	}
	
	if obj_saveMenu.selected = 0 and global.rightButtonPressed1 and obj_saveMenu.saved = false {
		obj_saveMenu.selected = 1
		audio_play_sound(sfx_move, 1, false)
	}
	
	//save
	if obj_saveMenu.selected = 0 and global.selectButtonPressed and obj_saveMenu.saved = false {
		ini_open("CHAPTER0.ini")
		ini_write_real("Save1", "room", room_to_save)
		ini_write_real("Save1", "x", obj_player.x)
		ini_write_real("Save1", "y", obj_player.y)
		ini_write_real("Save1", "facing", obj_player.facing_direction)
		ini_write_real("Save1", "Outfit", global.playerOutfit)
	
		if (global.party_exists = true) {
			ini_write_string("Save1", "Party Exists", global.party_exists)
		
			if (global.party_member_1 = obj_partyplaceholder1) {
				ini_write_real("Save1", "Party1", global.pn1)
			}
			if (global.party_member_1 = obj_Undyne) {
				ini_write_real("Save1", "Party1", global.p0)
			}
			if (global.party_member_1 = obj_Blooky) {
				ini_write_real("Save1", "Party1", global.p1)
			}
			if (global.party_member_2 = obj_partyplaceholder1) {
				ini_write_real("Save1", "Party2", global.pn1)
			}
			if (global.party_member_2 = obj_Undyne) {
				ini_write_real("Save1", "Party2", global.p0)
			}
			if (global.party_member_2 = obj_Blooky) {
				ini_write_real("Save1", "Party2", global.p1)
			}
		}
		ini_close()
		
		obj_saveMenu.saved = true
		timer = 1
		audio_play_sound(sfx_save, 1, false)
	}
	
	//return
	if ((obj_saveMenu.selected = 1 or (obj_saveMenu.saved = true and timer <= 0)) and global.selectButtonPressed) or keyboard_check_pressed(global.cancelButton) {
		obj_player.canMove = true
		wait = false
		instance_destroy(obj_saveMenu)
	}
	timer--
}