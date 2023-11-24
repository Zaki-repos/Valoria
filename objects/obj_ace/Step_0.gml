//directional movement, 0 or 1
rightKey = keyboard_check(ord("D"));
leftKey = keyboard_check(ord("A"));
jump = keyboard_check(ord("W"));//the jump input is captured


//calculates directional input in the x axis
_xinput = rightKey - leftKey;

//detects collision with floor
if ( place_meeting(x, y+2, obj_parent_floor) )
{
	_yinput = 0; //sets y input to 0
	
	on_ground = true; //bool checks
	can_jump = true;
	in_air = false;
	
	//allows jump
	if (jump)
	{
		_yinput = -jumpSpeed * global.y_moveSpeed; //applies jump
		is_jumping = true; //bool checks
		can_jump = false;
	}
	else
	{
		is_jumping = false;
	}
}
else if (_yinput < 10) //determines gravity
{
	on_ground = false; //bool check
	
	_yinput += 1; //applies grav
}

//bool check
if (_yinput >= 0)
{
	is_falling = true;
}
else
{
	is_falling = false;
}

//performs movement and collision
move_and_collide(_xinput * global.x_moveSpeed, _yinput, obj_parent_floor);

//picks up passive card
if (distance_to_object(obj_passive_card) < 2) 
{
	var nearestCard = instance_nearest(x, y, obj_passive_card)
	with (nearestCard) {
		event_user(0);
	}
}

//determines direction scale
if (_xinput < 0)
{
	image_xscale = -1;
}
else if (_xinput > 0)
{
	image_xscale = 1;
}

//determines which sprite to load based on movement
if (_xinput != 0)
{
	sprite_index = spr_ace_walking //Loads walking
	image_speed = 1 * global.x_moveSpeed/2; //at speed
}
else if (on_ground)
{
	sprite_index = spr_Ace_idle; //loads idle
	image_speed = 1;
}

if (is_jumping)
{
	sprite_index = spr_Ace_jump; //loads jumping
	image_speed = 1;
	
	if (!in_air)
	{
		in_air = true; //bool check
		image_index = 0; //resets jump index whenever jumping
	}
}

//prevents underhealth
if (health <= 0)
{
	health = 0;
}