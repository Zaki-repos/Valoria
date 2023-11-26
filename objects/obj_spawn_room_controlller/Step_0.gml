if (step_one)
{
	if (card_option_one.visible == false)
	{
		instance_destroy(card_option_two);
		instance_destroy(card_option_three);
		step_one = false;
	}
	else if (card_option_two.visible == false)
	{
		instance_destroy(card_option_one);
		instance_destroy(card_option_three);
		step_one = false;
	}
	else if (card_option_three.visible == false)
	{
		instance_destroy(card_option_one);
		instance_destroy(card_option_two);
		step_one = false;
	}
}

if (!step_one)
{
	step_two = true;
}

if (step_two)
{
	room_persistent = true;
}
else 
{
	obj_ace.x = clamp(obj_ace.x, 60, room_width-60);
}