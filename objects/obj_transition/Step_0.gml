/// @description Insert description here
// You can write your code in this editor
wipe += 0.1;

if (wipe >= 0.1 && goto = true) {
	goto = false;
	draw_flush();
	room_goto(target);
}
if (wipe >= 1) {
	instance_destroy();
}