if (room == rStageH) {
	var layer_name = layer_get_name(layer);
	
	if ((objHueController.hue == HUE_RED && string_ends_with(layer_name, "_Red")) ||
		(objHueController.hue == HUE_GREEN && string_ends_with(layer_name, "_Green")) ||
		(objHueController.hue == HUE_BLUE && string_ends_with(layer_name, "_Blue"))) {
		mask_index = sprNothing;
	} else {
		mask_index = -1;
	}
}