/// @description Insert description here
// You can write your code in this editor
draw_set_color(color);

draw_set_font(fnt_powerup);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x, y, char);

draw_set_alpha(2 - pulse * 2);

draw_text_transformed(x, y, char, pulse * pulse_scale, pulse * pulse_scale, 0);

draw_set_alpha(1);