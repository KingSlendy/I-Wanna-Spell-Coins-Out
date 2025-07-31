/*patterns = [];

for (var r = 0; r < rows; r++) {
	array_push(patterns, []);
	
	for (var c = 0; c < cols; c++) {
		array_push(patterns[r], null);
	}
}

pattern_colors = [c_red, c_orange, c_yellow, c_lime, c_blue, c_fuchsia, c_purple];

patterns_chosen = [
	new Pattern(pattern_a, pattern_b, pattern_colors),
	new Pattern(pattern_a, pattern_b, pattern_colors),
	new Pattern(pattern_a, pattern_b, pattern_colors),
	new Pattern(pattern_a, pattern_b, pattern_colors)
];

pattern_chosen_r_a = irandom(rows - 2);
pattern_chosen_c_a = irandom(cols - 2);

patterns[pattern_chosen_r_a][pattern_chosen_c_a] = patterns_chosen[0];
patterns[pattern_chosen_r_a][pattern_chosen_c_a + 1] = patterns_chosen[1];
patterns[pattern_chosen_r_a + 1][pattern_chosen_c_a] = patterns_chosen[2];
patterns[pattern_chosen_r_a + 1][pattern_chosen_c_a + 1] = patterns_chosen[3];

while (true) {
	pattern_chosen_r_b = irandom(rows - 2);
	pattern_chosen_c_b = irandom(cols - 2);
	
	if (patterns[pattern_chosen_r_b][pattern_chosen_c_b] == null &&
		patterns[pattern_chosen_r_b][pattern_chosen_c_b + 1] == null &&
		patterns[pattern_chosen_r_b + 1][pattern_chosen_c_b] == null &&
		patterns[pattern_chosen_r_b + 1][pattern_chosen_c_b + 1] == null) {
		break;
	}
}

patterns[pattern_chosen_r_b][pattern_chosen_c_b] = patterns_chosen[0];
patterns[pattern_chosen_r_b][pattern_chosen_c_b + 1] = patterns_chosen[1];
patterns[pattern_chosen_r_b + 1][pattern_chosen_c_b] = patterns_chosen[2];
patterns[pattern_chosen_r_b + 1][pattern_chosen_c_b + 1] = patterns_chosen[3];

function pattern_available(r, c) {
	return (
		patterns[r][c] != patterns_chosen[3] ||
		patterns[r][c - 1] != patterns_chosen[2] ||
		patterns[r - 1][c] != patterns_chosen[1] ||
		patterns[r - 1][c - 1] != patterns_chosen[0]
	);
}

for (var r = 0; r < rows; r++) {
	for (var c = 0; c < cols; c++) {
		if (patterns[r][c] != null) {
			continue;
		}
		
		while (true) {
			pattern = new Pattern(pattern_a, pattern_b, pattern_colors)
			patterns[r][c] = pattern;
			
			if (r == 0 || c == 0 || pattern_available(r, c)) {
				break;
			}
		}
	}
}*/

hue = c_red;
layer_fx = layer_get_fx("Background");