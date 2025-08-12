if (!visible || image_alpha < 0.5) {
	exit;
}

if (num > -1) {
	global.items[$ type][num] = true;
}

if (global.auto_save_items) {
	save_game(false);
}

audio_play_sound(snd, 0, false);
instance_destroy();