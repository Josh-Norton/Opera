/// @description Insert description here
// You can write your code in this editor

if ( instance_exists(obj_ufo) ) {
	
	var ii = instance_create_layer(x,y, "Instances", obj_enemy_ufo_bullet);
	ii.direction = point_direction(x,y,obj_ufo.x, obj_ufo.y);
	ii.speed = 4;
	ii.image_angle = ii.direction;
}