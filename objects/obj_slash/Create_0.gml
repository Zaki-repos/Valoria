sprite_fps = sprite_get_speed(sprite_index);
sprite_num = sprite_get_number(sprite_index);

damage_duration = (sprite_num/sprite_fps) * 60;
damage = 5;

audio_play_sound(sfx_slash, 2 , 0);

damage_per_frame = damage/damage_duration;