/// @description Insert description here
// You can write your code in this editor
rock_timer--;
fire_rock_timer--;
tank_timer--;
missile_timer--;

if (rock_timer <= 0) {
	instance_create_layer(room_width + 32, random(room_height-obj_terrain_generator.height-32), "Instances", obj_rock);
	rock_timer = rock_timer_max;
}
if (fire_rock_timer <= 0) {
	instance_create_layer(room_width + 32, random(room_height-obj_terrain_generator.height-32), "Instances", obj_rock_splits);
	fire_rock_timer = fire_rock_timer_max;
}


if (tank_timer <= 0) {
	instance_create_layer(room_width + 32, room_height-obj_terrain_generator.height-32, "Instances", obj_tank);
	tank_timer = tank_timer_max;
}

if (missile_timer <= 0) {
	instance_create_layer(room_width + 32, random(room_height-obj_terrain_generator.height-32), "Instances", obj_missile);
	missile_timer = missile_timer_max;
}

