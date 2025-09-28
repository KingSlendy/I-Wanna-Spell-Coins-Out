if (!visible && image_alpha == 1 && distance_to_object(objPlayer) < 2) {
	visible = true;
	activate_trigger("ach2");
	audio_play_sound(sndBlockM9, 0, false);
}