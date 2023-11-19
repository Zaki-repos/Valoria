//stop animation (temporary)
image_speed = 1;


//default sprout vars
sprout_health = 20;
sprout_dmg = 2;
sprout_movement_speed = 1;

is_alerted = false;
is_attacking = false;
direction_facing = 0;
can_deal_dmg = true;
spawn_pos = x;
x_input = 0;

roamTimer = 0;
roamHoldTimer = 300;

randx = 0;


cam = view_get_camera(0);
cam_x = camera_get_view_x(cam);
cam_w = camera_get_view_width(cam);