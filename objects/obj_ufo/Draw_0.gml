/// @description Insert description here
// You can write your code in this editor
if (flash || flashing_timer <= 0) {
	var angle = point_direction(0, 0, x_speed, y_speed / 4);
	draw_sprite_ext(sprite_index, player - 1, x, y, 1, 1, angle, image_blend, image_alpha);
}