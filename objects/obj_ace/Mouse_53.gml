if (current_card_selected != pointer_null)
{

	if (current_card_selected.cooldown <= 0)
	{
		script_execute(current_card_selected.cardAction);
		current_card_selected.cooldown = current_card_selected.card_properties[5] * 60 * global.cooldownReduction;
	}

}