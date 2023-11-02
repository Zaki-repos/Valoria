
// draws inventory, TODO: Add functionality
draw_sprite(spr_card_holder, 0, room_width/2, 720);
draw_sprite(spr_selected_slot, 0, room_width/2-95, 720);

// the healthbar
var healthSize = (health/100); 
var barSize = (global.maxHealth/100); 

draw_sprite_ext(spr_healthbar, 0, 20, 30, barSize, 1, 0, c_white, 1);
draw_sprite_ext(spr_greenbar, 0, 20, 30, healthSize, 1, 0, c_white, 1);


//display pop up
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
