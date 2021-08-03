/// @description Insert description here
// You can write your code in this editor
var up = keyboard_check(vk_up) || mouse_check_button(mb_left);
var shoot = true;//keyboard_check(vk_right);

if (up) {
	y_speed -= 0.25;
}
else {
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
}
if (y > room_height) {
	y = room_height;
}

laser_timer--;
if (laser_timer <= 0 && shoot) {
	var sound = audio_play_sound(snd_shoot, 0, false);
	audio_sound_pitch(sound, random_range(0.7, 1));
	
	var dir = point_direction(0, 0, x_speed, y_speed / 4);
	var ldx = lengthdir_x(16, dir);
	var ldy = lengthdir_y(16, dir);
	
	var laser = instance_create_layer(x + ldx, y + ldy, "Instances", obj_laser);
	laser.dir = dir;
	
	laser_timer = laser_timer_max;
}