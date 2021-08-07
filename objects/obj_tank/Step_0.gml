/// @description Insert description here
// You can write your code in this editor

if ( instance_exists(obj_ufo)) {
	myDirection = point_direction(x,y,obj_ufo.x, obj_ufo.y);	
}

x -= 2;

if ( vspeed > 4) {
	vspeed = 4;	
}
