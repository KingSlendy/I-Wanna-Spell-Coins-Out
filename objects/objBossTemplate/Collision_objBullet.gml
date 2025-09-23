instance_destroy(other);

if (invincibility) {
	exit;
}

if (--hp <= 0) {
	audio_play_sound(sndDeath, 0, false);
	stop_music();
	instance_destroy();
	
	with (objWarpHub) {
		visible = true;
	}
	
	exit;
}

image_alpha = 0.5;
invincibility = true;
alarm[0] = seconds_to_frames(2);
audio_play_sound(sndBossHit, 0, false);