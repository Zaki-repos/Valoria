if (first_contact)
{
	first_contact = false;
	sprite_index = global.cardDesign[cardIndex];
}

if (collected)
{
	//hides the card; but changes its spr to be the style; adds to num active cards 
	visible = false;
	obj_ace.numActiveCards += 1;

	//creates a pop-up
	var hud_pop_up = instance_create_layer(-50, -50, "HUD", hud_popups);
	hud_pop_up.pop_up = pop_up;

	//pushes off screen
	x = -50;
	y = -50;
}