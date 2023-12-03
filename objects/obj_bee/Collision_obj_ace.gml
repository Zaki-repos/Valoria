is_attacking = true;

if ( (image_index >= 2 && image_index <= 3) && can_deal_dmg && !global.invulnerable)
{
	health -= (15 * global.defenseMultiplier);
	can_deal_dmg = false;
	audio_play_sound(sfx_sting, 2, 0);
}
else
{
	health -= (0.2 * global.defenseMultiplier);
	global.last_health_frame = health;
}