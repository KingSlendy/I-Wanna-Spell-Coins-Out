field = function() {
	add_trigger_key("apple1", {
		y: new TriggerVariable(self.y + 96, 2, attribute_loop_reverse)
	});
}