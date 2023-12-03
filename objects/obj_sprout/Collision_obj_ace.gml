is_attacking = true;

if ( (image_index >= 8 && image_index <= 9) && can_deal_dmg && !global.invulnerable)
{
	health -= (10 * global.defenseMultiplier);
	can_deal_dmg = false;
	audio_play_sound(sfx_slap, 2, 0);
}
else if ((image_index < 8 || image_index > 9) )
{
	health -= (0.2 * global.defenseMultiplier);
	global.last_health_frame = health;
}
