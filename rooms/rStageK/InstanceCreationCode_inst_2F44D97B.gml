field = function() {
	add_trigger_key("apple5", {
		y: new TriggerVariable(self.y - 32, 2, attribute_loop_reverse,, function() {
			if (!variable_instance_exists(self, "timer")) {
				self.timer = 0;
			}
			
			if (self.y != self.ystart) {
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