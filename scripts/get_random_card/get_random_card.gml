//generate the card type
random_set_seed(current_time);

//player stats
health = 100; //base health
global.maxHealth = 100;

global.x_moveSpeed = 3; //movement X speed
global.y_moveSpeed = 3; //movement Y speed
global.attackMultiplier = 1; //any attack is multiplied by this value
global.defenseMultiplier = 1; //any incoming damage is multiplied this value
global.cooldownReduction = 1; //should be above zero, changes cooldown speed

enum cards 
{
	AttackUp,
	AttackDown,
	DefenseUp,
	DefenseDown,
	CooldownUp,
	CooldownDown,
	HealthUp,
	HealthDown,
	MaxHealthUp,
	MaxHealthDown,
	MovementUp,
	MovementDown
}

global.cardDesign = 
[
	spr_card, // the card design from the rear (hidden card)
	spr_design_slash//active card - slash
]

//legend [cardtype, card descr, imageIndex, function]
global.passiveCards = 
[
	//attack cards
		
	[cards.AttackUp, "Attacking Increased", 0],
	[cards.AttackDown, "Attacking Decreased", 0],
	[cards.DefenseUp, "Defense Increased", 0],
	[cards.DefenseDown, "Defense Decreased", 0],
	[cards.CooldownUp, "Cooldown Improved", 0],
	[cards.CooldownDown, "Cooldown Worsened", 0],
	[cards.HealthUp, "Health Up", 0, incHealth()],
	[cards.HealthDown, "Health Down", 0],
	[cards.MaxHealthUp, "Max Health Increased", 0],
	[cards.MaxHealthDown, "Max Health Decreased", 0],
	[cards.MovementUp, "Movement Increased", 0],
	[cards.MovementDown, "Movement Decreased", 0]
]

global.num_passive_cards = array_length(global.passiveCards);
	
global.activeCards = 
[
	["You received Slash", 1, slash()]
]
	
global.num_active_cards = array_length(global.activeCards);

function getRandomCard()
{	
}

function getRandomActiveCard()
{
	return global.activeCards[irandom_range(0, global.num_active_cards-1)];
}
function getRandomPassiveCard()
{	
	
	return global.passiveCards[irandom_range(0, global.num_passive_cards-1)];
}

//increases attackMultiplier (modifier should be either 5%, 10%, 15%)
function incAttack() 
{
	//create rarity to get the percentage
	var rarityChance = irandom_range(1, 100);
	if (rarityChance > 90) // + 15%
	{
		global.attackMultiplier += global.attackMultiplier * 0.15;
	}
	else if (rarityChance > 70) // + 10%
	{
		global.attackMultiplier += global.attackMultiplier * 0.10;
	}
	else // +5%
	{
		global.attackMultiplier += global.attackMultiplier * 0.05;
	}
}

function decAttack()
{
	var rarityChance = irandom_range(1, 100);
	if (rarityChance > 90) // - 15%
	{
		global.attackMultiplier -= global.attackMultiplier * 0.15;
	}
	else if (rarityChance > 70) // - 10%
	{
		global.attackMultiplier -= global.attackMultiplier * 0.10;
	}
	else // -5%
	{
		global.attackMultiplier -= global.attackMultiplier * 0.05;
	}
}

function incDefense()
{
	var rarityChance = irandom_range(1, 100);
	if (rarityChance > 90) // + 15%
	{
		global.defenseMultiplier += global.defenseMultiplier * 0.15;
	}
	else if (rarityChance > 70) // + 10%
	{
		global.defenseMultiplier += global.defenseMultiplier * 0.10;
	}
	else // +5%
	{
		global.defenseMultiplier += global.defenseMultiplier * 0.05;
	}
}

function decDefense()
{
	var rarityChance = irandom_range(1, 100);
	if (rarityChance > 90) // - 15%
	{
		global.defenseMultiplier -= global.defenseMultiplier * 0.15;
	}
	else if (rarityChance > 70) // - 10%
	{
		global.defenseMultiplier -= global.defenseMultiplier * 0.10;
	}
	else // -5%
	{
		global.defenseMultiplier -= global.defenseMultiplier * 0.05;
	}
}

function impCooldown() //cooldownReduction
{
	var rarityChance = irandom_range(1, 100);
	if (rarityChance > 90) // + 15%
	{
		global.cooldownReduction += global.cooldownReduction * 0.15;
	}
	else if (rarityChance > 70) // + 10%
	{
		global.cooldownReduction += global.cooldownReduction * 0.10;
	}
	else // +5%
	{
		global.cooldownReduction += global.cooldownReduction * 0.05;
	}
}

function worseCooldown()
{
	var rarityChance = irandom_range(1, 100);
	if (rarityChance > 90) // - 15%
	{
		global.cooldownReduction -= global.cooldownReduction * 0.15;
	}
	else if (rarityChance > 70) // - 10%
	{
		global.cooldownReduction -= global.cooldownReduction * 0.10;
	}
	else // -5%
	{
		global.cooldownReduction -= global.cooldownReduction * 0.05;
	}
}
function incHealth() 
{
	var rarityChance = irandom_range(1, 100);
	if (rarityChance > 90) // + 15%
	{
		health += health * 0.15;
	}
	else if (rarityChance > 70) // + 10%
	{
		health += health * 0.10;
	}
	else // +5%
	{
		health += health * 0.05;
	}
	
	//keeps health at integer
	health = round(health);
	// correct overhealth and prevent health bar from overload
	if (health > global.maxHealth)
	{health = global.maxHealth;}
	
}
function decHealth() 
{
	var rarityChance = irandom_range(1, 100);
	if (rarityChance > 90) // - 15%
	{
		health -= health * 0.15;
	}
	else if (rarityChance > 70) // - 10%
	{
		health -= health * 0.10;
	}
	else // -5%
	{
		health -= health * 0.05;
	}
	
	//keeps health under 1HP from rounding to death
	if (health < 1 && health > 0)
	{
		health = 1;
	}
	else
	{
		health = round(health);
	}
	
	// corrects underhealth and prevents healthbar scaling error
	if (health < 0)
	{health = 0;}
}


function incMaxHealth() 
{
	var rarityChance = irandom_range(1, 100);
	if (rarityChance > 90) // + 15%
	{
		global.maxHealth += global.maxHealth * 0.15;
	}
	else if (rarityChance > 70) // + 10%
	{
		global.maxHealth += global.maxHealth * 0.10;
	}
	else // +5%
	{
		global.maxHealth += global.maxHealth * 0.05;
	}
	
	//round up health
	global.maxHealth = ceil(global.maxHealth);
}
function decMaxHealth() 
{
	var rarityChance = irandom_range(1, 100);
	if (rarityChance > 90) // +-15%
	{
		global.maxHealth -= global.maxHealth * 0.15;
	}
	else if (rarityChance > 70) // - 10%
	{
		global.maxHealth -= global.maxHealth * 0.10;
	}
	else // -5%
	{
		global.maxHealth -= global.maxHealth * 0.05;
	}
	
	//prevents having more health than intended
	if (health > global.maxHealth)
	{health = global.maxHealth;}
	
	//round up health
	global.maxHealth = ceil(global.maxHealth);
}


function incMovement() 
{
	var rarityChance = irandom_range(1, 100);
	if (rarityChance > 90) // + 15%
	{
		global.x_moveSpeed += global.x_moveSpeed * 0.15;
	}
	else if (rarityChance > 70) // + 10%
	{
		global.x_moveSpeed += global.x_moveSpeed * 0.10;
	}
	else // +5%
	{
		global.x_moveSpeed += global.x_moveSpeed * 0.05;
	}
}

function decMovement() 
{
	var rarityChance = irandom_range(1, 100);
	if (rarityChance > 90) // - 15%
	{
		global.x_moveSpeed -= global.x_moveSpeed * 0.15;
	}
	else if (rarityChance > 70) // - 10%
	{
		global.x_moveSpeed -= global.x_moveSpeed * 0.10;
	}
	else // -5%
	{
		global.x_moveSpeed -= global.x_moveSpeed * 0.05;
	}
}

function slash()
{}
