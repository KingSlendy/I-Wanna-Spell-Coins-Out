add_trigger_key("button1", {
	attribute_event: new TriggerEvent(function() {
		with (objPhantomTriggerButton) {
			if (x == 736 && y == 384) {
				image_index = 0;
			}
		}
	}, 1)
});