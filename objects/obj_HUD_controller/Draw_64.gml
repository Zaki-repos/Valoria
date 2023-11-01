
// draws inventory, TODO: Add functionality
draw_sprite(spr_card_holder, 0, room_width/2, 720);
draw_sprite(spr_selected_slot, 0, room_width/2-95, 720);

// the healthbar
var healthSize = (health/100); //* spr_greenbar.image_xscale;
var barSize = (global.maxHealth/100); //* spr_healthbar.image_xscale;

draw_sprite_ext(spr_healthbar, 0, 20, 30, barSize, 1, 0, c_white, 1);
draw_sprite_ext(spr_greenbar, 0, 20, 30, healthSize, 1, 0, c_white, 1);

