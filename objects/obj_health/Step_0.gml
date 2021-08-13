/// @description Insert description here
// You can write your code in this editor
x += x_speed;

pulse += 0.05;
if (pulse > 1) {
	frame++;
	pulse = 0;
}