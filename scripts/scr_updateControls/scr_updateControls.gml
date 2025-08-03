function scr_updateControls(){
	if (file_exists("controls.ini")) {
		ini_open("controls.ini")
		obj_title.selectKey = ini_read_string("Save", "Select", "Z")
		obj_title.cancelKey = ini_read_string("Save", "Cancel", "X")
		obj_title.sprintKey = ini_read_string("Save", "Sprint", "X")
		obj_title.menuKey = ini_read_string("Save", "Menu", "C")
		obj_title.upKey = ini_read_string("Save", "Up", "W")
		obj_title.leftKey = ini_read_string("Save", "Left", "A")
		obj_title.downKey = ini_read_string("Save", "Down", "S")
		obj_title.rightKey = ini_read_string("Save", "Right", "D")
	}
	
	global.selectButton = ord(obj_title.selectKey)
	global.cancelButton = ord(obj_title.cancelKey)
	global.sprintButton = ord(obj_title.sprintKey)
	global.menuButton = ord(obj_title.menuKey)
	global.upButton = ord(obj_title.upKey)
	global.downButton = ord(obj_title.downKey)
	global.leftButton = ord(obj_title.leftKey)
	global.rightButton = ord(obj_title.rightKey)
}