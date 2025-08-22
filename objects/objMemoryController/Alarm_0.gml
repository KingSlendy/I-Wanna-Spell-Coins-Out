var all_cards_checked = true;
var all_cards_red = true;
		
with (objMemoryCard) {
	if (!red) {
		all_cards_red = false;
	}
			
	if (!checked) {
		all_cards_checked = false;
		break;
	}
}
		
if (all_cards_checked) {
	activate_trigger("fake1");
							
	if (all_cards_red) {
		activate_trigger("fake2");
	}
}