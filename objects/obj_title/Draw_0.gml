/// @description Insert description here
// You can write your code in this editor
draw_set_halign(1);
draw_set_valign(1);

draw_set_color($3cd070);

draw_set_font(fnt_title);

draw_text(room_width / 2, room_height * (2/5), " \nAliens");

draw_set_color(c_orange);

draw_set_font(fnt_title2);

draw_text(room_width / 2, room_height * (2/5), "Cats\n ");

draw_set_color(c_white);

draw_set_font(fnt_main);

draw_text(room_width / 2, room_height * (2/5) - 4, "VS");
	
draw_text(room_width / 2, room_height * (3/4), "Press <up> or <left mouse button> for 1 Player\nPress <w> for 2 Player");

draw_text(room_width * (1 / 4), 24, "Highscore - Solo\n" + string(highscore[0]));
draw_text(room_width * (3 / 4), 24, "Highscore - Coop\n" + string(highscore[1]));