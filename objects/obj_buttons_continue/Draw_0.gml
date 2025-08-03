draw_set_font(fnt_title)
draw_set_halign(fa_left)

if (menu = 1) {
	if (selected = 0) {
		draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x - 20, y + 10)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x - 10, y, "Continue")
	
	if (selected = 1) {
		draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x - 20, y + 35)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x - 10, y + 25, "Reset")
	
	if (selected = 2) {
		draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x - 20, y + 60)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x - 10, y + 50, "Settings")

	
	if (selected = 3) {
		draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x - 20, y + 85)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x - 10, y + 75, "Extras")
	
	if (selected = 4) {
		draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x - 20, y + 110)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x - 10, y + 100, "Credits")
}

if (menu >= 2) {
	var back_id = layer_background_get_id("Background")
	layer_background_sprite(back_id, spr_titleBGMENU)
} else {
	var back_id = layer_background_get_id("Background")
	layer_background_sprite(back_id, spr_titleBG)
}


if (menu = 2) {
	if (selected = 0) {
		draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x - 20, y + 10)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x - 10, y, "Language")
	
	if (selected = 1) {
		draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x - 20, y + 40)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x - 10, y + 30, "Controls")
	
	if (selected = 2) {
		draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x - 20, y + 70)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x - 10, y + 60, "Volume")
}

if (menu = 3) {
	if (selected = 0) {
		draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x - 50, y + 2)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x - 40, y - 8, "Select - Enter/" + obj_title.selectKey)
	
	if (selected = 1) {
		draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x - 50, y + 18)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x - 40, y + 8, "Cancel - " + obj_title.cancelKey)
	
	if (selected = 2) {
		draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x - 50, y + 34)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x - 40, y + 24, "Sprint - Shift/" + obj_title.sprintKey)
	
	if (selected = 3) {
		draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x - 50, y + 50)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x - 40, y + 40, "Menu - " + obj_title.menuKey)
	
	if (selected = 4) {
		draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x - 50, y + 66)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x - 40, y + 56, "Up - Up Arrow/" + obj_title.upKey)
	
	if (selected = 5) {
		draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x - 50, y + 82)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x - 40, y + 72, "Down - Down Arrow/" + obj_title.downKey)
	
	if (selected = 6) {
		draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x - 50, y + 98)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x - 40, y + 88, "Left - Left Arrow/" + obj_title.leftKey)
	
	if (selected = 7) {
		draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x - 50, y + 114)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x - 40, y + 104, "Right - Right Arrow/" + obj_title.rightKey)
}

 if menu = 4{
	if selected = 0{
    	draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x - 30, y + 10)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x - 20, y, "A")
	if selected = 1{
    	draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x - 30, y + 30)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x - 20, y + 20, "B")
	if selected = 2{
    	draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x - 30, y + 50)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x - 20, y + 40, "C")
	if selected = 3{
    	draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x - 30, y + 70)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x - 20, y + 60, "D")
	if selected = 4{
    	draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x - 30, y + 90)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x - 20, y + 80, "E")
	if selected = 5{
    	draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x - 30, y + 110)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x - 20, y + 100, "F")
	if selected = 6{
    	draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x - 30, y + 130)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x - 20, y + 120, "G")
	if selected = 7{
    	draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x + 10, y + 10)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 20, y, "H")
	if selected = 8{
    	draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x + 10, y + 30)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 20, y + 20, "I")
	if selected = 9{
    	draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x + 10, y + 50)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 20, y + 40, "J")
	if selected = 10{
    	draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x + 10, y + 70)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 20, y + 60, "K")
	if selected = 11{
    	draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x + 10, y + 90)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 20, y + 80, "L")
	if selected = 12{
    	draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x + 10, y + 110)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 20, y + 100, "M")
	if selected = 13{
    	draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x + 10, y + 130)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 20, y + 120, "N")
	if selected = 14{
    	draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x + 50, y + 10)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 60, y, "O")
	if selected = 15{
    	draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x + 50, y + 30)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 60, y + 20, "P")
	if selected = 16{
		draw_sprite(spr_heartSelectMenu, image_index, x + 50, y + 50)
    	draw_set_color(#0051FF)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 60, y + 40, "Q")
	if selected = 17{
		draw_sprite(spr_heartSelectMenu, image_index, x + 50, y + 70)
    	draw_set_color(#0051FF)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 60, y + 60, "R")
	if selected = 18{
    	draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x + 50, y + 90)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 60, y + 80, "S")
	if selected = 19{
    	draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x + 50, y + 110)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 60, y + 100, "T")
	if selected = 20{
    	draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x + 50, y + 130)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 60, y + 120, "U")
	if selected = 21{
    	draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x + 90, y + 10)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 100, y, "V")
	if selected = 22{
    	draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x + 90, y + 30)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 100, y + 20, "W")
	if selected = 23{
    	draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x + 90, y + 50)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 100, y + 40, "X")
	if selected = 24{
    	draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x + 90, y + 70)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 100, y + 60, "Y")
	if selected = 25{
    	draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x + 90, y + 90)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 100, y + 80, "Z")
    
}

if (menu = 5) {
	draw_set_color(c_white)
	draw_text(x - 30, y, "Are you sure?")
	
	if (selected = 0) {
		draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x - 30, y + 40)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x - 20, y + 30, "No")
	
	if (selected = 1) {
		draw_set_color(#0051FF)
		draw_sprite(spr_heartSelectMenu, image_index, x + 70, y + 40)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x + 80, y + 30, "Yes")
}