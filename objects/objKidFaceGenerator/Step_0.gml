if (!instance_exists(objPlayer) || is_active_trigger("fake2")) {
	with (objKidFace) {
		if (image_index == 0) {
			image_blend = (is_active_trigger("fake2")) ? c_lime : c_red;
			break;
		}
	}
	
	exit;
}

if (mouse_check_button_pressed(mb_left)) {
	var list = ds_list_create();
	var count = collision_point_list(mouse_x, mouse_y, objKidFace, true, true, list, false);
	
	for (var i = 0; i < count; i++) {
		if (list[| i].image_index == 0) {
			activate_trigger("fake2");
			deactivate_trigger("apple1");
			deactivate_trigger("timer1");
			activate_trigger("timer2");
		} else {
			kill_player();
		}
	}
	
	ds_list_destroy(list);
}