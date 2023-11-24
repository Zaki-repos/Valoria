//picks up passive card
	var nearestCard = instance_nearest(x, y, obj_passive_card_hidden)
	with (nearestCard) {
		event_user(0);
	}