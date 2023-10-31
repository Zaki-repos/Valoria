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
		[cards.DefenseDown, "Defense Decreased", 0, decDefense()]
	]

	global.num_passive_cards = array_length(global.passiveCards);
	
	global.activeCards = 
	[
		["You received Slash", 1]
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
}

function decAttack()
{
	
}

function incDefense()
{}

function decDefense()
{}

