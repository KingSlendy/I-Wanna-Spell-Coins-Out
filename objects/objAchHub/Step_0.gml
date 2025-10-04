visible = (global.items.achievements[num]);

if (!visible) {
	exit;
}

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

if (mouse_check_button_pressed(mb_left) && point_in_rectangle(mx, my, x, y, x + 31, y + 31)) {
	var skin = "Normal";
	
	switch (num) {
		case ACHIEVEMENTS.BOSS_1: skin = "Kirby"; break;
		case ACHIEVEMENTS.BOSS_2: skin = "HatKid"; break;
		case ACHIEVEMENTS.BOSS_3: skin = "ShadowQueen"; break;
		case ACHIEVEMENTS.BOSS_4: skin = "Antasma"; break;
		case ACHIEVEMENTS.BOSS_5: skin = "Joker"; break;
		default: skin = ""; break;
	}
	
	if (skin == "") {
		exit;
	}
	
	if (global.skin == skin) {
		skin = "Normal";	
	}
	
	global.skin = skin;
	audio_play_sound(sndSelect, 0, false);
}