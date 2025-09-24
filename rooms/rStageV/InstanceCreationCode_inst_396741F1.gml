add_trigger_key("ach1", {
	attribute_event: new TriggerEvent(function() {
		instance_destroy();
	})
});