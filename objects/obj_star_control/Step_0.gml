/// @description Insert description here
// You can write your code in this editor
timer--;
var tempspeed = choose(0.2,0.4);//random(1);//+2;

if (timer <= 0) {
	var star1 = instance_create_layer(room_width, random(room_height), layer_stars1, obj_star);
	star1.x_speed = tempspeed;
	
	var star2 = instance_create_layer(room_width, random(room_height), layer_stars2, obj_star);
	star2.x_speed = tempspeed;
	
	timer = timer_max;
}