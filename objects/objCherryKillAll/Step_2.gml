var all_normal_killed = true;

with (objCherryKill) {
	if (x < 800 && sprite_index == sprCherryGray) {
		all_normal_killed = false;
		break;
	}
}

if (all_normal_killed) {
	image_alpha = 0;
}

if (instance_number(objCherryKill) <= 0) {
	//Achievement
}