if (isDoor = true) {
	if place_meeting(x, y, obj_player) and !instance_exists(obj_fade) {
		audio_play_sound(sfx_doorOpen, 10, false)
		var instantiated = instance_create_depth(0, 0, -9999, obj_fade)
		instantiated.target_x = target_x
		instantiated.target_y = target_y
		instantiated.target_room = target_room
		instantiated.facing = facing
	}
} else if (playDoorExit = true) {
	if place_meeting(x, y, obj_player) and !instance_exists(obj_fade) {
		audio_play_sound(sfx_doorClose, 10, false)
		var instantiated = instance_create_depth(0, 0, -9999, obj_fade)			
		instantiated.target_x = target_x
		instantiated.target_y = target_y
		instantiated.target_room = target_room
		instantiated.facing = facing
	}
} else {
	if place_meeting(x, y, obj_player) and !instance_exists(obj_fade) {
		var instantiated = instance_create_depth(0, 0, -9999, obj_fade)			
		instantiated.target_x = target_x
		instantiated.target_y = target_y
		instantiated.target_room = target_room
		instantiated.facing = facing
	}
}