add_trigger_key("apple3", {
	attribute_event: new TriggerEvent(function() {
		if (!variable_instance_exists(self, "timer")) {
			self.timer = seconds_to_frames(0.5);
		}
			
		if (--self.timer <= 0) {
			instance_create_layer(x, y, "Fruits_2", objCherry, {
				hspeed: 6
			});
			
			self.timer = seconds_to_frames(1);
		}
	})
});

activate_trigger("apple3");