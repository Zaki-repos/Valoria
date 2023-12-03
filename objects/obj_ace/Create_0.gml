//player stats
global.maxHealth = 100;
health = 100; //base health
global.x_moveSpeed = 8; //movement X speed
global.y_moveSpeed = 2; //movement Y speed
global.attackMultiplier = 1; //any attack is multiplied by this value
global.defenseMultiplier = 1; //any incoming damage is multiplied this value
global.cooldownReduction = 1; //should be above zero, changes cooldown 
global.last_health_frame = health;
global.invulnerable = false;
global.knockback = 0;
global.game_over = false;

audio_stop_all();
audio_play_sound(ms_level, 1, 1);

show_red_overlay = false;
player_opacity = 1;
iframe = true;

can_move = true;
_xinput = 0;
_yinput = 0;

//variable checks *temp*
canMoveLeft = true;
canMoveRight = true;

//jump vars
jumpSpeed = 7;
climbSpeed = 3;
jumpHoldFrames = 15;
jumpTimer = 0;

//jump check
can_jump = true; // determines jump
jump = 0; //jump input (changes when key pressed)

on_ground = false;
in_air = false;
is_falling = false;
is_jumping = false;
is_climbing = false;

numPassiveCards = 0;
numActiveCards = 0;

maximumActiveCards = 5;

card_number_one = pointer_null;
card_number_two = pointer_null;
card_number_three = pointer_null;
card_number_four = pointer_null;
card_number_five = pointer_null;

current_card_selected = pointer_null;

instance_create_layer(0, 0, "HUD", obj_HUD_controller);
instance_create_layer(0, 0, "HUD", obj_hud_extra);
instance_create_layer(0, 0, "HUD", obj_debug_screen);

next_room_x = 0;
next_room_y = 0;