//max travel distance
x = clamp (x , cam_x + sprite_width, cam_x + cam_w - sprite_width); 

//detects collision with floor
if ( place_meeting(x, y+2, obj_parent_floor) )
{
	_y_velocity = 0; //sets y input to 0
	on_ground = true; //bool checks
}
else if (_y_velocity < 10) //determines gravity
{
	on_ground = false; //bool check
	_y_velocity += 1; //applies grav
}

y = y + _y_velocity;

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
		if (point_distance(x, y, randx, y) > apple_movement_speed)
		{
			move_towards_point(randx, y, apple_movement_speed);
		}
		else speed = 0;
		
		roamTimer--;
	}
	
	//if player within distance, begin attacking
	if (distance_to_object(obj_ace) <= tracking_range)
	{
		is_alerted = true;
		apple_movement_speed = 2;
	}
}
else
{
	direction = point_direction(x, y, obj_ace.x, y); //sets the direction to player
	speed = apple_movement_speed; //sets the speed
	
	//if player leaves enemy sight, enemy loses interest
	if (distance_to_object(obj_ace) > tracking_range)
	{
		is_alerted = false;
		apple_movement_speed = 1;
		randx = x;
		roamTimer = 0;
	}
}


if (is_attacking)
{
	
	speed = 0;
	image_speed = 2;
	image_xscale = direction_facing;
	//sprite_index = spr_spout_attack;
}
else
{
	sprite_index = spr_apple_idle;
}

if (enemy_health <= 0)
{
	alarm[0] = 1;
}

if (enemy_health < last_frame_health)
{
	show_red_overlay = true;
	last_frame_health = enemy_health;
}