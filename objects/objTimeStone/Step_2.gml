with (objCircleHandler) {
	mask_index = sprCherry;
}

var list = ds_list_create();
var count = collision_circle_list(x + 16, y + 16, radius_target, [objPlayerKiller, objCircleHandler], true, true, list, false);

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

with (objCircleHandler) {
	mask_index = -1;
}