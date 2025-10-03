function active_save() {
	if (room == rStageY && image_angle == 180) {
		image_index = 2;
		alarm[0] = 40;
		activate_trigger("ach1");
		return;
	}
	
	if (instance_exists(objPlayer) && global.grav == grav && image_index == 0) {
	    save_game(true, bbox_left + sprite_width / 2, bbox_top + sprite_height / 2);
		image_index = 1;
		alarm[0] = 40;
	}
}