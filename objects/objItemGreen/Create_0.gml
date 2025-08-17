type = "greens";
snd = sndCoin;
image_alpha = 0;

add_trigger_key("green", {
	image_alpha: new TriggerVariable(1, 0.05,,, function() {
		if (global.items[$ type][num]) {
			return false;
		}
		
		return true;
	})
});