if (show_extra_hud)
{

	if (show_slash_range)
	{
		draw_set_color(c_red);
		draw_circle(obj_ace.x * (1366/1920), obj_ace.y * (768/1088), 500 * (1366/1920), true);
		draw_set_color(-1);
	}
	
	if (show_bomb_range)
	{
		draw_set_color(c_red);
		draw_circle(obj_ace.x * (1366/1920), obj_ace.y * (768/1088), 300 * (1366/1920), true);
		draw_set_color(-1);
	}

}