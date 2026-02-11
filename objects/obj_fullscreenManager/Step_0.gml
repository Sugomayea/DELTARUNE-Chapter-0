if (cooldown = 0) {
	if (window_get_fullscreen() = false and keyboard_check(vk_f4)) {
		window_set_fullscreen(true)
		cooldown = 30
	} else if (window_get_fullscreen() = true and keyboard_check(vk_f4)) {
		window_set_fullscreen(false)
		if (os_type == os_windows) {
			window_enable_borderless_fullscreen(false)
		}
		window_set_rectangle((display_get_width()/2) - 640, (display_get_height()/2) - 480, 1280, 960)
		cooldown = 30
	}
} else {
	cooldown--
}