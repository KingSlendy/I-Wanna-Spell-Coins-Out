if (room == rHubClearAll) {
	instance_destroy();
}

if (string_count("Boss", room_get_name(room)) > 0) {
	if (room != rStageBoss5 || (image_blend != c_yellow && image_blend != c_blue) || (x < 0 || y > 608)) {
		instance_destroy();
	}
}