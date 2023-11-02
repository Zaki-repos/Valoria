
// draws inventory
draw_sprite(spr_card_holder, 0, room_width/2, 720);


// the healthbar
var healthSize = (health/100); 
var barSize = (global.maxHealth/100); 

draw_sprite_ext(spr_healthbar, 0, 20, 30, barSize, 1, 0, c_white, 1);
draw_sprite_ext(spr_greenbar, 0, 20, 30, healthSize, 1, 0, c_white, 1);


if (obj_ace.card_number_one != pointer_null)
{
	//from the card holder y = 740 x = room_width/2 - 95 (changes by 47.5)
	draw_sprite_ext(global.cardDesign[obj_ace.card_number_one.imageIndex], 0, room_width/2 - 95, 720, .11, .11, 1, c_white, 1);
}

//draws the selected slot, TODO: Add functionality
draw_sprite(spr_selected_slot, 0, room_width/2-95, 720); //change with numbers or scroll


//display pop up *** CHANGE TO OBJ ***
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
