is_attacking = true;

if ( (image_index >= 8 && image_index <= 9) && can_deal_dmg)
{
	health -= (15 * global.defenseMultiplier);
	can_deal_dmg = false;
}