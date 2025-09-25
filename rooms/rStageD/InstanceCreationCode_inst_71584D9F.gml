field = function() {
	add_trigger_key("timer1", {
		y: new TriggerVariable(self.y + 64, 0.06,,, function() {
			if (self.y == self.ystart + 64) {
				activate_trigger("ach1");
			}
			
			var cam = camera_properties(0);
			return (cam.view_x > 0 || self.y > self.ystart);
		})
	});
	
	add_trigger_key("timer2", {
		y: new TriggerVariable(self.ystart, 4,,, function() {
			return (!is_active_trigger("ach1"));
		})
	});
}