field = function() {
	add_trigger_key("spike2", {
		attribute_event: new TriggerEvent(function() {
			instance_destroy();
		})
	});
}