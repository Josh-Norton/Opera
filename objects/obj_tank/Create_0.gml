/// @description Insert description here
// You can write your code in this editor

event_inherited();

part_sprite = spr_tank_part;

hp_max = 3;
hp = hp_max;
points_value = 500;

myDirection = 180;

if ( instance_exists(obj_terrain_generator) ){
	y = room_height - (obj_terrain_generator.height) - sprite_height;	
}

gravity_direction = 270;
gravity = 0.2;

alarm[1] = 60;