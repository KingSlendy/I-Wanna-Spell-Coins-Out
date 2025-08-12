var total = 0;

with (objCherryKill) {
	if (sprite_index == sprCherryGray) {
		total++;
	}
}

if (number != total && !place_meeting(x, y, objPlayer)) {
	image_alpha = 1;
}