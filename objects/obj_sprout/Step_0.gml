//max travel distance
x = clamp (x , cam_x + sprite_width, cam_x + cam_w - sprite_width); 

//determine anim speed
if (speed == 1)
{
	image_speed = 1;
}
else if (speed == 2)
{
	image_speed = 2;
}
else if (speed == 0 && !is_attacking)
{
	image_speed = 0;
}

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

//roaming range
if (!is_alerted)
{
	
	//sets timer for roaming intervals
	if (roamTimer <= 0)
	{
		roamTimer = roamHoldTimer; 
		randx = irandom_range(cam_x + sprite_width,  cam_x + cam_w - sprite_width); //chooses pos to go to
	}
	
	//moves enemy to pos
	if (roamTimer > 0)
	{
		//stops the enemy when reaching destination
		if (point_distance(x, y, randx, y) > sprout_movement_speed)
		{
			move_towards_point(randx, y, sprout_movement_speed);
		}
		else speed = 0;
		
		roamTimer--;
	}
	
	//if player within distance, begin attacking
	if (distance_to_object(obj_ace) <= 150)
	{
		is_alerted = true;
		sprout_movement_speed = 2;
	}
}
else
{
	direction = point_direction(x, y, obj_ace.x, y); //sets the direction to player
	speed = sprout_movement_speed; //sets the speed
	
	//if player leaves enemy sight, enemy loses interest
	if (distance_to_object(obj_ace) > 150)
	{
		is_alerted = false;
		sprout_movement_speed = 1;
		randx = x;
		roamTimer = 0;
	}
}

distanceFromAceDebug = distance_to_object(obj_ace);

if (is_attacking)
{
	
	speed = 0;
	image_speed = 2;
	sprite_index = spr_spout_attack;
}
else
{
	sprite_index = spr_sprout;
}


if (sprout_health <= 0)
{
	alarm[0] = 1;
}