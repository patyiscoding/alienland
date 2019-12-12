if(hp3 <= 0)
{
	instance_destroy();
}
if(distance_to_object(obj_player) < 1300) && (obj_player.x < x)
{
	if(slowdown3 <= 0 )
	{	
		image_index = slowdown3;
		instance_create_layer(x, y, "BulletsLayer", obj_bullet_navy);

		slowdown3 = 70;
	}
}

if(obj_player.x > x){
	image_speed = 0;
	image_index = 0;
}
slowdown3 -= 1;