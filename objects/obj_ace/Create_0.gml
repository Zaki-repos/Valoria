//player stats
global.maxHealth = 100;
health = 100; //base health
global.x_moveSpeed = 3; //movement X speed
global.y_moveSpeed = 3; //movement Y speed
global.attackMultiplier = 1; //any attack is multiplied by this value
global.defenseMultiplier = 1; //any incoming damage is multiplied this value
global.cooldownReduction = 1; //should be above zero, changes cooldown speed

canMoveLeft = true;
canMoveRight = true;
canCrouch = false;


//jump vars
jumpSpeed = 8;
jumpHoldFrames = 15;
jumpTimer = 0;

//jump check
can_jump = 0; // determines jump
jump = 0; //jump input (changes when key pressed)

//player grav
has_gravity = 1;
player_gravity = 4.5;

numPassiveCards = 0;
numActiveCards = 0;

maximumActiveCards = 5;

card_number_one = pointer_null;
card_number_two = pointer_null;
card_number_three = pointer_null;
card_number_four = pointer_null;
card_number_five = pointer_null;

