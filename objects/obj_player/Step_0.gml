var cEnabled = mControl.isControlEnabled("player")
var up    = global.upButtonPressed && cEnabled && canMove = true;
var down  = global.downButtonPressed && cEnabled && canMove = true;
var left  = global.leftButtonPressed && cEnabled && canMove = true;
var right = global.rightButtonPressed && cEnabled && canMove = true;
var sprint= global.sprintButtonHeld && cEnabled;
var select= global.selectButtonPressed && cEnabled;

if instance_exists(mObjDlg) {
	canMove = false
}

move_spd = sprint ? run_spd : walk_spd;

xspd = (right - left) * move_spd;
yspd = (down - up) * move_spd;

//collision
if (right or left) {
	mask_index = spr_playerColliderLR
} else if (up or down) {
	mask_index = spr_playerColliderUD
}

if(place_meeting(x + xspd, y, obj_collider)){
    xspd = 0
}
if(place_meeting(x, y + yspd, obj_collider)){
    yspd = 0
}

/// @arg inst   Instance of obj_interactbox
/// @arg facing player.facing_direction (0=R,1=L,2=U,3=D)
function can_interact(inst, facing) {
    var off = inst.interact_off;
    switch (facing) {
        case 0: return place_meeting(x + off, y, inst)
        case 1: return place_meeting(x - off, y, inst)
        case 2: return place_meeting(x, y + off, inst)
        case 3: return place_meeting(x, y - off, inst)
    }
    return false;
}
var ledx = xspd/4
if (instance_place(x + ledx, y, obj_interact) != noone) {
    var ib = instance_place(x + ledx, y, obj_interact);
    if (ib.blockMovement) {
        x -= xspd;
    }
}
var ledy = yspd/4
if (instance_place(x, y + ledy, obj_interact) != noone) {
    var ib = instance_place(x, y + ledy, obj_interact);
    if (ib.blockMovement) {
        y -= yspd;
    }
}
if (select) {
    var ib_near = instance_nearest(x, y, obj_interact);
    if (ib_near != noone && can_interact(ib_near, facing_direction)) {
        ib_near.interactAct(self);
    }
}

if canMove = true {
	x += xspd
	y += yspd
}

if((xspd > 0 and sprint) and global.playerOutfit = 1){
	sprite_index = spr_PogoreR
	image_speed = 2.5
} else if(xspd < 0 and sprint  and global.playerOutfit = 1){
	sprite_index = spr_PogoreL
	image_speed = 2.5
} else if(yspd > 0 and sprint  and global.playerOutfit = 1){
	sprite_index = spr_PogoreD
	image_speed = 2.5
} else if(yspd < 0 and sprint  and global.playerOutfit = 1){
	sprite_index = spr_PogoreU
	image_speed = 2.5
} else if(xspd > 0 and sprint){
	sprite_index = spr_AsgoreR
	image_speed = 2.5
} else if(xspd < 0 and sprint){
	sprite_index = spr_AsgoreL
	image_speed = 2.5
} else if(yspd > 0 and sprint){
	sprite_index = spr_AsgoreD
	image_speed = 2.5
} else if(yspd < 0 and sprint){
	sprite_index = spr_AsgoreU
	image_speed = 2.5
} else if(xspd > 0  and global.playerOutfit = 1){
	sprite_index = spr_PogoreR
	image_speed = 1
} else if(xspd < 0  and global.playerOutfit = 1){
	sprite_index = spr_PogoreL
	image_speed = 1
} else if(yspd > 0  and global.playerOutfit = 1){
	sprite_index = spr_PogoreD
	image_speed = 1
} else if(yspd < 0  and global.playerOutfit = 1){
	sprite_index = spr_PogoreU
	image_speed = 1
} else if(xspd > 0){
	sprite_index = spr_AsgoreR
	image_speed = 1
} else if(xspd < 0){
	sprite_index = spr_AsgoreL
	image_speed = 1
} else if(yspd > 0){
	sprite_index = spr_AsgoreD
	image_speed = 1
} else if(yspd < 0){
	sprite_index = spr_AsgoreU
	image_speed = 1
}

if (xspd != 0 or yspd != 0) and canMove = true {
	isStopped = false
} else {
	isStopped = true
	image_speed = 0
	image_index = 0
}

if (global.upButtonPressed1 or global.downButtonPressed1 or global.rightButtonPressed1 or global.leftButtonPressed1) and canMove = true {
	image_index = 1
	
	if xspd = 0 and yspd = 0 {
		if global.downButtonPressed1 and global.playerOutfit = 1 {
			sprite_index = spr_PogoreD
		} else if global.downButtonPressed1 {
			sprite_index = spr_AsgoreD
		}
		
		if global.upButtonPressed1 and global.playerOutfit = 1 {
			sprite_index = spr_PogoreU
		} else if global.upButtonPressed1 {
			sprite_index = spr_AsgoreU
		}
		
		if global.rightButtonPressed1 and global.playerOutfit = 1 {
			sprite_index = spr_PogoreR
		} else if global.rightButtonPressed1 {
			sprite_index = spr_AsgoreR
		}
		
		if global.leftButtonPressed1 and global.playerOutfit = 1 {
			sprite_index = spr_PogoreL
		} else if global.leftButtonPressed1 {
			sprite_index = spr_AsgoreL
		}
		
	}
}

//don't shake
x[0] = round(x[0.1])
y[0] = round(y[0.1])

//keep track of direction
if(sprite_index = spr_AsgoreD or sprite_index = spr_PogoreD) {
	facing_direction = 2
}

if(sprite_index = spr_AsgoreU or sprite_index = spr_PogoreU) {
	facing_direction = 3
}

if(sprite_index = spr_AsgoreL or sprite_index = spr_PogoreL) {
	facing_direction = 1
}

if(sprite_index = spr_AsgoreR or sprite_index = spr_PogoreR) {
	facing_direction = 0
}

//update pos for party follow

if ((x != xprevious or y != yprevious) and !instance_exists(obj_fade)) {
	for(follow_pos = follow_points - 1 ; follow_pos > 0 ; follow_pos--) {
		player_x[follow_pos] = player_x[follow_pos - 1]
		player_y[follow_pos] = player_y[follow_pos - 1]
		
		past_facing[follow_pos] = past_facing[follow_pos - 1]
	}
	
	player_x[0] = x
	player_y[0] = y
	past_facing[0] = sprite_index
}

//interact

if global.selectButtonPressed and canMove = true {
	
	//down
	if facing_direction = 2 {
		instance_create_depth(x, y + 24, depth - 1, obj_interactLaserV)
	}
	
	//up
	if facing_direction = 3 {
		instance_create_depth(x, y, depth - 1, obj_interactLaserV)
	}
	
	//right
	if facing_direction = 0 {
		instance_create_depth(x + 8, y + 24, depth - 1, obj_interactLaserH)
	}
	
	//left
	if facing_direction = 1 {
		instance_create_depth(x - 16, y + 24, depth - 1, obj_interactLaserH)
	}
}