
// draws inventory
draw_sprite(spr_card_holder, 0, view_wport/2, 720);


// the healthbar
var healthSize = (health/100); 
var barSize = (global.maxHealth/100); 

draw_sprite_ext(spr_healthbar, 0, 20, 30, barSize, 1, 0, c_white, 1);
draw_sprite_ext(spr_greenbar, 0, 20, 30, healthSize, 1, 0, c_white, 1);


if (obj_ace.card_number_one != pointer_null)
{
	//from the card holder y = 740 x = room_width/2 - 95 (changes by 47.5)
	draw_sprite_ext(global.cardDesign[obj_ace.card_number_one.imageIndex], 0, view_wport/2 - 95, 720, .11, .11, 1, c_white, 1);
}
if (obj_ace.card_number_two != pointer_null)
{
	//from the card holder y = 740 x = room_width/2 - 95 (changes by 47.5)
	draw_sprite_ext(global.cardDesign[obj_ace.card_number_two.imageIndex], 0, view_wport/2 - 47.5, 720, .11, .11, 1, c_white, 1);
}
if (obj_ace.card_number_three != pointer_null)
{
	//from the card holder y = 740 x = room_width/2 - 95 (changes by 47.5)
	draw_sprite_ext(global.cardDesign[obj_ace.card_number_three.imageIndex], 0, view_wport/2, 720, .11, .11, 1, c_white, 1);
}
if (obj_ace.card_number_four != pointer_null)
{
	//from the card holder y = 740 x = room_width/2 - 95 (changes by 47.5)
	draw_sprite_ext(global.cardDesign[obj_ace.card_number_four.imageIndex], 0, view_wport/2 + 47.5, 720, .11, .11, 1, c_white, 1);
}
if (obj_ace.card_number_five != pointer_null)
{
	//from the card holder y = 740 x = room_width/2 - 95 (changes by 47.5)
	draw_sprite_ext(global.cardDesign[obj_ace.card_number_five.imageIndex], 0, view_wport/2 + 95, 720, .11, .11, 1, c_white, 1);
}

//draws the selected slot, TODO: Add functionality
draw_sprite(spr_selected_slot, 0, view_wport/2 + hotbar_offset, 720); //change with numbers or scroll