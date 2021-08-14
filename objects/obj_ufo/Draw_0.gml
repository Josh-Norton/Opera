/// @description Insert description here
// You can write your code in this editor

if ( rescue > 0 ) {
	rescue -= 1;
	var varAlpha = rescue/30;
	draw_sprite_ext(spr_ufo_beam, 1, x,y,1,1,0,c_white,varAlpha);
}
if (flash || flashing_timer <= 0) {
	var angle = point_direction(0, 0, x_speed, y_speed / 4);
	draw_sprite_ext(sprite_index, player - 1, x, y, 1, 1, angle, image_blend, image_alpha);
	
	if (shield_timer > 0) {
		var alpha = min(0.5, shield_timer / powerup_timer_max * 2);
		draw_set_alpha(alpha);
		
		draw_set_color(c_white);

		draw_circle(x, y, 20, false);
		draw_set_alpha(1);
	}
}

