if (!first_contact)
{
	if( place_meeting(x,y,obj_ace) )
	{
		is_on = true;
	}
	else
	{
		is_on = false;
	}
}

if (collected)
{
	if (cooldown > 0)
	{
		cooldown--;
	}
}