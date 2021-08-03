/// @description Insert description here
// You can write your code in this editor
timer--;
if (timer <= 0) {
	var star1 = instance_create_layer(room_width, random(room_height), layer_stars1, obj_star);
	star1.x_speed = 2;
	
	var star2 = instance_create_layer(room_width, random(room_height), layer_stars2, obj_star);
	star2.x_speed = 1;
	
	timer = timer_max;
}

rock_timer--;
if (rock_timer <= 0) {
	instance_create_layer(room_width + 32, random(room_height), "Instances", obj_rock);
	rock_timer = rock_timer_max;
}