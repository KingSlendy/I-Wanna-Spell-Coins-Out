add_trigger_key("phantom1", {
	attribute_event: new TriggerEvent(function() {
		track_info = true;
		alarm[0] = seconds_to_frames(1);
	}, 1)
});

add_trigger_key("phantom2", {
	attribute_event: new TriggerEvent(function() {
		fast = true;
	}, 1)
});