image_index = 1;
radius = radius_max;
radius_target = radius;

add_trigger_key("stone1", {
	attribute_event: new TriggerEvent(function() {
		image_index = 0;
		radius_target = 0;
	}, 1)
});