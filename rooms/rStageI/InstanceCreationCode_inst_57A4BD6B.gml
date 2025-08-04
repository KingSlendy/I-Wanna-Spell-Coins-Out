field = function() {
	add_trigger_key("apple3", {
		y: new TriggerVariable(self.y + 128, 2, attribute_loop)
	});
}