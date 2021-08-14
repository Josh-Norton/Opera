/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_up)) {
	obj_global_state.players = 1;
	
	room_goto_trans(rm_main);
}
if (keyboard_check_pressed(vk_shift) || keyboard_check_pressed(ord("W"))) {
	obj_global_state.players = 2;
	
	room_goto_trans(rm_main);
}