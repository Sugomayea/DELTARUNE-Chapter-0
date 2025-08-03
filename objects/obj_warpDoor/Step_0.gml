if (((place_meeting(x, y + 10, obj_player) or place_meeting(x + 10, y, obj_player)) and global.selectButtonPressed) and !instance_exists(obj_fade)) {
	audio_play_sound(sfx_doorOpen, 10, false)
	var instantiated = instance_create_depth(0, 0, -9999, obj_fade)
	instantiated.target_x = target_x
	instantiated.target_y = target_y
	instantiated.target_room = target_room
	instantiated.facing = facing
}