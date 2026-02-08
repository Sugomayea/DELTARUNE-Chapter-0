if saved = false {
	draw_set_font(fnt_main_sans)
	draw_set_colour(c_white)
	draw_sprite_stretched(spr_simpleBox, -1, center.x - 106, center.y - 60, 212, 87)
	draw_text(center.x - 90, center.y - 46, name)
	draw_text(center.x - 10, center.y - 46, "LV" + string(lv))
	draw_text(center.x + 50, center.y - 46, time)
	
	
	draw_text(center.x - 90, center.y - 26, rm)
	
	if selected = 0 {
		draw_sprite(spr_heart_cursor, -1, center.x - 86, center.y + 7)
		draw_set_colour(selectedColor)
	} else {
		draw_set_colour(c_white)
	}
	draw_text(center.x - 76, center.y - 0.5, "Save")
	
	if selected = 1 {
		draw_sprite(spr_heart_cursor, -1, center.x, center.y + 7)
		draw_set_colour(selectedColor)
	} else {
		draw_set_colour(c_white)
	}
	draw_text(center.x + 10, center.y - 0.5, "Return")
	
	
} else {
	draw_sprite_stretched(spr_simpleBox, -1, center.x - 106, center.y - 60, 212, 87)
	draw_set_colour(c_white)
	
	draw_text_color(center.x - 90, center.y - 46, name, global.selectedColor, global.selectedColor, global.selectedColor, global.selectedColor, 1)
	draw_text_color(center.x - 10, center.y - 46, "LV" + string(lv), global.selectedColor, global.selectedColor, global.selectedColor, global.selectedColor, 1)
	draw_text_color(center.x + 50, center.y - 46, time, global.selectedColor, global.selectedColor, global.selectedColor, global.selectedColor, 1)
	
	
	draw_text_color(center.x - 90, center.y - 26, rm, global.selectedColor, global.selectedColor, global.selectedColor, global.selectedColor, 1)
	
	draw_text_color(center.x - 76, center.y - 0.5, "Save", global.selectedColor, global.selectedColor, global.selectedColor, global.selectedColor, 1)
	draw_text_color(center.x + 10, center.y - 0.5, "Return", global.selectedColor, global.selectedColor, global.selectedColor, global.selectedColor, 1)
}