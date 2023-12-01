if (enemy_health <= 0)
{
	//animation
	//sound
	instance_destroy(self);
}
else if (enemy_health < 10)
{
	image_xscale = 0.25;
	image_yscale = 0.25;
}
else if (enemy_health < 20)
{
	image_xscale = 0.75;
	image_yscale = 0.75;
}