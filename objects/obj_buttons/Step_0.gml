//menu1

if (menu = 1) {
	//start save
	if (selected = 0 and global.selectButtonPressed) {
		audio_play_sound(sfx_select, 10, false)
		var instantiatedFade = instance_create_depth(0, 0, -9999, obj_titleFade)
		global.new_game = false
	}
	
	//settings
	if (selected = 1 and global.selectButtonPressed) {
		audio_play_sound(sfx_select, 10, false)
		menu = 2
		selected = 0
		timer6 = 1
	}
}

//emnu 2
if (menu = 2) {
	//controls
	if timer6 <= 0 {	
		//controls
		if (selected = 0 and global.selectButtonPressed) {
			audio_play_sound(sfx_select, 10, false)
			menu = 3
			selected = 0
			timer = 1
		}
	}
	timer6--
	
	//cancel
	if (keyboard_check_pressed(global.cancelButton)) {
		audio_play_sound(sfx_select, 10, false)
		menu = 1
		selected = 1
	}
}

//menu 3 controls
if (menu = 3) {
	if timer <= 0 {	
		if (selected = 0 and global.selectButtonPressed) {
			audio_play_sound(sfx_select, 10, false)
			menu = 6
			selected = 0
			timer4 = 1
			movementOrMisc = "movement"
		}
	}
	timer--
	
	if (selected = 1 and global.selectButtonPressed) {
		audio_play_sound(sfx_select, 10, false)
		menu = 7
		selected = 0
		timer4 = 1
		movementOrMisc = "misc"
	}
	
	//cancel
	if (keyboard_check_pressed(global.cancelButton)) {
		audio_play_sound(sfx_select, 10, false)
		menu = 2
		selected = 0
	}
}

//menu 4 (key select)
if (menu = 4 and timer2 <= 0) {
	if (selected = 0 and global.selectButtonPressed) {
		audio_play_sound(sfx_select, 10, false)
		letter = "A"
		menu = 3
		selected = 1
	}
	
	if (selected = 1 and global.selectButtonPressed) {
		audio_play_sound(sfx_select, 10, false)
		letter = "B"
		menu = 3
		selected = 1
	}
	
	if (selected = 2 and global.selectButtonPressed) {
		audio_play_sound(sfx_select, 10, false)
		letter = "C"
		menu = 3
		selected = 1
	}
	
	if (selected = 3 and global.selectButtonPressed) {
		audio_play_sound(sfx_select, 10, false)
		letter = "D"
		menu = 3
		selected = 1
	}
	
	if (selected = 4 and global.selectButtonPressed) {
		audio_play_sound(sfx_select, 10, false)
		letter = "E"
		menu = 3
		selected = 1
	}
	
	if (selected = 5 and global.selectButtonPressed) {
		audio_play_sound(sfx_select, 10, false)
		letter = "F"
		menu = 3
		selected = 1
	}
	
	if (selected = 6 and global.selectButtonPressed) {
		audio_play_sound(sfx_select, 10, false)
		letter = "G"
		menu = 3
		selected = 1
	}
	
	if (selected = 7 and global.selectButtonPressed) {
		audio_play_sound(sfx_select, 10, false)
		letter = "H"
		menu = 3
		selected = 1
	}
	
	if (selected = 8 and global.selectButtonPressed) {
		audio_play_sound(sfx_select, 10, false)
		letter = "I"
		menu = 3
		selected = 1
	}
	
	if (selected = 9 and global.selectButtonPressed) {
		audio_play_sound(sfx_select, 10, false)
		letter = "J"
		menu = 3
		selected = 1
	}
	
	if (selected = 10 and global.selectButtonPressed) {
		audio_play_sound(sfx_select, 10, false)
		letter = "K"
		menu = 3
		selected = 1
	}
	
	if (selected = 11 and global.selectButtonPressed) {
		audio_play_sound(sfx_select, 10, false)
		letter = "L"
		menu = 3
		selected = 1
	}
	
	if (selected = 12 and global.selectButtonPressed) {
		audio_play_sound(sfx_select, 10, false)
		letter = "M"
		menu = 3
		selected = 1
	}
	
	if (selected = 13 and global.selectButtonPressed) {
		audio_play_sound(sfx_select, 10, false)
		letter = "N"
		menu = 3
		selected = 1
	}
	
	if (selected = 14 and global.selectButtonPressed) {
		audio_play_sound(sfx_select, 10, false)
		letter = "O"
		menu = 3
		selected = 1
	}
	
	if (selected = 15 and global.selectButtonPressed) {
		audio_play_sound(sfx_select, 10, false)
		letter = "P"
		menu = 3
		selected = 1
	}
	
	if (selected = 16 and global.selectButtonPressed) {
		audio_play_sound(sfx_select, 10, false)
		letter = "Q"
		menu = 3
		selected = 1
	}
	
	if (selected = 17 and global.selectButtonPressed) {
		audio_play_sound(sfx_select, 10, false)
		letter = "R"
		menu = 3
		selected = 1
	}
	
	if (selected = 18 and global.selectButtonPressed) {
		audio_play_sound(sfx_select, 10, false)
		letter = "S"
		menu = 3
		selected = 1
	}
	
	if (selected = 19 and global.selectButtonPressed) {
		audio_play_sound(sfx_select, 10, false)
		letter = "T"
		menu = 3
		selected = 1
	}
	
	if (selected = 20 and global.selectButtonPressed) {
		audio_play_sound(sfx_select, 10, false)
		letter = "U"
		menu = 3
		selected = 1
	}
	
	if (selected = 21 and global.selectButtonPressed) {
		audio_play_sound(sfx_select, 10, false)
		letter = "V"
		menu = 3
		selected = 1
	}
	
	if (selected = 22 and global.selectButtonPressed) {
		audio_play_sound(sfx_select, 10, false)
		letter = "W"
		menu = 3
		selected = 1
	}
	
	if (selected = 23 and global.selectButtonPressed) {
		audio_play_sound(sfx_select, 10, false)
		letter = "X"
		menu = 3
		selected = 1
	}
	
	if (selected = 24 and global.selectButtonPressed) {
		audio_play_sound(sfx_select, 10, false)
		letter = "Y"
		menu = 3
		selected = 1
	}
	
	if (selected = 25 and global.selectButtonPressed) {
		audio_play_sound(sfx_select, 10, false)
		letter = "Z"
		menu = 3
		selected = 1
	}
	
	if (control = 0) {
		ini_open("controls.ini")
		ini_write_string("Save", "Select", letter)
	}
	
	if (control = 1) {
		ini_open("controls.ini")
		ini_write_string("Save", "Cancel", letter)
	}
	
	if (control = 2) {
		ini_open("controls.ini")
		ini_write_string("Save", "Sprint", letter)
	}
	
	if (control = 3) {
		ini_open("controls.ini")
		ini_write_string("Save", "Menu", letter)
	}
	
	if (control = 4) {
		ini_open("controls.ini")
		ini_write_string("Save", "Up", letter)
	}
	
	if (control = 5) {
		ini_open("controls.ini")
		ini_write_string("Save", "Down", letter)
	}
	
	if (control = 6) {
		ini_open("controls.ini")
		ini_write_string("Save", "Left", letter)
	}
	
	if (control = 7) {
		ini_open("controls.ini")
		ini_write_string("Save", "Right", letter)
	}
	
	scr_updateControls()
	
	if (keyboard_check_pressed(global.cancelButton)) {
		audio_play_sound(sfx_select, 10, false)
		if movementOrMisc == "movement" {
			menu = 6
			selected = control - 4
			timer5 = 1
		} else if movementOrMisc == "misc" {
			menu = 7
			selected = control
			timer5 = 1
		}
	}
}

if (menu = 4) {
	timer2--
}

if (menu = 6) {
	if timer4 <= 0 {	
		if (selected = 0 and global.selectButtonPressed) {
			audio_play_sound(sfx_select, 10, false)
			control = 4
			menu = 4
			selected = 0
			letter = obj_title.upKey
			timer2 = 1
		}
	}
	timer4--
	if (selected = 1 and global.selectButtonPressed) {
		audio_play_sound(sfx_select, 10, false)
		control = 5
		menu = 4
		selected = 0
		letter = obj_title.downKey
		timer2 = 1
	}
	if (selected = 2 and global.selectButtonPressed) {
		audio_play_sound(sfx_select, 10, false)
		control = 6
		menu = 4
		selected = 0
		letter = obj_title.leftKey
		timer2 = 1
	}
	if (selected = 3 and global.selectButtonPressed) {
		audio_play_sound(sfx_select, 10, false)
		control = 7
		menu = 4
		selected = 0
		letter = obj_title.rightKey
		timer2 = 1
	}
	
	if (timer5 <= 0) {
		//cancel
		if (keyboard_check_pressed(global.cancelButton)) {
			audio_play_sound(sfx_select, 10, false)
			menu = 3
			selected = 0
		}
	}
	timer5--
}

if (menu = 7) {
	if (timer4 <= 0) {
		if (selected = 0 and global.selectButtonPressed) {
			audio_play_sound(sfx_select, 10, false)
			control = 0
			menu = 4
			selected = 0
			letter = obj_title.selectKey
			timer2 = 1
		}
	}
	timer4--
	if (selected = 1 and global.selectButtonPressed) {
		audio_play_sound(sfx_select, 10, false)
		control = 1
		menu = 4
		selected = 0
		letter = obj_title.cancelKey
		timer2 = 1
	}
	if (selected = 2 and global.selectButtonPressed) {
		audio_play_sound(sfx_select, 10, false)
		control = 2
		menu = 4
		selected = 0
		letter = obj_title.sprintKey
		timer2 = 1
	}
	if (selected = 3 and global.selectButtonPressed) {
		audio_play_sound(sfx_select, 10, false)
		control = 3
		menu = 4
		selected = 0
		letter = obj_title.menuKey
		timer2 = 1
	}
	
	if (timer5 <= 0) {
		//cancel
		if (keyboard_check_pressed(global.cancelButton)) {
			audio_play_sound(sfx_select, 10, false)
			menu = 3
			selected = 1
		}
	}
	timer5--
}

//controls
if (global.downButtonPressed1) {
	selected++
	audio_play_sound(sfx_move, 10, false)
}

if (global.upButtonPressed1) {
	selected--
	audio_play_sound(sfx_move, 10, false)
}

if (global.rightButtonPressed1 and menu = 4) {
	selected += 7
	audio_play_sound(sfx_move, 10, false)
}

if (global.leftButtonPressed1 and menu = 4) {
	selected -= 7
	audio_play_sound(sfx_move, 10, false)
}

if (global.rightButtonPressed1 and menu = 1 and selected == 2) {
	selected = 0
	audio_play_sound(sfx_move, 10, false)
} else if (global.rightButtonPressed1 and menu = 1 and selected == 3) {
	selected = 1
	audio_play_sound(sfx_move, 10, false)
} else if (global.rightButtonPressed1 and menu = 1 and selected == 4) {
	selected = 3
	audio_play_sound(sfx_move, 10, false)
} else if (global.rightButtonPressed1 and menu = 1) {
	selected += 2
	audio_play_sound(sfx_move, 10, false)
}

if (global.leftButtonPressed1 and menu = 1 and selected == 0) {
	selected = 2
	audio_play_sound(sfx_move, 10, false)
} else if (global.leftButtonPressed1 and menu = 1 and selected == 1) {
	selected = 3
	audio_play_sound(sfx_move, 10, false)
} else if (global.leftButtonPressed1 and menu = 1) {
	selected -= 2
	audio_play_sound(sfx_move, 10, false)
}

//constraints
if (menu = 1) {
	if selected == -2 {
		selected = 2
	} else if (selected < 0) {
		selected = 3
	}
	if (selected > 3) {
		selected = 0
	}
}

if (menu = 2) {
	if (selected < 0) {
		selected = 1
	}
	if (selected > 1) {
		selected = 0
	}
}

if (menu = 3) {
	if (selected < 0) {
		selected = 1
	}
	if (selected > 1) {
		selected = 0
	}
}

if (menu = 4) {
	if (selected < 0) {
		selected = 25
	}
	if (selected > 25) {
		selected = 0
	}
}

if (menu = 6 or menu = 7) {
	if (selected < 0) {
		selected = 3
	}
	if (selected > 3) {
		selected = 0
	} 
}