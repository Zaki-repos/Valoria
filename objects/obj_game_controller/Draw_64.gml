if (string_length(pop_text) > 0 && !displayText)
{
	displayTimer = displayHoldFrame;
	displayText = true;
}

if (displayTimer > 0)
{
	draw_set_valign(fa_center);
	draw_set_halign(fa_middle);
	draw_text(room_width/2, room_height/2 - 200, pop_text);
	displayTimer--;
	draw_set_valign(0)
	draw_set_halign(0)
}

if (displayTimer <= 0)
{
	displayText = false;
	pop_text = "";
}
