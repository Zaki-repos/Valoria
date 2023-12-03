
if (health <= 0 && !global.game_over)
{
	// implement game over
	global.game_over = true;
	can_move = false;
	instance_create_layer(x, y+sprite_height/2, "EntityLayer", obj_ace_dead);
	instance_destroy(obj_HUD_controller);
	instance_destroy(obj_hud_extra);
	//instance_destroy(obj_debug_screen);
	
	visible = false;
	x = -500;
	y = -100;
}


if (next_room_x != 0)
{
	var nearestLeftGate = instance_nearest(x, y, obj_left_gate);
	nearestLeftGate.prev_room_x = next_room_x;
	nearestLeftGate.prev_room_y = next_room_y;
	
	
	next_room_x = 0;
	next_room_y = 0;
}