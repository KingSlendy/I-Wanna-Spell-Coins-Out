if (!instance_exists(objPlayer)) {
	alarm[0] = 1;
	exit;
}

var cam = camera_properties(0);
spawn_x = objPlayer.x - cam.view_x - 16;
spawn_y = objPlayer.y - cam.view_y - 52;
state = 1;
audio_play_sound(sndAchievement, 0, false);