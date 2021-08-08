/// @description Insert description here
// You can write your code in this editor

/*
laser_scale = 12;

draw_set_color(c_yellow);
draw_line_width(0, y, x, y, laser_scale);

draw_set_color(c_white);
draw_line_width(0, y, x, y, laser_scale * 0.75);
*/

var alpha = timer / timer_max * 2;
var scale = 1 + (timer_max - timer) / timer_max * 0.5;
draw_sprite_ext(sprite_index, 0, x, y, image_xscale, scale, 0, image_blend, alpha);