if (room == rm_libraryFloor1) {
	var layerToCheck = layer_get_id("objsAbove")
	var layerBookTop = layer_sprite_get_id(layerToCheck, "graphic_137B57B3")
	var layerDeskTop = layer_sprite_get_id(layerToCheck, "graphic_F4E3861")
	var layerTableTop = layer_sprite_get_id(layerToCheck, "graphic_3BB47D45")
	var layerTeenTop = layer_sprite_get_id(layerToCheck, "graphic_601D83EF")
	
	if (obj_player.y > 99) {
		layer_sprite_change(layerBookTop, spr_blank)
	} else {
		layer_sprite_change(layerBookTop, spr_bookshelfTop)
	}
	
	if (obj_player.y > 162) {
		layer_sprite_change(layerDeskTop, spr_blank)
	} else {
		layer_sprite_change(layerDeskTop, spr_deskTop)
	}
	
	if (obj_player.y > 164) {
		layer_sprite_change(layerTableTop, spr_blank)
	} else {
		layer_sprite_change(layerTableTop, spr_tableTop)
	}
	
	if (obj_player.y > 102) {
		layer_sprite_change(layerTeenTop, spr_blank)
	} else {
		layer_sprite_change(layerTeenTop, spr_teenzoneTop)
	}
}

if (room == rm_diner) {
	var layerToCheck = layer_get_id("objsAbove")
	var layerBookTop = layer_sprite_get_id(layerToCheck, "graphic_5F5A4DA8")
	
	if (obj_player.y > 169) {
		layer_sprite_change(layerBookTop, spr_blank)
	} else {
		layer_sprite_change(layerBookTop, spr_CouchTop)
	}
}