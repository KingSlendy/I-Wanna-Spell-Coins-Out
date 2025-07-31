function Stage(name, secret, coins) constructor {
	self.name = name;
	self.secret = secret;
	self.coins = coins;
}

global.stage_info = [
	new Stage("Amazing", "Ascend", [0]),
	new Stage("Below", "Back", [1]),
	new Stage("Cycle", "Cover", [2]),
	new Stage("Dive", "Detect", [3]),
	new Stage("Elevate", "Effort", [4]),
	new Stage("Flare", "Fleeting", [5]),
	new Stage("Grid", "Gate", [6, 7]),
	new Stage("Hue", "Hex", [8, 9])
];

#region H
function Pattern(sprite_a, sprite_b, colors) constructor {
	self.sprite_a = sprite_a;
	self.sprite_b = sprite_b;
	self.index = irandom(sprite_get_number(self.sprite_a) - 1);
	var choose_colors = array_shuffle(colors);
	self.color_a = (self.sprite_a != sprHueNothing) ? array_pop(choose_colors) : -1;
	self.color_b = (self.sprite_b != sprHueNothing) ? array_pop(choose_colors) : -1;
	
	static equals = function(pattern) {
		return (
			self.index == pattern.index &&
			self.color_a == pattern.color_a &&
			self.color_b == pattern.color_b
		);
	}
	
	static draw = function(x, y) {
		if (self.color_a != -1) {
			draw_sprite_ext(self.sprite_a, self.index, x, y, 1, 1, 0, self.color_a, 1);
		}
		
		if (self.color_b != -1) {
			draw_sprite_ext(self.sprite_b, self.index, x, y, 1, 1, 0, self.color_b, 1);
		}
		
		draw_set_color(c_black);
		draw_rectangle(x, y, x + 31, y + 31, true);
	}
}
#endregion