/// @description Insert description here
// You can write your code in this editor
if (start_timer > 0) {
	start_timer--;
}
else {
	var bottom = room_height - obj_terrain_generator.height - 32;
	
	if(instance_exists(obj_enemy_boss_super_tank)){
		return;
	}
	boss_timer --;
	

	timer -= timer_scale;
	while (timer <= 0) {
		var enemy_id = irandom(ds_list_size(curr_enemy_pool) - 1);
		var enemy = ds_list_find_value(curr_enemy_pool, enemy_id);
	
		instance_create_layer(room_width + 32, random(bottom), enemy_layer, enemy);
		timer += timer_max;
	}

	if (!obj_control.game_over) {
		diff_timer--;
		if (diff_timer < 0) {
			timer_scale += timer_scale_incr;
			diff_timer = diff_timer_max;
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
	}
	
	if(boss_timer==0 ){
		instance_create_layer(room_width + 32, random(room_height - obj_terrain_generator.height - 32), enemy_layer, obj_enemy_boss_super_tank);
		
	}

	goody_timer -= 1;
	if ( goody_timer == 0 ){
		goody_timer = max_goody;
			instance_create_layer(room_width + 32, room_height, enemy_layer, obj_person);
			
	
	}
	
	power_up_timer -= 1;
	if(power_up_timer == 0){
		power_up_timer = max_power_up_timer;
	}
	
	shield_timer -= 1;

	if(shield_timer ==0){
		shield_timer = max_shield_timer;
		instance_create_layer(room_width + 32, random(bottom), enemy_layer, obj_shield);
	}
	
	
}