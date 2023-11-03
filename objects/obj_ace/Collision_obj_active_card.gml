//picks up active card
if (numActiveCards < 5) 
{
	//grabs card id
	var nearestCard = instance_nearest(x, y, obj_active_card)
	
	//determines which slot to add the card to
	if (card_number_one == pointer_null) {card_number_one = nearestCard}
	else if (card_number_two == pointer_null) {card_number_two = nearestCard}
	else if (card_number_three == pointer_null) {card_number_three = nearestCard}
	else if (card_number_four == pointer_null) {card_number_four = nearestCard}
	else if (card_number_five == pointer_null) {card_number_five = nearestCard}
	
	//calls the user event
	with (nearestCard) {
		event_user(0);
	}
}