if(hp2 <= 0)
{
	instance_destroy();
}

if (distance_to_object(obj_player) < 1000 && obj_player.x < x)
{
	if(slowdown2 <= 0 )
	{
		instance_create_layer(x, y, "BulletsLayer", obj_bullet_navy);

		slowdown2 = 70;
	}
}
slowdown2 -= 1;