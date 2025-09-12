image_index = 1;
radius = radius_max;
radius_target = radius;

add_trigger_key("stone2", {
	attribute_event: new TriggerEvent(function() {
		image_index = 0;
		radius_target = 0;
		
		with (objTimeStone) {
			if (x > 800) {
				image_index = 1;
				radius_max = 400;
				radius = radius_max;
				radius_target = radius;
				break;
			}
		}
	}, 1)
});