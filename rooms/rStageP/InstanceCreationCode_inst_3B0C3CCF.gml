add_trigger_key("phantom", {
	attribute_event: new TriggerEvent(function() {
		track_info = true;
		alarm[0] = seconds_to_frames(1);
	}, 1)
});