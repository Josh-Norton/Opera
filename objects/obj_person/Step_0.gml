/// @description Insert description here
// You can write your code in this editor

x -= 1;	

if ( rescued == true ) {
	image_alpha -= 0.02;
	image_xscale -= 0.02;
	image_yscale -= 0.02;
	
	if ( hero != false) {
		move_towards_point(hero.x, hero.y, 1)
	}
	image_speed = 0;
	if ( image_alpha == 0 ) {
		instance_destroy();	
	}
} 