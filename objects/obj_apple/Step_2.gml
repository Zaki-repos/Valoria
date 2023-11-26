
if (!place_meeting(x, y, obj_ace))
{
	if (image_index >= image_number-1 || image_index == 0)
	{
		is_attacking = false;
	}
}

if ( (image_index < 1 && !can_deal_dmg) )
{
	can_deal_dmg = true;
}