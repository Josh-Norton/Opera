/// @description Insert description here
// You can write your code in this editor
powerup_timer--;
if (powerup_timer <= 0) {
	var bottom = room_height - obj_terrain_generator.height - 32;
	
	var powerup_id = irandom(ds_list_size(powerup_list)-1);
	var powerup = ds_list_find_value(powerup_list, powerup_id);
	
	instance_create_layer(room_width + 32, random(bottom), powerup_layer, powerup);
	
	powerup_timer = powerup_timer_max + random(powerup_timer_var);
}