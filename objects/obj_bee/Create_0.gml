//stop animation (temporary)
image_speed = 1;

//gravity
_y_velocity = 0;
on_ground = false;

//default sprout vars
enemy_health = 20;
bee_movement_speed = 1;


is_alerted = false;
is_tucking = false;
is_rolling = false;
is_attacking = false;

direction_facing = 0;
can_deal_dmg = true;

roamTimer = 0;
roamHoldTimer = 300;

attack_roll_count = 0;
attack_roll_num = 10;

randx = 0;
randy = 0;

cam = view_get_camera(0);
cam_x = camera_get_view_x(cam);
cam_w = camera_get_view_width(cam);
cam_y = camera_get_view_y(cam);
cam_h = camera_get_view_height(cam);
