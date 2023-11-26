is_attacking = true;

if ( (image_index >= 2 && image_index <= 3) && can_deal_dmg)
{
	health -= (15 * global.defenseMultiplier);
	can_deal_dmg = false;
}
else
{
	health -= (0.2 * global.defenseMultiplier);
}