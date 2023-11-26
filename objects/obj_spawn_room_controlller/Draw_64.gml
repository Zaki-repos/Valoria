draw_set_font(LombardicFontSmall);
draw_set_color(c_black);

if (step_one)
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(760, 520, "Select a card to begin your travels.");
}


draw_set_halign(-1);
draw_set_valign(-1);
draw_set_color(-1);
draw_set_font(-1);