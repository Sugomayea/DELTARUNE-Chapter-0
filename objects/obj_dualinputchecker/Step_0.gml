//select
if keyboard_check_pressed(global.selectButton) or keyboard_check_pressed(vk_enter){
    global.selectButtonPressed = true
} else{
    global.selectButtonPressed = false
}

//sprint
if keyboard_check(global.sprintButton) or keyboard_check(vk_shift){
    global.sprintButtonHeld = true
} else{
    global.sprintButtonHeld = false
}

//up
if keyboard_check_pressed(global.upButton) or keyboard_check_pressed(vk_up){
    global.upButtonPressed1 = true
} else{
    global.upButtonPressed1 = false
}

if keyboard_check(global.upButton) or keyboard_check(vk_up){
    global.upButtonPressed = true
} else{
    global.upButtonPressed = false
}

//down
if keyboard_check_pressed(global.downButton) or keyboard_check_pressed(vk_down){
    global.downButtonPressed1 = true
} else{
    global.downButtonPressed1 = false
}

if keyboard_check(global.downButton) or keyboard_check(vk_down){
    global.downButtonPressed = true
} else{
    global.downButtonPressed = false
}

//left
if keyboard_check_pressed(global.leftButton) or keyboard_check_pressed(vk_left){
    global.leftButtonPressed1 = true
} else{
    global.leftButtonPressed1 = false
}

if keyboard_check(global.leftButton) or keyboard_check(vk_left){
    global.leftButtonPressed = true
} else{
    global.leftButtonPressed = false
}

//right
if keyboard_check_pressed(global.rightButton) or keyboard_check_pressed(vk_right){
    global.rightButtonPressed1 = true
} else{
    global.rightButtonPressed1 = false
}

if keyboard_check(global.rightButton) or keyboard_check(vk_right){
    global.rightButtonPressed = true
} else{
    global.rightButtonPressed = false
}
