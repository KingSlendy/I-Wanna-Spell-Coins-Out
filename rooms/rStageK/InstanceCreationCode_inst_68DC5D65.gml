field = function() {
	add_trigger_key("spike5", {
		x: new TriggerVariable(self.x + 64, 2, attribute_loop,, function() {
			if (!variable_instance_exists(self, "timer")) {
				self.timer = 0;
			}
			
			if (self.x != self.xstart) {
				return true;
			}
			
			if (--self.timer <= 0) {
				self.timer = seconds_to_frames(1);
				return true;
			}
			
			return false;
		})
	});
}