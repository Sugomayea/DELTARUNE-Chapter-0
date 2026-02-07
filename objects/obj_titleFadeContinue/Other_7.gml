room_goto(global.start_room)
mControl.enableControl("player")
mControl.disableControl("title")
var instantiated = instance_create_layer(global.start_x, global.start_y, "Player", obj_player)
image_speed = -1