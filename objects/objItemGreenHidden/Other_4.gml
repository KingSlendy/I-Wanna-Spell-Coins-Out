if (array_contains(global.hidden_greens, $"{xstart},{ystart}")) {
	visible = true;
	
	var all_visible = true;
		
	with (objItemGreenHidden) {
		if (!visible) {
			all_visible = false;
			break;
		}
	}
		
	if (all_visible) {
		activate_trigger("green");
	}
	
	alarm[0] = 1;
}