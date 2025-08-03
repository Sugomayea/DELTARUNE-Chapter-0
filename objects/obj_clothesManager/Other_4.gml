if (room != rm_title) {
	if (global.playerOutfit = 0) {
		var playerDirect = obj_player.facing_direction
		if (playerDirect = 0) {
			obj_player.sprite_index = spr_AsgoreR
		} else if (playerDirect = 1) {
			obj_player.sprite_index = spr_AsgoreL
		} else if (playerDirect = 2) {
			obj_player.sprite_index = spr_AsgoreD
		} else if (playerDirect = 3) {
			obj_player.sprite_index = spr_AsgoreU
		}
	} else {
		var playerDirect = obj_player.facing_direction
		if (playerDirect = 0) {
			obj_player.sprite_index = spr_PogoreR
		} else if (playerDirect = 1) {
			obj_player.sprite_index = spr_PogoreL
		} else if (playerDirect = 2) {
			obj_player.sprite_index = spr_PogoreD
		} else if (playerDirect = 3) {
			obj_player.sprite_index = spr_PogoreU
		}
	}
}