/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);

draw_set_font(fnt_main);
	
draw_set_halign(1);
draw_set_valign(1);

if (game_over) {
	draw_text(room_width / 2, room_height / 2 - 16, "GAME OVER");
	draw_text(room_width / 2, room_height / 2 + 16, "Press R to restart");
}
else {
	if (instance_exists(obj_player1)) {
		draw_text(32, 16, "HP: " + string(obj_player1.hp));
	}
}