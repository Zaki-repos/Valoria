//roaming range
//random_set_seed(current_time)
if (!is_attacking)
{
	x = clamp(x, spawn_pos-300, spawn_pos+300);
	
	if (roamTimer <= 0)
	{
		roamTimer = roamHoldTimer;
		randx = irandom_range(spawn_pos-300, spawn_pos+300);
	}
	
	if (roamTimer > 0)
	{
		
		if (point_distance(x, y, randx, y) > sprout_movement_speed)
		{
		 move_towards_point(randx, y, sprout_movement_speed);
		}
		else speed = 0;
		
		roamTimer--;
	}
}


