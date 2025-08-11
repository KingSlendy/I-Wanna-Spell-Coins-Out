field = function() {
	add_trigger_key("spike2", {
		y: new TriggerVariable(self.y - 32, 1, attribute_loop_reverse)
	});
}