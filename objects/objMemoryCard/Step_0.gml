if (rotating != 0) {
	if (rotating == 1) {
		image_xscale -= 0.1;
		
		if (image_xscale <= 0) {
			image_index = (image_index == 0) ? memory_index : 0;
			rotating = -1;
		}
	} else if (rotating == -1) {
		image_xscale += 0.1;
		
		if (image_xscale >= 1) {
			image_xscale = 1;
			rotating = 0;
			
			with (objMemoryCard) {
				rotateable = !other.init;
			}
			
			init = false;
			
			if (!checked && image_index != 0) {
				var card_same = false;
				var card_checked = false;
			
				with (objMemoryCard) {
					if (id == other.id) {
						continue;
					}
				
					if (image_index != 0 && !checked) {
						card_checked = true;
						
						if (memory_index == other.memory_index) {
							card_same = true;
							checked = true;
							break;
						}
					}
				}
			
				if (card_checked) {
					if (card_same) {
						checked = true;
						var all_cards_checked = true;
						
						with (objMemoryCard) {
							if (id == other.id) {
								continue;
							}
							
							if (!checked) {
								all_cards_checked = false;
								break;
							}
						}
						
						var all_cards_red = false;
						
						if (red) {
							if (memory_index == 12) {
								var cards_not_red = [];
								
								with (objMemoryCard) {
									if (memory_index != 12) {
										array_push(cards_not_red, id);
									}
								}
								
								if (array_length(cards_not_red) > 0) {
									array_shuffle_ext(cards_not_red);
									var card_not_red = array_pop(cards_not_red);
									card_not_red.memory_index = 12;
									card_not_red.memory_mate.memory_index = 12;
								} else {
									all_cards_red = true;
								}
							} else {
								with (objMemoryCard) {
									red = false;
								}
							}
						}
						
						if (all_cards_checked) {
							activate_trigger("fake1");
							
							if (all_cards_red) {
								activate_trigger("fake2");
							}
							
							audio_play_sound(sndBlockChange, 0, false);
						}
					} else {
						with (objMemoryCard) {
							if (checked) {
								continue;
							}
							
							rotateable = false;
							alarm[0] = seconds_to_frames(1);
						}
					}
				}
			}
		}
	}
}