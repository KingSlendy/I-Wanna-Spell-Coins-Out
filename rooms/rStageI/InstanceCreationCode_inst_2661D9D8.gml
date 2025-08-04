field = function() {
	add_trigger_key("apple7", {
		y: new TriggerVariable(self.y + 128, 4, attribute_loop_reverse,, function() {
			if (!variable_instance_exists(self, "timer")) {
				self.timer = seconds_to_frames(1);
				return false;
			}
			
			if (self.y != self.ystart) {
				return true;
			}
			
			if (--self.timer > 0) {
				return false;
			} else {
				self.timer = seconds_to_frames(1);
				return true;
			}
		})
	})
}