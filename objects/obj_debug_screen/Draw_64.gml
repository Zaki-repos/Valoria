/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black);
draw_text(1050, 10, "X: " + string(obj_ace.x) + " Y: " + string(obj_ace.y) + "\n" + 
			"x-movespeed: " + string(global.x_moveSpeed) + " y-movespeed: " + string(global.y_moveSpeed) + "\n" +
			"Flags: \n" +
			"HG: " + string(obj_ace.has_gravity) + " CJ: " + string(obj_ace.can_jump) + "\n" + 
			"jump: " + string(obj_ace.jump) +  "\n"+
			"Pop Up:" + obj_game_controller.pop_text + "\n" + 
			"Health: " + string(health) + "\n" +
			"Max Health: " + string(global.maxHealth) + "\n" +
			"Attack Mult: " + string(global.attackMultiplier) + "\n" +
			"Def Mult: " + string(global.defenseMultiplier) + "\n" +
			"Cooldown Red: " + string(global.cooldownReduction) + "\n"
			);

