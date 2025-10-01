field = function() {
	add_trigger_key("spike2", {
		attribute_event: new TriggerEvent(function() {
			instance_destroy();
		})
	});
	
	add_trigger_key("ach6", {
		attribute_event: new TriggerEvent(function() {
			instance_destroy();
		})
	});
}