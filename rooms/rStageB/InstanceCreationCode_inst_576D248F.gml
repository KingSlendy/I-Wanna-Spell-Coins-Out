field = function() {
	add_trigger_key("apple1", {
		y: new TriggerVariable(self.ystart - 64, 2, attribute_loop_reverse)
	});
}