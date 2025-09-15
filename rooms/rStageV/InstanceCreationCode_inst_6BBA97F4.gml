field = function() {
	add_trigger_key("apple3", {
		y: new TriggerVariable(self.y + 128, 4)
	});
	
	add_trigger_key("apple4", {
		y: new TriggerVariable(self.y - 128, 4)
	});
}