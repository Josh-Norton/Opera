/// @description Insert description here
// You can write your code in this editor

if ( instance_exists(obj_ufo) ) {
	var ldx = lengthdir_x(12, myDirection);
	var ldy = lengthdir_y(12, myDirection);
	
	var ii = instance_create_layer(x + ldx,y + ldy, "Instances", obj_tank_bullet);
	ii.direction = myDirection;
	ii.speed = 4;
	ii.image_angle = ii.direction;
}