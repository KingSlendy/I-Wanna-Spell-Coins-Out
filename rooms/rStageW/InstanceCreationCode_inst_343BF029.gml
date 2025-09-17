add_trigger_key("fake1", {
	attribute_event: new TriggerEvent(function() {
		instance_destroy();
	})
});