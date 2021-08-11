/// @description Insert description here
// You can write your code in this editor
var color = obj_control.p1_color;
if (player == 1) {
	color = obj_control.p2_color;
}

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, color, alpha);