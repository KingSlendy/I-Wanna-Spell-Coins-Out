field = function() {
	add_trigger_key("spike3", {
		y: new TriggerVariable(self.y - 32, 2, attribute_loop_reverse)
	});
}