/// @description Insert description here
// You can write your code in this editor
if (charge_timer < charge_timer_max && (charge_timer mod 5 < 3)) {
	draw_set_alpha(0.5);
	
	draw_set_color(c_yellow);
	
	var width = min(4, 4 * (charge_timer_max - charge_timer) / charge_timer);
	draw_line_width(0, y-1, x, y-1, width);
	
	draw_set_alpha(1);
}

draw_self();