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
	
	var game_over_text = "";
	
	game_over_text += "GAME OVER\n"
	game_over_text += "\n";
	game_over_text += "Highscore\n";
	game_over_text += string(highscore) + "\n";
	game_over_text += "\n";
	game_over_text += "\n";
	game_over_text += "\n";
	game_over_text += "\n";
	game_over_text += "Total Score\n";
	game_over_text += string(total_points) + "\n";
	game_over_text += "\n";
	game_over_text += "Press R to restart\n";
	game_over_text += "Press Esc to exit";
	
	draw_text(room_width / 2, room_height / 2, game_over_text);
	
	draw_text(room_width / 2 - 80, room_height / 2 - 8, "Player 1 Score\n" + string(points[0]));
	
	var p2_score = "-";
	if (points[1] > 0) {
		p2_score = string(points[1]);
	}
	
	draw_text(room_width / 2 + 80, room_height / 2 - 8, "Player 2 Score\n" + p2_score);
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