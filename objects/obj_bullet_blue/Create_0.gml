if(mouse_x > obj_player.x) && obj_player.sprite_index == spr_playerWalkRightWithW{
direction = point_direction(x, y, mouse_x, mouse_y);
direction = direction + random_range(-4, 4);
speed = 16;
image_angle = direction;
}

if(mouse_x > obj_player.x) && obj_player.sprite_index == spr_playerWalkLeftWithW{
	instance_destroy();
}

if(mouse_x < obj_player.x) && obj_player.sprite_index == spr_playerWalkLeftWithW{
direction = point_direction(x, y, mouse_x, mouse_y);
direction = direction + random_range(-4, 4);
speed = 16;
image_angle = direction;
}

if(mouse_x < obj_player.x) && obj_player.sprite_index == spr_playerWalkRightWithW{
	instance_destroy();
}