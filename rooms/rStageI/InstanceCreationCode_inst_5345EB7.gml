field = function() {
	add_trigger_key("apple1", {
		x: new TriggerVariable(self.x - 128, 3, attribute_loop)
	});
}