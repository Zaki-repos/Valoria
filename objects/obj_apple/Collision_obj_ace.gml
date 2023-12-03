is_attacking = true;

if ( (image_index >= 11 && image_index <= 15) && can_deal_dmg && !global.invulnerable)
{
	health -= (15 * global.defenseMultiplier);
	can_deal_dmg = false;
	global.knockback = -5 * direction_facing;
	audio_play_sound(sfx_headbutt, 2, 0);
}
else if ((image_index < 11 || image_index > 15) )
{
	health -= (0.2 * global.defenseMultiplier);
	global.last_health_frame = health;
}