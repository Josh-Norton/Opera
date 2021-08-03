/// @description Insert description here
// You can write your code in this editor
if (point_distance(x, y, mouse_x, mouse_y) > 8) {
	facing = point_direction(x, y, mouse_x, mouse_y);
	
	var ldx = lengthdir_x(8, facing);
	var ldy = lengthdir_y(8, facing);
	
	x += ldx;
	y += ldy;
}