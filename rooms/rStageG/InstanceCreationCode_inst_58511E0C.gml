add_trigger_key("fake4", {
	attribute_event: new TriggerEvent(function() {
		instance_destroy();	
	})
});