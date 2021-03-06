/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_main);
	
draw_set_halign(fa_center);
draw_set_valign(fa_center);

if (game_over) {
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	
	draw_rectangle(
		room_width / 2 - game_over_width / 2, 
		room_height / 2 - game_over_height / 2, 
		room_width / 2 + game_over_width / 2, 
		room_height / 2 + game_over_height / 2, 
		false
	);
	
	draw_set_color(c_white);
	draw_set_alpha(1);
	
	draw_rectangle(
		room_width / 2 - game_over_width / 2, 
		room_height / 2 - game_over_height / 2, 
		room_width / 2 + game_over_width / 2, 
		room_height / 2 + game_over_height / 2, 
		true
	);
		
	var line_height = 9;
		
	var game_over_x = room_width / 2;
	var game_over_y = room_height / 2;
	
	if (obj_global_state.browser) {
		game_over_y -= 4;
	}
	
	if (game_over_step > 0) {
		draw_text(game_over_x, game_over_y - 10 * line_height, "GAME OVER");
	}
		
	if (game_over_step > 1) {	
		var hscore = " ";
		if (!flash_highscore || hf) {
			hscore = string(highscore[obj_global_state.players - 1])
		}
		
		var text = "Solo";
		if (obj_global_state.players > 1) {
			text = "Coop";
		}
			
		draw_text(game_over_x, game_over_y - 5 * line_height, "Highscore - " + text + "\n" + hscore);
	}
	
	if (game_over_step > 2) {		
		draw_text(game_over_x - 80, game_over_y, "Player 1 Score\n" + string(points[0]));

		var p2_score = "-";
		if (obj_global_state.players > 1) {
			p2_score = string(points[1]);
		}

		draw_text(game_over_x + 80, game_over_y, "Player 2 Score\n" + p2_score);
	}
	
	if (game_over_step > 3) {		
		var tscore = " ";
		if (!flash_highscore || hf) {
			tscore = string(total_points)
		}
	
		draw_text(game_over_x, game_over_y + 5 * line_height, "Total Score\n" + tscore);
	}
			
	if (game_over_step > 4) {
		draw_text(game_over_x, game_over_y + 10 * line_height, "Press <up> to restart\nPress <Esc> to exit");
	}
}
else {
	draw_set_color(c_white);
	
	draw_text(room_width / 2, 16, string(highscore[obj_global_state.players-1]));
	
	if (instance_exists(obj_player1)) {
		var x_pos = room_width * (1/4);
		
		draw_text(x_pos, 16, string(points[0]));
		
		var spacing = 16;
		var left = (spacing * (obj_player1.hp-1)) / 2;
		
		for (var i = 0; i < obj_player1.hp; i++) {
			draw_sprite_ext(spr_ufo, 0, x_pos -left + spacing * i, 32, 0.5, 0.5, 0, c_white, 1);
		}
	}
	
	if (instance_exists(obj_player2)) {
		var x_pos = room_width * (3/4);
		
		draw_text(x_pos, 16, string(points[1]));
		
		var spacing = 16;
		var left = (spacing * (obj_player2.hp-1)) / 2;
		
		for (var i = 0; i < obj_player2.hp; i++) {
			draw_sprite_ext(spr_ufo, 1, x_pos -left + spacing * i, 32, 0.5, 0.5, 0, c_white, 1);
		}
	}
	
	if ( obj_global_state.players == 1 ) { 
		draw_set_halign(fa_right);
		draw_text(room_width - 12, 16, "Press <W> for Player 2");
	}
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	
	if (tutorial > 0) {
		draw_text(room_width / 2, room_height * (1 / 3), 
			"Player 1:\n" + 
			"Hold <Up> or <Left Mouse Button> to fly up\n" +
			"Release to drop down");
			
		if (obj_global_state.players > 1) {
			draw_text(room_width / 2, room_height * (2 / 3), 
				"Player 2:\n" + 
				"Hold <W> to fly up\n" +
				"Release to drop down");
		}
	}
}