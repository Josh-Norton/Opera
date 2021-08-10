/// @description Insert description here
// You can write your code in this editor
var ldx = lengthdir_x(spd, dir);
var ldy = lengthdir_y(spd, dir);

x += ldx;
y += ldy;

alpha -= 0.1;
if (alpha <= 0) {
	instance_destroy();
}