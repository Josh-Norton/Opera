/// @description Insert description here
// You can write your code in this editor

if ( instance_exists(obj_ufo) ) {
	
	var ii = instance_create_layer(x+10,y+10, "Instances", obj_enemy_ufo_bullet);
	ii.direction = point_direction(x+10,y+10,obj_ufo.x, obj_ufo.y);
	ii.speed = 4;
	ii.image_angle = ii.direction;
	
	var ii = instance_create_layer(x-10,y-10, "Instances", obj_enemy_ufo_bullet);
	ii.direction = point_direction(x-10,y-10,obj_ufo.x, obj_ufo.y);
	ii.speed = 4;
	ii.image_angle = ii.direction;
	
	alarm[1] = irandom_range(30, 45);
	
}