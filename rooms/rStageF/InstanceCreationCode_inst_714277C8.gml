field = function() {
	add_trigger_key("apple2", {
		y: new TriggerVariable(self.y - 96, 2, attribute_loop_reverse)
	});
}