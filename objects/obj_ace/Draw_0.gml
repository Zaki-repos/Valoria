draw_self();

if (show_red_overlay)
{
	shader_set(redFlash);
	
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_red, 0.5);

	shader_reset();
}