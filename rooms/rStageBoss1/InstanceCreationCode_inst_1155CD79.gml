add_trigger_key("ach1", {
	attribute_event: new TriggerEvent(function() {
		deactivate_trigger("ach2");
	})
});