color = c_white;

function hue_change() {
	if (objHueController.hue != color) {
		objHueController.hue = color;
		
		if (!audio_is_playing(sndHueColorChange)) {
			audio_play_sound(sndHueColorChange, 0, false);
		}
	}
}