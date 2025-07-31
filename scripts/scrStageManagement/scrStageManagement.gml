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
	new Stage("Grid", "Gate", [6]),
	new Stage("Hue", "Hex", [7]),
	new Stage("", "", [8]),
	new Stage("", "", [9]),
	new Stage("", "", [10]),
	new Stage("", "", [11]),
	new Stage("", "", [12]),
	new Stage("", "", [13]),
	new Stage("", "", [14]),
	new Stage("", "", [15]),
	new Stage("", "", [16]),
	new Stage("", "", [17]),
	new Stage("", "", [18]),
	new Stage("", "", [19]),
	new Stage("", "", [20]),
	new Stage("", "", [21]),
	new Stage("", "", [22]),
	new Stage("", "", [23]),
	new Stage("", "", [24]),
	new Stage("", "", [25])
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