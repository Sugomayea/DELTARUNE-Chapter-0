//animate
if (inparty = true and global.rightButtonPressed) {
	sprite_index = spr_UndyneR
} else if (inparty = true and global.leftButtonPressed) {
	sprite_index = spr_UndyneL
} else if (inparty = true and global.downButtonPressed) {
	sprite_index = spr_UndyneD
} else if (inparty = true and global.upButtonPressed) {
	sprite_index = spr_UndyneU
}

//step when move key is tapped
if (global.upButtonPressed1 or global.downButtonPressed1 or global.rightButtonPressed1 or global.leftButtonPressed1) {
	image_index = 1
}

x[0] = round(x[0.1])
y[0] = round(y[0.1])

//party follow
if (inparty = true and obj_player.follow_points > 0) {
	npc_mode = false
	
	if (global.entered_new_room = true) {
		if (global.new_room_facing = spr_AsgoreD or global.new_room_facing = spr_PogoreD) {
			sprite_index = spr_UndyneD
			new_room_facing = sprite_index
		}
		
		if (global.new_room_facing = spr_AsgoreL or global.new_room_facing = spr_PogoreL) {
			sprite_index = spr_UndyneL
			new_room_facing = sprite_index
		}
		
		if (global.new_room_facing = spr_AsgoreR or global.new_room_facing = spr_PogoreR) {
			sprite_index = spr_UndyneR
			new_room_facing = sprite_index
		}
		
		if (global.new_room_facing = spr_AsgoreU or global.new_room_facing = spr_PogoreU) {
			sprite_index = spr_UndyneU
			new_room_facing = sprite_index
		}
		
		if (sprite_index != new_room_facing) {
			global.entered_new_room = false
		}
	}
	
	if (global.party_member_1 = obj_Undyne) {
		switch(obj_player.past_facing[global.party_member_1_follow_distance]){
			case spr_AsgoreD: sprite_index = spr_UndyneD; break;
			case spr_AsgoreL: sprite_index = spr_UndyneL; break;
			case spr_AsgoreR: sprite_index = spr_UndyneR; break;
			case spr_PogoreD: sprite_index = spr_UndyneD; break;
			case spr_PogoreL: sprite_index = spr_UndyneL; break;
			case spr_PogoreR: sprite_index = spr_UndyneR; break;
			case spr_PogoreU: sprite_index = spr_UndyneU; break;
		}
	
		if obj_player.player_x[global.party_member_1_follow_distance] != 0 {
			x = obj_player.player_x[global.party_member_1_follow_distance]
			y = obj_player.player_y[global.party_member_1_follow_distance]
		} 
		if (global.party_member_1 = obj_Undyne) {
			if (instance_exists(obj_fade)) {
				counter++
				if (counter >= 20) {
					x = obj_fade.target_x
					y = obj_fade.target_y
				}
			}
			counter = 0
		}
	} else {
		switch(obj_player.past_facing[global.party_member_2_follow_distance]){
			case spr_AsgoreD: sprite_index = spr_UndyneD; break;
			case spr_AsgoreL: sprite_index = spr_UndyneL; break;
			case spr_AsgoreR: sprite_index = spr_UndyneR; break;
			case spr_AsgoreU: sprite_index = spr_UndyneU; break;
			case spr_PogoreD: sprite_index = spr_UndyneD; break;
			case spr_PogoreL: sprite_index = spr_UndyneL; break;
			case spr_PogoreR: sprite_index = spr_UndyneR; break;
			case spr_PogoreU: sprite_index = spr_UndyneU; break;
		}
	
		if obj_player.player_x[global.party_member_2_follow_distance] != 0 {
			x = obj_player.player_x[global.party_member_2_follow_distance]
			y = obj_player.player_y[global.party_member_2_follow_distance]
		} else {
			if (instance_exists(obj_fade)) {
				counter++
				if (counter >= 20) {
					x = obj_fade.target_x
					y = obj_fade.target_y - 30
					counter = 0
				}
			}
		}
	}
	
	if (global.isSprinting and (x!= xprevious or y != yprevious)) {
		image_speed = 2
	} else if (x!= xprevious or y != yprevious) {
		image_speed = 1
	} else {
		image_speed = 0
		image_index = 0
	}
}

if (inparty = false) {
	npc_mode = true
}