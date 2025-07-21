field = function() {
	add_trigger_key("timer1", {
		y: new TriggerVariable(self.y + 64, 0.04,,, function() {
			var cam = camera_properties(0);
			return (cam.view_x > 0 || self.y > self.ystart);
		})
	});
}