if(room != 3) {
	draw_self();
	draw_healthbar(x-100, y-270, x+100, y-290, hp, c_black, c_red, c_green, 0, true, false);
}
if(room == 1){
	draw_set_colour(c_white);
	draw_set_font(font0);
		if (alarm[0] != -1) {
			draw_text(view_xview[view_current] - 30, room_height / 2, "LEVEL 2");
		}
}

if(room == 3){
	draw_set_colour(c_white);
	draw_set_font(font1);
	draw_text((room_width / 2)-250, room_height / 2, "Congratulations! YOU WON!");
}

/*if instance_exists(obj_player){
draw_sprite(spr_health_red, 1, obj_player.x - 75, obj_player.y - 280);
draw_sprite_ext(spr_health_green, 1, obj_player.x - 75, obj_player.y - 280, obj_player.hp/10, 1, 0, c_white, 1);
//draw_sprite(spr_health_border, 1, obj_player.x - 105, obj_player.y - 300); 
}
view_xview[view_current] + 30
*/