/// @description Insert description here
// You can write your code in this editor
if (timer mod 10 > 2) {
	draw_set_color(c_white);

	draw_set_font(fnt_main);
	
	draw_set_halign(1);
	draw_set_valign(1);

	draw_text(x, y, value);
}