if (cooldown = 0) {
	if (window_get_fullscreen() = false and keyboard_check(vk_f4)) {
		window_set_fullscreen(true)
		cooldown = 60
	} else if (window_get_fullscreen() = true and keyboard_check(vk_f4)) {
		window_set_fullscreen(false)
		if (os_type == os_windows) {
			window_enable_borderless_fullscreen(false)
		}
		cooldown = 60
	}
} else {
	cooldown--
}