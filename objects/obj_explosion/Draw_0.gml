/// @description Insert description here
// You can write your code in this editor
var color = obj_control.p1_color;
if (player == 1) {
	color = obj_control.p2_color;
}
	
draw_set_color(color);

draw_line_width(x - 1000, y - 1000, x + 1000, y + 1000, width);
draw_line_width(x - 1000, y + 1000, x + 1000, y - 1000, width);
draw_line_width(x - 1000, y, x + 1000, y, width);
draw_line_width(x, y - 1000, x, y + 1000, width);