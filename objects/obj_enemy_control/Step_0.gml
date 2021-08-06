/// @description Insert description here
// You can write your code in this editor
rock_timer--;
if (rock_timer <= 0) {
	instance_create_layer(room_width + 32, random(room_height), "Instances", obj_rock);
	rock_timer = rock_timer_max;
}