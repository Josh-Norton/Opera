/// @description Insert description here
// You can write your code in this editor

event_inherited();

if ( instance_exists(obj_ufo)) {
	myDirection = point_direction(x,y,obj_ufo.x, obj_ufo.y);	
}

x -= 2;

if ( vspeed > 4) {
	vspeed = 4;	
}
