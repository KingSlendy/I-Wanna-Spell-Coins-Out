radius = 0;
radius_target = radius;
radius_max = 100;
active_before = false;

function stone_reposition() {
	with (objCircleHandler) {
		mask_index = sprCherry;
	}

	with (objWaveHandler) {
		mask_index = sprCherry;
	}

	var list = ds_list_create();
	var count = collision_circle_list(x + 16, y + 16, radius_target, [objPlayerKiller, objCircleHandler, objWaveHandler], true, true, list, false);

	for (var i = 0; i < count; i++) {
		var obj = list[| i];
	
		with (obj) {
			if (object_index == objCircleHandler || object_index == objWaveHandler) {
				angle = prev_angle;
			} else if (!variable_instance_exists(id, "created_handler")) {
				x = xprevious;
				y = yprevious;
			}
		}
	}
	
	ds_list_destroy(list);

	with (objCircleHandler) {
		mask_index = -1;
	}

	with (objWaveHandler) {
		mask_index = -1;
	}
}