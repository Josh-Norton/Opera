/// @description Insert description here
// You can write your code in this editor

lay_id = layer_get_id ("Background");
back_id = layer_background_get_id (lay_id);
layer_background_blend (back_id, c_white);

with(obj_powerup_control){
	alarm[0] = 20;
	
}
