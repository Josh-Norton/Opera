/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(vk_escape)) {
	room_goto(rm_title);
}

if (game_over) {
	hf_timer--;
	if (hf_timer <= 0) {
		hf_timer = hf_timer_max;
		hf = !hf;
	}
	
	if (game_over_step < game_over_step_max) {
		game_over_timer2--;
		if (game_over_timer2 <= 0) {
			audio_play_sound(snd_text, 0, false);
			
			if (game_over_step > 3) {	
				if (total_points > highscore) {
					audio_stop_sound(snd_text);
					audio_play_sound(snd_highscore, 0, false);
					
					highscore = total_points;
					flash_highscore = true;
		
					ini_open(fname);
					ini_write_real(section, key, highscore);
					ini_close();
				}
			}
			
			game_over_step++;
			game_over_timer2 = game_over_timer2_max;
		}
	}
	else {
		
		if (keyboard_check(ord("R"))) {
			room_restart();
		}
	}
}
else if (!instance_exists(obj_ufo)) {
	game_over_timer--;
	if (game_over_timer <= 0) {
		audio_play_sound(snd_text, 0, false);
		
		game_over = true;
	
		total_points = points[0] + points[1];
	}
}