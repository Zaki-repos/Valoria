if (is_room_clear)
{
	instance_destroy(obj_destructable_parent);
	room_persistent = true;
}
else
{
	obj_ace.x = clamp(obj_ace.x, 60, room_width-60);
}


if (!instance_exists(obj_parent_enemy))
{
	is_room_clear = true;
}