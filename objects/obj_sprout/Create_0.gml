//stop animation (temporary)
image_speed = 1;

//gravity
_y_velocity = 0;
on_ground = false;

//default sprout vars
enemy_health = 20;
sprout_movement_speed = 1;

is_alerted = false;
is_attacking = false;
direction_facing = 0;
can_deal_dmg = true;

roamTimer = 0;
roamHoldTimer = 300;

randx = 0;


cam = view_get_camera(0);
cam_x = camera_get_view_x(cam);
cam_w = camera_get_view_width(cam);