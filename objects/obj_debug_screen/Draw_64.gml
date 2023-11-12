/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black);
/*draw_text(1050, 10, "X: " + string(obj_ace.x) + " Y: " + string(obj_ace.y) + "\n" + 
			"x-movespeed: " + string(global.x_moveSpeed) + " y-movespeed: " + string(global.y_moveSpeed) + "\n" +
			"Flags: \n" +
			"HG: " + string(obj_ace.has_gravity) + " CJ: " + string(obj_ace.can_jump) + "\n" + 
			"jump: " + string(obj_ace.jump) +  "\n"+
			"Health: " + string(health) + "\n" +
			"Max Health: " + string(global.maxHealth) + "\n" +
			"Attack Mult: " + string(global.attackMultiplier) + "\n" +
			"Def Mult: " + string(global.defenseMultiplier) + "\n" +
			"Cooldown Red: " + string(global.cooldownReduction) + "\n" +
			"Num P-Cards: " + string(obj_ace.numPassiveCards) + "\n" +
			"Num A-Cards: " + string(obj_ace.numActiveCards) + "\n"
			);*/
			
draw_text(1050, 10, "X: " + string(obj_sprout.x) + " Y :" + string(obj_sprout.y) + "\n" + 
					"spawnpos: " + string(obj_sprout.spawn_pos) + "\n" +
					"is alerted: " + string(obj_sprout.is_alerted) + "\n" +
					"is attacking: " + string(obj_sprout.is_attacking) + "\n" +
					"speed: " + string(obj_sprout.speed) + "\n" + 
					"direction: " + string (obj_sprout.direction)
					);