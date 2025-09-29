size = 11;
words = [
	"JUMPY",
	"BOING",
	"CLIMB",
	"SLIDE",
	"SKIPS",
	"CRAWL",
	"LEAPS",
	"DROPS",
	"PIVOT",
	"COINS",
	"TOKEN",
	"PRIZE",
	"LOOTS",
	"BONUS",
	"SCORE",
	"GEMMY",
	"CROWN",
	"MEDAL",
	"CLEAR",
	"SPIKY",
	"BLAZE",
	"FLAME",
	"BOMBS",
	"FRUIT",
	"BLOCK",
	"LASER",
	"BLADE",
	"SPIKE",
	"CRUSH",
	"CLOCK",
	"TICKS",
	"LOOPS",
	"TURNS",
	"DELAY",
	"SPEED",
	"TIMER",
	"PHASE",
	"RAPID",
	"SHIFT",
	"HIDER",
	"MASKS",
	"SHADE",
	"GHOST",
	"CODED",
	"CLUES",
	"TRACE",
	"VAULT",
	"CHEAT",
	"KEYED",
	"COLOR",
	"LIGHT",
	"GLOWS",
	"SHAPE",
	"LINES",
	"TILES",
	"GRIDS",
	"NEONS",
	"PIXEL",
	"HARDY",
	"WIPES",
	"GRIND",
	"TRIAL",
	"ELITE",
	"TOUGH",
	"STIFF",
	"SWEAT",
	"FATAL",
	"SHARP",
	"TRICK",
	"FUNNY",
	"QUIRK",
	"GAMEY",
	"PARTY",
	"MOCKS",
	"JESTS",
	"SMIRK",
	"WORLD",
	"LEVEL",
	"STAGE",
	"ROOMY",
	"ORDER",
	"QUEST",
	"STORY",
	"ROUND",
	"CHAIN",
	"PATHS",
	"DREAM",
	"CHAOS",
	"LOGIC",
	"PRISM",
	"CURVE",
	"LAYER",
	"NEXUS",
	"FLARE",
	"GLINT",
	"SHINE",
	"SPEAR",
	"BLINK",
	"WALTZ",
	"SNEAK",
	"PARTY",
	"PLANE"
];

array_shuffle_ext(words);
array_delete(words, 5, array_length(words) - 6);

function Letter(row, col) constructor {
	self.row = row;
	self.col = col;
	self.letter = "";
	self.selected = false;
	self.discover = false;
}

grid = ds_grid_create(size, size);

for (var r = 0; r < size; r++) {
	for (var c = 0; c < size; c++) {
		grid[# r, c] = new Letter(r, c);
	}
}

for (var i = 0; i < array_length(words); i++) {
	var word = words[i];
	
	if (irandom(1) == 1) {
		word = string_reverse(word);
	}
	
	while (true) {
		var word_r = irandom(size - 1);
		var word_c = irandom(size - 1);
		var dirs = [[0, 1], [-1, 1], [-1, 0], [-1, -1], [0, -1], [1, -1], [1, 0], [1, 1]];
		var dir = dirs[irandom(array_length(dirs) - 1)];
		var cells_blank = [];
		var word_fits = false;
		
		for (var j = 1; j <= string_length(word); j++) {
			var check_letter = string_char_at(word, j);
			var check_cell = grid[# word_r, word_c];
			
			if (check_cell.letter != "" && check_cell.letter != check_letter) {
				break;
			}
			
			if (check_cell.letter == "") {
				array_push(cells_blank, [word_r, word_c]);
			}
			
			check_cell.letter = check_letter;
			
			if (j < string_length(word)) {
				word_r += dir[0];
				word_c += dir[1];
			
				if (word_r < 0 || word_r >= size || word_c < 0 || word_c >= size) {
					break;
				}
			} else {
				word_fits = true;
			}
		}
		
		if (word_fits) {
			break;
		} else {
			for (var j = 0; j < array_length(cells_blank); j++) {
				var cell_blank = cells_blank[j];
				grid[# cell_blank[0], cell_blank[1]].letter = "";
			}
		}
	}
}

for (var r = 0; r < size; r++) {
	for (var c = 0; c < size; c++) {
		var letter = grid[# r, c];
		
		if (letter.letter == "") {
			grid[# r, c].letter = chr(65 + irandom(25));
		}
	}
}

timer = -1;
cell_origin = null;
cell_target = null;
words_discover = [];
words_solved = false;

function word_start() {
	alarm[0] = seconds_to_frames(45);
}