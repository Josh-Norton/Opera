/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(vk_escape)) {
	room_goto(rm_title);
}

if (game_over) {
	if (keyboard_check(ord("R"))) {
		room_restart();
	}
}
else if (!instance_exists(obj_ufo)) {
	game_over_timer--;
	if (game_over_timer <= 0) {
		game_over = true;
	
		total_points = points[0] + points[1];
	
		if (total_points > highscore) {
			highscore = total_points;
		
			ini_open(fname);
			ini_write_real(section, key, highscore);
			ini_close();
		}
	}
}