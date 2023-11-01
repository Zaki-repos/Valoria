/// @description Insert description here
// You can write your code in this editor
visible = false;
x = -10;
y = -10;

obj_game_controller.pop_text = pop_up;

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