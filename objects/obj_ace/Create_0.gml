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

/**
//player stats
health = 100; //base health
global.maxHealth = 100;

global.x_moveSpeed = 3.0; //movement X speed
global.y_moveSpeed = 3.0; //movement Y speed
global.attackMultiplier = 1.0; //any attack is multiplied by this value
global.defenseMultiplier = 1.0; //any incoming damage is multiplied this value
global.cooldownReduction = 1.0; //should be above zero, changes cooldown speed
**/

numPassiveCards = 0;
numActiveCards = 0;

maximumActiveCards = 5;