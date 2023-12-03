spawnRandomCard();

//death sound
audio_play_sound(sfx_enemy_death, 2, 0);
instance_create_layer(x,y,"EntityLayer", vfx_blood_splatter);
instance_destroy(self);