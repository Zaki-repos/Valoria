/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black);
draw_text(1050, 10, "X: " + string(obj_ace.x) + " Y: " + string(obj_ace.y) + "\n" + 
			"x-movespeed: " + string(global.x_moveSpeed) + " y-movespeed: " + string(global.y_moveSpeed) + "\n" +
			"x-in: " + string(obj_ace._xinput) + " y-in: " + string(obj_ace._yinput) + "\n" +
			"Flags: \n" +
			"og: " + string(obj_ace.on_ground) + " cj: " + string(obj_ace.can_jump) + "\n" + 
			"ia: " + string(obj_ace.in_air) + " if: " + string(obj_ace.is_falling) + " ij: " + string(obj_ace.is_jumping) + "\n" + 
			"jump: " + string(obj_ace.jump) +  "\n"+
			"Health: " + string(health) + "\n" +
			"Max Health: " + string(global.maxHealth) + "\n" +
			"Attack Mult: " + string(global.attackMultiplier) + "\n" +
			"Def Mult: " + string(global.defenseMultiplier) + "\n" +
			"Cooldown Red: " + string(global.cooldownReduction) + "\n" +
			"Num P-Cards: " + string(obj_ace.numPassiveCards) + "\n" +
			"Num A-Cards: " + string(obj_ace.numActiveCards) + "\n" +
			"sprite: " + string(curr_sprite) + "\n" +
			"mouse-x: " + string(mouse_x) + " mouse-y: " + string(mouse_y)
			);
			//draw_rectangle(obj_ace.bbox_left,obj_ace.bbox_top,obj_ace.bbox_right,obj_ace.bbox_bottom,false);
			
	/*		
draw_text(750 , 10, "X: " + string(obj_sprout.x) + " Y :" + string(obj_sprout.y) + "\n" + 
					"spawnpos: " + string(obj_sprout.spawn_pos) + "\n" +
					"is alerted: " + string(obj_sprout.is_alerted) + "\n" +
					"is attacking: " + string(obj_sprout.is_attacking) + "\n" +
					"speed: " + string(obj_sprout.speed) + "\n" + 
					"direction: " + string (obj_sprout.direction) + "\n" + 
					"distance form ace: " + string(obj_sprout.distanceFromAceDebug) + "\n" +
					"can dmg: " + string(obj_sprout.can_deal_dmg) + "\n" +
					"ii: " + string(obj_sprout.image_index) + " in: " + string(obj_sprout.image_number)
					);*/