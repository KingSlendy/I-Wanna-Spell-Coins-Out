add_trigger_key("words", {
	attribute_event: new TriggerEvent(function() {
		word_start();
	}, 1)
});