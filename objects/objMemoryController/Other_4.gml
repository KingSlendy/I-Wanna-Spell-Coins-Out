if (array_length(global.cards_m) == 0) {
	with (objMemoryCard) {
		array_push(other.memory_cards, id);
	}

	var choices = array_create(sprite_get_number(sprMemoryCard) - 2, 0);
	
	for (var i = 0; i < array_length(choices); i++) {
		choices[i] = i + 2;
	}
	
	array_delete(choices, 10, 1);
	array_shuffle_ext(choices);
	array_insert(choices, array_length(choices) - 1, 12);
	array_shuffle_ext(memory_cards);
	
	for (var i = 0; i < array_length(memory_cards) / 2; i++) {
		var choice = array_pop(choices);
		var card1 = memory_cards[i];
		var card2 = memory_cards[array_length(memory_cards) - 1 - i];
		
		with (card1) {
			memory_index = choice;
			memory_mate = card2;
		}
		
		with (card2) {
			memory_index = choice;
			memory_mate = card1;
		}
	}
	
	memory_start = true;
} else {
	for (var i = 0; i < array_length(global.cards_m); i++) {
		var card = global.cards_m[i];
		
		with (objMemoryCard) {
			if (xstart == card.xstart && ystart == card.ystart) {
				image_index = card.image_index;
				checked = card.checked;
				memory_index = card.memory_index;
				var mate = noone;
				
				with (objMemoryCard) {
					if (xstart == card.memory_mate_xstart && ystart == card.memory_mate_ystart) {
						mate = id;
						break;
					}
				}
				
				memory_mate = mate;
				red = card.red;
				
				if (!checked && image_index != 0) {
					rotating = -1;
					var card_rotated = false;
					
					with (objMemoryCard) {
						if (id == other.id) {
							continue;
						}
						
						if (!checked && image_index != 0) {
							card_rotated = true;
							break;
						}
					}
					
					if (card_rotated) {
						init = true;
					}
				}
				
				break;
			}
		}
	}
	
	alarm[0] = 1;
	memory_start = false;
}