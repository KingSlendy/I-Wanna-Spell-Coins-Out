if (room == rStageH) {
	var layer_name = layer_get_name(layer);
	
	if ((hue == make_color_rgb(255, 0, 0) && string_ends_with(layer_name, "_Red")) ||
		(hue == make_color_rgb(0, 255, 0) && string_ends_with(layer_name, "_Green")) ||
		(hue == make_color_rgb(0, 0, 255) && string_ends_with(layer_name, "_Blue"))) {
		mask_index = sprNothing;
	} else {
		mask_index = -1;
	}
}