//hides the card; moves off screen; adds to num passive cards
visible = false;
x = -50;
y = -50;
obj_ace.numPassiveCards += 1;

//creates a pop-up
var hud_pop_up = instance_create_layer(-50, -50, "HUD", hud_popups);
hud_pop_up.pop_up = pop_up;

//determines the action to perform based on the type
switch(cardType)
{
	case cards.AttackUp:
	incAttack();
	break;
	case cards.AttackDown:
	decAttack();
	break;
	case cards.DefenseUp:
	incDefense();
	break;
	case cards.DefenseDown:
	decDefense();
	break;
	case cards.CooldownUp:
	impCooldown();
	break;
	case cards.CooldownDown:
	worseCooldown();
	break;
	case cards.HealthUp:
	incHealth();
	break;
	case cards.HealthDown:
	decHealth();
	break;
	case cards.MaxHealthUp:
	incMaxHealth();
	break;
	case cards.MaxHealthDown:
	decMaxHealth();
	break;
	case cards.MovementUp:
	incMovement();
	break;
	case cards.MovementDown:
	decMovement();
	break;
}

