add_trigger_key("fake2", {
	attribute_event: new TriggerEvent(function() {
		instance_destroy();
	})
});