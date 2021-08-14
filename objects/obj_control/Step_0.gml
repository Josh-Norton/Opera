/// @description Insert description here
// You can write your code in this editor
var player_layer = layer_get_id("Instances");

if ( obj_global_state.players == 1) {

	if (keyboard_check(ord("W"))) {
		obj_global_state.players = 2;
		instance_create_layer(32, room_height / 2 + 32, player_layer, obj_player2);
	}
}

if (keyboard_check(vk_escape)) {
	room_goto_trans(rm_title);
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
		
		if (keyboard_check(ord("R")) || keyboard_check(vk_up) || mouse_check_button_pressed(mb_left) ) {
			obj_global_state.players = 1;
			room_goto_trans(room);
		}
	}
}
else if (!instance_exists(obj_ufo)) {
	audio_stop_sound(mus_main);
	
	game_over_timer--;
	if (game_over_timer <= 0) {
		audio_play_sound(snd_text, 0, false);
		
		game_over = true;
	
		total_points = points[0] + points[1];
	}
}

if (tutorial > 0) {
	var ready = true;
	
	if (instance_exists(obj_player1)) {
		if (!obj_player1.ready) {
			ready = false;
		}
	}
	if (instance_exists(obj_player2)) {
		if (!obj_player2.ready) {
			ready = false;
		}
	}
	
	tutorial--;
	if (!ready) {
		tutorial = 300;
	}
}
else {
	obj_global_state.tutorial = false;
}