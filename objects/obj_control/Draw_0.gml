/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_main);
	
draw_set_halign(1);
draw_set_valign(1);

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
	var game_over_y = room_height / 2 - (19 * line_height) / 2;
	
	if (game_over_step > 0) {
		draw_text(game_over_x, game_over_y, "GAME OVER");
	}
		
	if (game_over_step > 1) {
		game_over_y += 4*line_height;
		
		var hscore = " ";
		if (!flash_highscore || hf) {
			hscore = string(highscore)
		}
			
		draw_text(game_over_x, game_over_y, "Highscore\n" + hscore);
	}
	
	if (game_over_step > 2) {
		game_over_y += 5 * line_height;
		
		draw_text(game_over_x - 80, game_over_y, "Player 1 Score\n" + string(points[0]));

		var p2_score = "-";
		if (points[1] > 0) {
			p2_score = string(points[1]);
		}

		draw_text(game_over_x + 80, game_over_y, "Player 2 Score\n" + p2_score);
	}
	
	if (game_over_step > 3) {
		game_over_y += 5 * line_height;
		
		var tscore = " ";
		if (!flash_highscore || hf) {
			tscore = string(total_points)
		}
	
		draw_text(game_over_x, game_over_y, "Total Score\n" + tscore);
	}
			
	if (game_over_step > 4) {
		game_over_y += 5 * line_height;
	
		draw_text(game_over_x, game_over_y, "Press R to restart\nPress Esc to exit");
	}
}
else {
	draw_set_color(c_white);
	
	draw_text(room_width / 2, 16, string(highscore));
	
	if (instance_exists(obj_player1)) {
		draw_set_halign(fa_left);
		draw_text(12, 16, string(points[0]));
		draw_text(12, 32, "HP: " + string(obj_player1.hp));
	}
	
	if (instance_exists(obj_player2)) {
		draw_set_halign(fa_right);
		draw_text(room_width - 12, 16, string(points[1]));
		draw_text(room_width - 12, 32, "HP: " + string(obj_player2.hp));
	}
}