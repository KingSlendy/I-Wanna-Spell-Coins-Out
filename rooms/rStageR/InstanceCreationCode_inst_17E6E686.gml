add_trigger_key("spike3", {
	attribute_event: new TriggerEvent(function() {
		instance_destroy();
	})
});