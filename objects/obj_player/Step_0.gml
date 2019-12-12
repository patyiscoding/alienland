key_right = keyboard_check(vk_right);
key_left = -keyboard_check(vk_left);
key_jump = keyboard_check_pressed(vk_space);
key_jump2 = keyboard_check_pressed(ord("W"));
key_jump3 = keyboard_check_pressed(vk_up);

hsp = moving * movespeed;
if (vsp<10) vsp += grav;

if(place_meeting(x, y+1,obj_bigplatform) || place_meeting(x, y+1,obj_platform2) || place_meeting(x, y+1, obj_blue_enemy) || place_meeting(x, y+1, obj_enemy)){
	vsp = 0;
	if(key_jump || key_jump2 || key_jump3) {
		vsp = -jumpspeed;
	}
}

if(keyboard_check(vk_right) || (keyboard_check(ord("D")))){
	x += walkSpeed;
	image_speed = walkSpeed / 3;
	sprite_index = spr_playerWalkRight;
	if(global.collided = true){
		sprite_index = spr_playerWalkRightWithW;
	}
	moving = 1;
} 

moving = 0;

if(keyboard_check(vk_left)) || (keyboard_check(ord("A"))){
	x -= walkSpeed;
	image_speed = walkSpeed / 3;
	sprite_index = spr_playerWalkLeft;
	if(global.collided = true){
		sprite_index = spr_playerWalkLeftWithW;
	}
	moving = 1;
}

moving = 0;

if(place_meeting(x+hsp, y, obj_platform2))
{
	while(!place_meeting(x+sign(hsp), y, obj_platform2))
	{
		x += sign(hsp); 
	}
	hsp = 0;
}

if(place_meeting(x+hsp, y, obj_wall))
{
	while(!place_meeting(x+sign(hsp), y, obj_wall))
	{
		x += sign(hsp); 
	}
	hsp = 0;
}

if(place_meeting(x+hsp, y, obj_blue_enemy))
{
	while(!place_meeting(x+sign(hsp), y, obj_blue_enemy))
	{
		x += sign(hsp); 
	}
	hsp = 0;
}

if(place_meeting(x+hsp, y, obj_enemy))
{
	while(!place_meeting(x+sign(hsp), y, obj_enemy))
	{
		x += sign(hsp); 
	}
	hsp = 0;
}

if(place_meeting(x+hsp, y, obj_trump))
{
	while(!place_meeting(x+sign(hsp), y, obj_trump))
	{
		x += sign(hsp); 
	}
	hsp = 0;
}
x += hsp;

if(place_meeting(x, y+vsp, obj_platform2))
{
	while(!place_meeting(x, y + sign(vsp), obj_platform2))
	{
		y += sign(vsp); 
	}
	vsp = 0;
}

if(place_meeting(x, y+vsp, obj_wall))
{
	while(!place_meeting(x, y + sign(vsp), obj_wall))
	{
		y += sign(vsp); 
	}
	vsp = 0;
}

if(place_meeting(x, y+vsp, obj_blue_enemy))
{
	while(!place_meeting(x, y + sign(vsp), obj_blue_enemy))
	{
		y += sign(vsp); 
	}
	vsp = 0;
}

if(place_meeting(x, y+vsp, obj_enemy))
{
	while(!place_meeting(x, y + sign(vsp), obj_enemy))
	{
		y += sign(vsp); 
	}
	vsp = 0;
}

if(place_meeting(x, y+vsp, obj_trump))
{
	while(!place_meeting(x, y + sign(vsp), obj_trump))
	{
		y += sign(vsp); 
	}
	vsp = 0;
}
y += vsp;

if(place_meeting(x, y, obj_speed)){
	walkSpeed = 30;
	alarm[0] = 1*room_speed;
}

if(global.collided = true){
	if(mouse_check_button(mb_left)){

		if(slowdown <= 0 )
		{	
			if(collidedfire = false){
				instance_create_layer(x, y, "BulletsLayer", obj_bullet_blue);
			}else{
				instance_create_layer(x, y, "BulletsLayer", obj_bullet_fire_shoot);
				alarm[1] = 5*room_speed;
			}
			slowdown = 30;
		}
	}
	slowdown -= 1;
}

if(keyboard_check(vk_nokey)){
	image_speed = 0;
	image_index = 0;
	moving = 0;
	walkSpeed = 10;	
}

if(keyboard_check(vk_shift)){
	walkSpeed = 15;
}

if(hp >100)
{
	hp = 100;
}

global.roomcamefrom = room; 

if(x > 9600){
	room_goto(1);
}

if(room == 3){
	object_set_visible(obj_player, false);
}

if(x > 8100 && room == 1 && (!instance_exists(obj_trump))){
	room_goto(3);
}

if(room == 3){
	if(keyboard_check_pressed(ord("R"))){
		room_goto(0);
		game_restart();
	}

	if(keyboard_check_pressed(vk_escape)){
		game_end()
	}
}

if(keyboard_check_pressed(vk_escape)){
	room_goto(2);
}

if(hp <= 0)
{
	game_restart();
}