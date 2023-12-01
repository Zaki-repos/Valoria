sprite_fps = sprite_get_speed(sprite_index);
sprite_num = sprite_get_number(sprite_index);

damage_duration = (sprite_num/sprite_fps) * 60;
damage = 5;


damage_per_frame = damage/damage_duration;