/// @description Insert description here
// You can write your code in this editor
if (starting) {
	room_goto_next();
}
else {
	if (mouse_check_button_pressed(mb_left)) {
		starting = true;
	}
}