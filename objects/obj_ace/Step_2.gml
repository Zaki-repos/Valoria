
if (health <= 0)
{
	// implement game over
	game_end();
}


if (next_room_x != 0)
{
	var nearestLeftGate = instance_nearest(x, y, obj_left_gate);
	nearestLeftGate.prev_room_x = next_room_x;
	nearestLeftGate.prev_room_y = next_room_y;
	
	next_room_x = 0;
	next_room_y = 0;
}