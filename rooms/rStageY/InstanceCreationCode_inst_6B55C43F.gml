field = function() {
	add_trigger_key("fake1", {
		image_alpha: new TriggerVariable(0, 0.05,,, function() {
			return (place_meeting(x, y - 16, objPlayer) || place_meeting(x, y + 16, objPlayer) || place_meeting(x, y + 16, objYangPlayer) || place_meeting(x, y - 16, objYangPlayer));
		})
	});
	
	add_trigger_key("fake1B", {
		image_alpha: new TriggerVariable(1, 0.05,,, function() {
			return !(place_meeting(x, y - 16, objPlayer) || place_meeting(x, y + 16, objPlayer) || place_meeting(x, y + 16, objYangPlayer) || place_meeting(x, y - 16, objYangPlayer));
		})
	});
}