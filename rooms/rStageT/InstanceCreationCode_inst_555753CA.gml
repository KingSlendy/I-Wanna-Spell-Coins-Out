field = function() {
	add_trigger_key("spike1", {
		x: new TriggerVariable(self.x - 32, 4, attribute_loop_reverse)
	});
}