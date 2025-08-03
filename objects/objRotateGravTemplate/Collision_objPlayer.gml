if (global.grav != grav && !spin) {
	with (objPlayer) {
		still = true;
        frozen = true;
    }
	
	audio_play_sound(sndBlockChange, 0, false);
	spin = true;
}