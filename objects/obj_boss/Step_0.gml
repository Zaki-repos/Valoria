if (enemy_health <= 0)
{
	audio_play_sound(sfx_enemy_death, 2, 0);
	instance_destroy(self);
}