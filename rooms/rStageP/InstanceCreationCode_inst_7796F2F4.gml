add_trigger_key("button2", {
	attribute_event: new TriggerEvent(function() {
		with (objPhantomTriggerButton) {
			if (x == 32 && y == 32) {
				image_index = 0;
			}
		}
	}, 1)
});