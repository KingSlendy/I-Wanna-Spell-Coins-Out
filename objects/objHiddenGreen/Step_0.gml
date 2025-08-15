if (visible) {
	exit;
}

if (place_meeting(x, y, objPlayer)) {
	if (is_pressed(global.controls.shoot)) {
		visible = true;
		
		var all_visible = true;
		
		with (objHiddenGreen) {
			if (!visible) {
				all_visible = false;
				break;
			}
		}
		
		if (all_visible) {
			activate_trigger("green");
		}
	}
	
	if (alarm[0] == -1) {
		alarm[0] = 1;
	}
} else {
	alarm[0] = 0;
}