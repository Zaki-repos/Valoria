x = clamp (x, cam_x + sprite_width, cam_x + cam_w - sprite_width);
y = clamp (y, cam_y + sprite_height, cam_y + cam_h - sprite_height);

// direction
if (hspeed > 0)
{
	image_xscale = -1;
	direction_facing = -1;
}
else if (hspeed < 0)
{
	image_xscale = 1;
	direction_facing = 1;
}

//roaming
if (!is_alerted)
{
	//sets timer for roaming intervals	
	if(roamTimer <= 0)
	{
		roamTimer = roamHoldTimer;
		randx = irandom_range(cam_x + sprite_width, cam_x + cam_w - sprite_width);
		randy = irandom_range(cam_y + sprite_width, cam_y + cam_h - sprite_width);
	}
	
	//moves enemy to pos
	if(roamTimer > 0)
	{
		if (point_distance(x, y, randx, randy) > bee_movement_speed)
		{
			move_towards_point(randx, randy, bee_movement_speed);
		}
		else speed = 0;
		
		roamTimer--;
	}
	
	//if player within distance, begin attack
	if (distance_to_object(obj_ace) <= tracking_range)
	{
		is_idle = false;
		is_alerted = true;
		is_tucking = true;
		bee_movement_speed = 5;
		sprite_index = spr_bee_tuck;
	}
	
}
else
{
	
	if (is_tucking)
	{
		if (image_index >= image_number-1)
		{
			is_tucking = false;
			is_rolling = true;
			sprite_index = spr_bee_roll;
			image_speed = bee_movement_speed;
		}
	}
	
	if (is_rolling && !is_attacking)
	{
		if (distance_to_object(obj_ace)  < 100)
		{
			is_rolling = false
			is_idle = true;
			sprite_index = spr_bee_idle;
			image_speed = 3;
		}
	}
	
	if (is_idle && !is_attacking)
	{
		if (distance_to_object(obj_ace) >= 100)
		{
			is_idle = false;
			is_rolling = true;
			sprite_index = spr_bee_roll;
			image_speed = bee_movement_speed;
		}
	}
	
	else if (distance_to_object(obj_ace) >= 100)
	{
		sprite_index = spr_bee_roll;
		image_speed = bee_movement_speed;
	}
	
	
	direction = point_direction(x, y, obj_ace.x, obj_ace.y);
	speed = bee_movement_speed;
	
	//if player leaves enemy sight, enemy loses interest
	if ( distance_to_object(obj_ace) > tracking_range )
	{
		is_alerted = false;
		is_rolling = false;
		is_idle = true;
		bee_movement_speed = 1;
		rand_x = x;
		rand_y = y;
		roamTimer = 0;
	}
}

if (is_attacking)
{
	speed = 0;
	
	if (is_rolling || is_idle)
	{
		if (image_index >= image_number-1 && attack_roll_count == 0)
		{	
			is_rolling = false;
			is_idle = false;
			sprite_index = spr_bee_attack;
			image_speed = 1;
			image_xscale = direction_facing;
		}
		
		if (image_index >= image_number-1 && attack_roll_count > 0)
		{
			attack_roll_count--;
		}
	}
	else
	{
		if (image_index >= image_number-1)
		{
			is_rolling = true;
			sprite_index = spr_bee_roll;
			image_speed = 1;
			attack_roll_count = attack_roll_num;
		}
	}
}
else if (!is_attacking && !is_alerted)
{
	is_rolling = false;
	is_tucking = false;
	bee_movement_speed = 1;
	sprite_index = spr_bee_idle;
	image_speed = bee_movement_speed;
}

//death
if (enemy_health <= 0)
{
	alarm[0] = 1;
}

if (enemy_health < last_frame_health)
{
	show_red_overlay = true;
	last_frame_health = enemy_health;
}