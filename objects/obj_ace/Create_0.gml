canMoveLeft = true;
canMoveRight = true;
canCrouch = false;


//jump vars
jumpSpeed = 6;
jumpHoldFrames = 15;
jumpTimer = 0;

//jump check
can_jump = 0; // determines jump
jump = 0; //jump input (changes when key pressed)

//player grav
has_gravity = 1;
player_gravity = 4.5;

//player stats
health = 100; //base health
maxHealth = 100;

x_moveSpeed = 3; //movement X speed
y_moveSpeed = 3; //movement Y speed
attackMultiplier = 1; //any attack is multiplied by this value
defenseMultiplier = 1; //any incoming damage is multiplied this value
cooldownReduction = 1; //should be above zero, changes cooldown speed

numPassiveCards = 0;
numActiveCards = 0;

maximumActiveCards = 5;