draw_set_font(fnt_title)
draw_set_halign(fa_left)

if (menu = 1) {
	if (selected = 0) {
		draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x - 110, y + 34)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x - 100, y + 20, "Continue")
	
	if (selected = 1) {
		draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x - 90, y + 69)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x - 80, y + 55, "Reset")
	
	if (selected = 2) {
		draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x + 55, y + 34)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x + 65, y + 20, "Settings")

	
	if (selected = 3) {
		draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x + 75, y + 69)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x + 85 , y + 55, "Extras")
	
	if (selected = 4) {
		draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x - 20, y + 110)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x - 10, y + 96, "Credits")
}

if (menu = 2) {
	if (selected = 0) {
		draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x - 20, y + 29)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x - 10, y + 15, "Controls")
	
	if (selected = 1) {
		draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x - 20, y + 64)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x - 10, y + 50, "Volume")
}

if (menu = 3) {
	if (selected = 0) {
		draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x - 20, y + 29)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x - 10, y + 15, "Movement")
	
	if (selected = 1) {
		draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x - 20, y + 64)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x - 10, y + 50, "Other")
}

 if menu = 4{
	if selected = 0{
    	draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x - 30, y + 10)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x - 20, y, "A")
	if selected = 1{
    	draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x - 30, y + 30)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x - 20, y + 20, "B")
	if selected = 2{
    	draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x - 30, y + 50)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x - 20, y + 40, "C")
	if selected = 3{
    	draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x - 30, y + 70)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x - 20, y + 60, "D")
	if selected = 4{
    	draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x - 30, y + 90)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x - 20, y + 80, "E")
	if selected = 5{
    	draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x - 30, y + 110)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x - 20, y + 100, "F")
	if selected = 6{
    	draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x - 30, y + 130)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x - 20, y + 120, "G")
	if selected = 7{
    	draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x + 10, y + 10)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 20, y, "H")
	if selected = 8{
    	draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x + 10, y + 30)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 20, y + 20, "I")
	if selected = 9{
    	draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x + 10, y + 50)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 20, y + 40, "J")
	if selected = 10{
    	draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x + 10, y + 70)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 20, y + 60, "K")
	if selected = 11{
    	draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x + 10, y + 90)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 20, y + 80, "L")
	if selected = 12{
    	draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x + 10, y + 110)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 20, y + 100, "M")
	if selected = 13{
    	draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x + 10, y + 130)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 20, y + 120, "N")
	if selected = 14{
    	draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x + 50, y + 10)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 60, y, "O")
	if selected = 15{
    	draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x + 50, y + 30)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 60, y + 20, "P")
	if selected = 16{
		draw_sprite(spr_heartSelectMenu, image_index, x + 50, y + 50)
    	draw_set_color(selectedColor)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 60, y + 40, "Q")
	if selected = 17{
		draw_sprite(spr_heartSelectMenu, image_index, x + 50, y + 70)
    	draw_set_color(selectedColor)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 60, y + 60, "R")
	if selected = 18{
    	draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x + 50, y + 90)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 60, y + 80, "S")
	if selected = 19{
    	draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x + 50, y + 110)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 60, y + 100, "T")
	if selected = 20{
    	draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x + 50, y + 130)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 60, y + 120, "U")
	if selected = 21{
    	draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x + 90, y + 10)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 100, y, "V")
	if selected = 22{
    	draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x + 90, y + 30)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 100, y + 20, "W")
	if selected = 23{
    	draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x + 90, y + 50)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 100, y + 40, "X")
	if selected = 24{
    	draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x + 90, y + 70)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 100, y + 60, "Y")
	if selected = 25{
    	draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x + 90, y + 90)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 100, y + 80, "Z")
    
}

if (menu = 5) {
	draw_set_color(c_white)
	draw_text(x - 40, y, "Are you sure?")
	
	if (selected = 0) {
		draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x - 40, y + 44)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x - 30, y + 30, "No")
	
	if (selected = 1) {
		draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x + 60, y + 44)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x + 70, y + 30, "Yes")
}

if (menu = 6) {
	
	if (selected = 0) {
		draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x - 70, y + 24)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x - 60, y + 10, "Up - Up Arrow/" + obj_title.upKey)
	
	if (selected = 1) {
		draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x - 90, y + 54)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x - 80, y + 40, "Down - Down Arrow/" + obj_title.downKey)
	
	if (selected = 2) {
		draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x - 90, y + 84)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x - 80, y + 70, "Left - Left Arrow/" + obj_title.leftKey)
	
	if (selected = 3) {
		draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x - 110, y + 114)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x - 100, y + 100, "Right - Right Arrow/" + obj_title.rightKey)

}

if (menu = 7) {
	if (selected = 0) {
		draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x - 80, y + 24)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x - 70, y + 10, "Select - Enter/" + obj_title.selectKey)
	
	if (selected = 1) {
		draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x - 50, y + 54)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x - 40, y + 40, "Cancel - " + obj_title.cancelKey)
	
	if (selected = 2) {
		draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x - 80, y + 84)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x - 70, y + 70, "Sprint - Shift/" + obj_title.sprintKey)
	
	if (selected = 3) {
		draw_set_color(selectedColor)
		draw_sprite(spr_heartSelectMenu, image_index, x - 30, y + 114)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x - 20, y + 100, "Menu - " + obj_title.menuKey)
}