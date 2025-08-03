if instance_exists(obj_player) and global.party_exists = true and instance_exists(global.party_member_1) and instance_exists(global.party_member_2){
	if obj_player.facing_direction = 3 {
		global.party_member_1.depth = obj_player.depth - 1
		global.party_member_2.depth = global.party_member_1.depth - 1
	} else {
		global.party_member_1.depth = obj_player.depth + 1
		global.party_member_2.depth = obj_player.depth + 2
	}
}
