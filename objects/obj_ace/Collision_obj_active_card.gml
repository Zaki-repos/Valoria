//grabs card id
var nearestCard = instance_nearest(x, y, obj_active_card);
	
if (keyboard_check_pressed(ord("E")))
{
	if (numActiveCards < 5)
	{
		//determines which slot to add the card to
		if (card_number_one == pointer_null) {card_number_one = nearestCard}
		else if (card_number_two == pointer_null) {card_number_two = nearestCard}
		else if (card_number_three == pointer_null) {card_number_three = nearestCard}
		else if (card_number_four == pointer_null) {card_number_four = nearestCard}
		else if (card_number_five == pointer_null) {card_number_five = nearestCard}
		nearestCard.collected = true; // collects the card
	}
	else
	{
		//see where the current card is from
		//swap it with selected card
		current_card_selected.collected = false;
		current_card_selected.sprite_index = global.cardDesign[current_card_selected.cardIndex];
		current_card_selected.x = nearestCard.x;
		current_card_selected.y = nearestCard.y;
		current_card_selected.visible = true;
		
		switch(obj_HUD_controller.hotbar_offset)
		{
			case -95:
				card_number_one = nearestCard;
			break;
	
			case -47.5:
				card_number_two = nearestCard;
			break;
	
			case 0:
				card_number_three = nearestCard;
			break;
	
			case 47.5:
				card_number_four = nearestCard;
			break;
	
			case 95:
				card_number_five = nearestCard;
			break;
		}
		
		numActiveCards -= 1;
		nearestCard.collected = true;
	}
	
}
	
//calls the user event
with (nearestCard) {
	event_user(0);
}

