add_trigger_key("gate", {
	attribute_event: new TriggerEvent(function() {
		gate_start();
	}, 1)
});