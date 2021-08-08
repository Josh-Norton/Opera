/// @description Insert description here
// You can write your code in this editor
event_inherited();

if (instance_exists(obj_ufo)) {
	target_y = obj_ufo.y;
}

y_dir = 1;
if (y > target_y) {
	y_dir = -1;
}

y_speed += accel * (target_y - y) / room_height * 2;

if (abs(y_speed) > y_speed_max) {
	y_speed = y_speed_max * sign(y_speed);
}

y += y_speed;
x -= x_speed;

if (y < 0) {
	y = 0;
	y_speed = 0.5;
}

attack_timer--;
if (attack_timer <= 0) {
	charge_timer--;
	if (charge_timer <= 0) {
		charge_timer = charge_timer_max;
		
		// attack
		instance_create_layer(x, y, layer, obj_giga_laser);
		
		attack_timer = attack_timer_max;
	}
}