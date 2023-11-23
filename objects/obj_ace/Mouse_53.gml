if (current_card_selected != pointer_null)
{

	if (current_card_selected.cooldown == 1)
	{
		script_execute(current_card_selected.cardAction);
	}

}