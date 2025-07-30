add_trigger_key("fake3", {
	attribute_event: new TriggerEvent(function() {
		instance_destroy();	
	})
});