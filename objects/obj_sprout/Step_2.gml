if (is_attacking)
{
	speed = 0;
	sprite_index = spr_spout_attack;
	image_speed = 1;
	image_xscale = direction_facing;
}
else
{
	sprite_index = spr_sprout;
}

if (!place_meeting(x, y, obj_ace))
{
	is_attacking = false;
}