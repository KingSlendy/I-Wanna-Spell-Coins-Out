active = true;
light_active = true;
light_current = 0;
light_distance = 0;

function toggle_light() {
	if (!active) {
		return;
	}
	
	light_current = 1;
	light_distance = 230;
	light_active = false;
	
	if (x > 800) {
		alarm[0] = seconds_to_frames(1);
	}
	
	active = false;
}