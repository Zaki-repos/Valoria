if (room == rm_room_spawn && !player_spawned)
{
	instance_create_layer(115,700, "EntityLayer", obj_ace);
	player_spawned = true;
}