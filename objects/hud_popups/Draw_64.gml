//sets the font
draw_set_font(LombardicFont);

//animates the description to rise
if (displayTimer > 0)
{
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_set_alpha(opacity_value);
	draw_text(view_wport/2, view_hport/2 - y_pos, pop_up);
	draw_set_alpha(1);
	displayTimer--;
	y_pos++;
	y--;
	opacity_value -= 0.005;
	draw_set_valign(0)
	draw_set_halign(0)
}
draw_set_font(-1);
