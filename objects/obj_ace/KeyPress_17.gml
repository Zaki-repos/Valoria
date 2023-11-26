if (current_card_selected != pointer_null)
{
	current_card_selected.collected = false;
	current_card_selected.sprite_index = global.cardDesign[current_card_selected.cardIndex];
	current_card_selected.x = x + (sign(image_xscale) * 70);
	current_card_selected.y =  y;
	current_card_selected.visible = true;
		
	numActiveCards -= 1;
	
	switch(obj_HUD_controller.hotbar_offset)
		{
			case -95:
				card_number_one = pointer_null;
			break;
	
			case -47.5:
				card_number_two = pointer_null;
			break;
	
			case 0:
				card_number_three = pointer_null;
			break;
	
			case 47.5:
				card_number_four = pointer_null;
			break;
	
			case 95:
				card_number_five = pointer_null;
			break;
		}
		
	var hud_pop_up = instance_create_layer(-50, -50, "HUD", hud_popups);
	hud_pop_up.pop_up = "Current card dropped";
}