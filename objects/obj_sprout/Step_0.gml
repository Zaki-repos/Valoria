//max travel distance
x = clamp (x , cam_x + sprite_width/2, cam_x + cam_w -sprite_width/2); 

//determine frame speed
if (speed == 1)
{
	image_speed = 1;
}
else if (speed == 2)
{
	image_speed = 2;
}
else
{
	image_speed = 0;
}

//roaming range
if (!is_attacking)
{
	//sets timer for roaming intervals
	if (roamTimer <= 0)
	{
		roamTimer = roamHoldTimer; 
		randx = irandom_range(spawn_pos-400, spawn_pos+400); //chooses pos to go to
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
		is_attacking = true;
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
		is_attacking = false;
		sprout_movement_speed = 1;
		randx = x;
	}
}

