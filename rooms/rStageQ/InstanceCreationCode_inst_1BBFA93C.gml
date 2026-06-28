add_trigger_key("apple4", {
	attribute_event: new TriggerEvent(function() {
		if (!variable_instance_exists(self, "timer")) {
			self.timer = 0;
		}
			
		if (--self.timer <= 0) {
            var sprite = sprite_index;
			var cherry_shot = instance_create_layer(x, y, "Fruits_2", objCherry, {
				hspeed: 6,
                
			});
                cherry_shot . sprite_index = sprite;
			
			self.timer = seconds_to_frames(1);
		}
	})
});

activate_trigger("apple4");