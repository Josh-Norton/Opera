/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left)) {
	obj_global_state.players = 1;
	room_goto_next();
}
if (keyboard_check_pressed(vk_shift)) {
	obj_global_state.players = 2;
	room_goto_next();
}