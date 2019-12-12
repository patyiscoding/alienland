if room==2{
	if(keyboard_check_pressed(vk_space)){
		room_goto(global.roomcamefrom);
	}

	if(keyboard_check_pressed(ord("R"))){
		room_goto(0);
		game_restart();
	}

	if(keyboard_check_pressed(vk_escape)){
		game_end()
	}
}