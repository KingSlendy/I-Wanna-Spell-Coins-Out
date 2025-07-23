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
	
	var all_bulbs = true;
	
	with (object_index) {
		if ((other.x < 800 && x < 800) || (other.x > 800 && x > 800)) {
			if (light_current <= 0) {
				all_bulbs = false;
				break;
			}
		}
	}
	
	if (all_bulbs) {
		activate_trigger((x < 800) ? "fake1" : "fake2");
		audio_play_sound(sndBlockChange, 0, false);
	}
	
	active = false;
}