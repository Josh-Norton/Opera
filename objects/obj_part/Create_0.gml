/// @description Insert description here
// You can write your code in this editor
image_angle = random(360);
image_speed = 0;
image_index = irandom(2);

dir = random_range(0, 180);
spd = random_range(2, 5);

x_speed = lengthdir_x(spd, dir);
y_speed = lengthdir_y(spd, dir);

grav = 0.25;

if (x < 0) {
	instance_destroy();
}