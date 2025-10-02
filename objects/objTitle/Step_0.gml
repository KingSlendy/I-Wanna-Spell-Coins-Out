if (is_pressed(global.controls_menu.accept)) {
	room_goto(rFiles);
	audio_play_sound(sndSelect, 0, false);
}