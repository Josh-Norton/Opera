/// @description Insert description here
// You can write your code in this editor
if (game_over) {
	draw_set_color(c_white);
	
	draw_set_halign(1);
	draw_set_valign(1);
	
	draw_text(room_width / 2, room_height / 2 - 16, "GAME OVER");
	draw_text(room_width / 2, room_height / 2 + 16, "Press R to restart");
}