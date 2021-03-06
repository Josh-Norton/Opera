/// @description Insert description here
// You can write your code in this editor
event_user(1);

if (up_button) {
	ready = true;
	y_speed -= 0.25;
	obj_control.tutorial--;
}
else if (ready) {
	y_speed += 0.125;
}

if (abs(y_speed) > 4) {
	y_speed = sign(y_speed) * 4;
}

//x += x_speed;
y += y_speed;

if (x > room_width) {
	x -= room_width;
}
if (y < 0) {
	y = 0;
	y_speed = 0;
}
if (y > room_height) {
	y = room_height;
	y_speed = 0;
}

laser_timer--;
if (laser_timer <= 0 && shoot_button && ready) {
	var sound = audio_play_sound(snd_shoot, 0, false);
	audio_sound_pitch(sound, random_range(0.7, 1));
	
	var dir = point_direction(0, 0, x_speed, y_speed / 4);
	var ldx = lengthdir_x(16, dir);
	var ldy = lengthdir_y(16, dir);
	
	var laser = instance_create_layer(x + ldx, y + ldy, "Instances", obj_laser);
	laser.dir = dir;
	laser.player = player;

	if (triple_timer > 0) {
		laser = instance_create_layer(x + ldx, y + ldy, "Instances", obj_laser);
		laser.dir = dir - 15;
		laser.player = player;
		
		laser = instance_create_layer(x + ldx, y + ldy, "Instances", obj_laser);
		laser.dir = dir + 15;
		laser.player = player;
	}

	laser_timer = laser_timer_max;
	if (rapid_timer > 0) {
		laser_timer /= 2;
	}
}

flash_timer--;
if (flash_timer <= 0) {
	flash = !flash;
	
	flash_timer = flash_timer_max;
}

flashing_timer--;
if (flashing_timer <= 0) {
	flashing_timer = 0;
}

if (hp <= 0) {
	instance_destroy();
}

if (shield_timer > 0) {
	shield_timer--;
	
	var enemy = collision_circle(x, y, shield_radius, obj_enemy, false, true);
	with (enemy) {
		event_user(1);
	}
}
if (rapid_timer > 0) {
	rapid_timer--;
}
if (triple_timer > 0) {
	triple_timer--;
}