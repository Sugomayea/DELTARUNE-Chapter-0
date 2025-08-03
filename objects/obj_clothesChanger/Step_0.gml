if (global.playerOutfit = 0) {
	if (place_meeting(x, y, obj_player) and global.selectButtonPressed) {
		audio_play_sound(sfx_select, 10, false)
		playerDirect = obj_player.facing_direction
		global.playerOutfit = 1
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
} else {
	if (place_meeting(x, y, obj_player) and global.selectButtonPressed) {
		audio_play_sound(sfx_select, 10, false)
		global.playerOutfit = 0
		playerDirect = obj_player.facing_direction
		if (playerDirect = 0) {
			obj_player.sprite_index = spr_AsgoreR
		} else if (playerDirect = 1) {
			obj_player.sprite_index = spr_AsgoreL
		} else if (playerDirect = 2) {
			obj_player.sprite_index = spr_AsgoreD
		} else if (playerDirect = 3) {
			obj_player.sprite_index = spr_AsgoreU
		}
	}
}