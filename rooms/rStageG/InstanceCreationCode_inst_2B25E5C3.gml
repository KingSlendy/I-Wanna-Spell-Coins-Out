field = function() {
	add_trigger_key("fake2", {
		image_alpha: new TriggerVariable(1, 0.05),
		attribute_event: new TriggerEvent(function() {
			with (instance_create_layer(x, y, "Blocks", objBlock)) {
				add_trigger_key("fake3", {
					attribute_event: new TriggerEvent(function() {
						instance_destroy();
					})
				});
			}
		}, 1)
	});
	
	add_trigger_key("fake3", {
		image_alpha: new TriggerVariable(0, 0.05)
	});
}