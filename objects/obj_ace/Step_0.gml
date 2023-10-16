//directional movement, 0 or 1
if (canMoveRight)
	rightKey = keyboard_check(ord("D"));
if (canMoveLeft)
	leftKey = keyboard_check(ord("A"));
if (canCrouch)
	crouchKey = keyboard_check(ord("S"));

//jump is set to 0
jumpKey = 0;
if (can_jump == 1) //can only jump when you are able to
	jumpKey = keyboard_check(ord("W"));//the jump input is captured


//calculates directional input in the axis
var _xinput = rightKey - leftKey;
var _yinput = has_gravity - jump //jump with gravity

//apply gravity
if (has_gravity == 1)
{
	y_moveSpeed = player_gravity;
}

//movement input and avoid obj
move_and_collide(_xinput * x_moveSpeed, _yinput * y_moveSpeed, obj_road);


//ground check
if (place_meeting(x, y+1, obj_road))
{
	can_jump = 1;	//jump check is true
	has_gravity = 0; //gravity is off when on ground
}
else
{
	if (jump != 1)
	{
		has_gravity = 1 //gravity is enabled otherwise
		can_jump = 0; //and disable jumping
	}
}

//jump
if (jumpKey)
{
	jump = 1; //if the input is 1, the jump value is changed
	can_jump = 0; //prevent multi-jumping
	jumpTimer = jumpHoldFrames; //sets jump timer
	
}

//jump length
if (jumpTimer > 0)
{
	y_moveSpeed = jumpSpeed; //changes movement speed;
	jumpTimer--; //decreases timer
}

if (jumpTimer == 0 && can_jump == 0)
{
	has_gravity = 1; //once timer is zero, gravity returns
	jump = 0; // and jump input is removed
}


if (place_meeting(x-1, y, obj_border))
{
	x += 2;
	canMoveLeft = false;
}
else 
	canMoveLeft = true;

