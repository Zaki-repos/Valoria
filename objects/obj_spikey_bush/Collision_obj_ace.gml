if (obj_ace.x < x)
{
	direction_kb = 1;
}
else
{
	direction_kb = -1;
}


if (can_dmg)
{
	can_dmg = false;
	alarm[0] = 60;
	
	health -= (20 * global.defenseMultiplier);
	global.knockback = -7 * direction_kb;
}