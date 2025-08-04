if (global.grav != grav && !spin) {
	with (objPlayer) {
		image_speed = 0;
		x = other.x + 17;
		y = other.y + 17 - 4 * (global.grav == -1);
		still = true;
        frozen = true;
    }
	
	audio_play_sound(sndBlockChange, 0, false);
	spin = true;
}