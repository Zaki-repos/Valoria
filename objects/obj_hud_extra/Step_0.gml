var card = obj_ace.current_card_selected;

if (card != pointer_null)
{

	if (card.cardType == items.Slash)
	{
		show_slash_range = true;
	}
	else
	{
		show_slash_range = false;
	}
	
	if (card.cardType == items.Bomb)
	{
		show_bomb_range = true;
	}
	else
	{
		show_bomb_range = false;
	}

}