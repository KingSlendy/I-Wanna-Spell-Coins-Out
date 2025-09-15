audio_play_sound(sndGauntletRed, 0, false);
instance_destroy();

if (instance_number(objGauntletRed) <= 0) {
	with (objGauntletController) {
		alarm[0] = 0;
	}
	
	with (objCherry) {
		if (y > 2400 && y > objGauntletController.y) {
			instance_destroy();
		}
	}
	
	deactivate_trigger("apple2");
	deactivate_trigger("apple3");
	activate_trigger("apple4");
	activate_trigger("apple5");
}