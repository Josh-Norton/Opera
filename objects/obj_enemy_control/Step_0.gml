/// @description Insert description here
// You can write your code in this editor
timer--;
if (timer <= 0) {
	var bottom = room_height - obj_terrain_generator.height - 32;
	var enemy_id = irandom(ds_list_size(curr_enemy_pool) - 1);
	var enemy = ds_list_find_value(curr_enemy_pool, enemy_id);
	
	instance_create_layer(room_width + 32, random(bottom), enemy_layer, enemy);
	
	timer = timer_max;
}

pool_timer--;
if (pool_timer <= 0) {
	enemy_pool_id++;
	
	if (enemy_pool_id < ds_list_size(enemy_pool)) {
		var new_enemy = ds_list_find_value(enemy_pool, enemy_pool_id);
	
		ds_list_add(curr_enemy_pool, new_enemy);
	}
	
	pool_timer = pool_timer_max;
}