//generate the card type
gml_pragma("global", "get_random_card()");
random_set_seed(current_time);

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
		spr_active_slash //active card - slash
	]

	//legend [cardtype, card descr, imageIndex, function]
	global.passiveCards = 
	[
		//attack cards
		[cards.AttackUp, "Attacking Increased", 0, incAttack()],
		[cards.AttackDown, "Attacking Decreased", 0, decAttack()],
		[cards.DefenseUp, "Defense Increased", 0, incDefense()],
		[cards.DefenseDown, "Defense Decreased", 0, decDefense()],
		[cards.CooldownUp, "Cooldown Improved", 0, impCooldown()],
		[cards.CooldownDown, "Cooldown Worsened", 0, worseCooldown()],
		[cards.HealthUp, "Health Up", 0, incHealth()],
		[cards.HealthDown, "Health Down", 0, decHealth()],
		[cards.MaxHealthUp, "Max Health Increased", 0, incMaxHealth()],
		[cards.MaxHealthDown, "Max Health Decreased", 0, decMaxHealth()],
		[cards.MovementUp, "Movement Increased", 0, incMovement()],
		[cards.MovementDown, "Movement Decreased", 0, decMovement()]
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
		obj_ace.attackMultiplier += obj_ace.attackMultiplier * 0.15;
	}
	else if (rarityChance > 70) // + 10%
	{
		obj_ace.attackMultiplier += obj_ace.attackMultiplier * 0.10;
	}
	else // +5%
	{
		obj_ace.attackMultiplier += obj_ace.attackMultiplier * 0.05;
	}
}

function decAttack()
{
	var rarityChance = irandom_range(1, 100);
	if (rarityChance > 90) // - 15%
	{
		obj_ace.attackMultiplier -= obj_ace.attackMultiplier * 0.15;
	}
	else if (rarityChance > 70) // - 10%
	{
		obj_ace.attackMultiplier -= obj_ace.attackMultiplier * 0.10;
	}
	else // -5%
	{
		obj_ace.attackMultiplier -= obj_ace.attackMultiplier * 0.05;
	}
}

function incDefense()
{
	var rarityChance = irandom_range(1, 100);
	if (rarityChance > 90) // + 15%
	{
		obj_ace.defenseMultiplier += obj_ace.defenseMultiplier * 0.15;
	}
	else if (rarityChance > 70) // + 10%
	{
		obj_ace.defenseMultiplier += obj_ace.defenseMultiplier * 0.10;
	}
	else // +5%
	{
		obj_ace.defenseMultiplier += obj_ace.defenseMultiplier * 0.05;
	}
}

function decDefense()
{
	var rarityChance = irandom_range(1, 100);
	if (rarityChance > 90) // - 15%
	{
		obj_ace.defenseMultiplier -= obj_ace.defenseMultiplier * 0.15;
	}
	else if (rarityChance > 70) // - 10%
	{
		obj_ace.defenseMultiplier -= obj_ace.defenseMultiplier * 0.10;
	}
	else // -5%
	{
		obj_ace.defenseMultiplier -= obj_ace.defenseMultiplier * 0.05;
	}
}

function impCooldown() //cooldownReduction
{
	var rarityChance = irandom_range(1, 100);
	if (rarityChance > 90) // + 15%
	{
		obj_ace.cooldownReduction += obj_ace.cooldownReduction * 0.15;
	}
	else if (rarityChance > 70) // + 10%
	{
		obj_ace.cooldownReduction += obj_ace.cooldownReduction * 0.10;
	}
	else // +5%
	{
		obj_ace.cooldownReduction += obj_ace.cooldownReduction * 0.05;
	}
}

function worseCooldown()
{
	var rarityChance = irandom_range(1, 100);
	if (rarityChance > 90) // - 15%
	{
		obj_ace.cooldownReduction -= obj_ace.cooldownReduction * 0.15;
	}
	else if (rarityChance > 70) // - 10%
	{
		obj_ace.cooldownReduction -= obj_ace.cooldownReduction * 0.10;
	}
	else // -5%
	{
		obj_ace.cooldownReduction -= obj_ace.cooldownReduction * 0.05;
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
	if (health > 100)
	{health = 100;}
	
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
		obj_ace.maxHealth += obj_ace.maxHealth * 0.15;
	}
	else if (rarityChance > 70) // + 10%
	{
		obj_ace.maxHealth += obj_ace.maxHealth * 0.10;
	}
	else // +5%
	{
		obj_ace.maxHealth += obj_ace.maxHealth * 0.05;
	}
	
	obj_ace.maxHealth = round(obj_ace.maxHealth);
}
function decMaxHealth() 
{
	var rarityChance = irandom_range(1, 100);
	if (rarityChance > 90) // +-15%
	{
		obj_ace.maxHealth -= obj_ace.maxHealth * 0.15;
	}
	else if (rarityChance > 70) // - 10%
	{
		obj_ace.maxHealth -= obj_ace.maxHealth * 0.10;
	}
	else // -5%
	{
		obj_ace.maxHealth -= obj_ace.maxHealth * 0.05;
	}
	
	obj_ace.maxHealth = round(obj_ace.maxHealth);
}


function incMovement() 
{
	var rarityChance = irandom_range(1, 100);
	if (rarityChance > 90) // + 15%
	{
		obj_ace.x_moveSpeed += obj_ace.x_moveSpeed * 0.15;
	}
	else if (rarityChance > 70) // + 10%
	{
		obj_ace.x_moveSpeed += obj_ace.x_moveSpeed * 0.10;
	}
	else // +5%
	{
		obj_ace.x_moveSpeed += obj_ace.x_moveSpeed * 0.05;
	}
}

function decMovement() 
{
	var rarityChance = irandom_range(1, 100);
	if (rarityChance > 90) // - 15%
	{
		obj_ace.x_moveSpeed -= obj_ace.x_moveSpeed * 0.15;
	}
	else if (rarityChance > 70) // - 10%
	{
		obj_ace.x_moveSpeed -= obj_ace.x_moveSpeed * 0.10;
	}
	else // -5%
	{
		obj_ace.x_moveSpeed -= obj_ace.x_moveSpeed * 0.05;
	}
}

function slash()
{}
