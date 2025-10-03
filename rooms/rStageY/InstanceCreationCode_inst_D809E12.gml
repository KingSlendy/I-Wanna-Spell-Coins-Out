add_trigger_key("fake1", {
	image_alpha: new TriggerVariable(0, 0.05,,, function() {
		return (place_meeting(x, y, objYangPlayer));
	})
});
	
add_trigger_key("fake1B", {
	image_alpha: new TriggerVariable(1, 0.05,,, function() {
		return (!place_meeting(x, y, objYangPlayer));
	})
});

add_trigger_key("fake2", {
	attribute_event: new TriggerEvent(function() {
		instance_destroy();
	})
});