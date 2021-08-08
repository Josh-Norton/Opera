/// @description Insert description here
// You can write your code in this editor
draw_set_halign(1);
draw_set_valign(1);

draw_set_color($3cd070);

draw_set_font(fnt_title);

draw_text(room_width / 2, room_height * (1/3), "UFO Game");

draw_set_color(c_white);

draw_set_font(fnt_main);
	
draw_text(room_width / 2, room_height * (2/3), "Press Space for 1 Player\nPress Shift for 2 Player");