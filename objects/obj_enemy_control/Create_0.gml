/// @description Insert description here
// You can write your code in this editor
enemy_layer = layer_create(10);

enemy_pool = ds_list_create();
ds_list_add(enemy_pool,
	obj_rock,
	obj_rock_splits,
	obj_tank,
	obj_bouncer,
	obj_missile
);

enemy_pool_id = 0;

curr_enemy_pool = ds_list_create();
ds_list_add(curr_enemy_pool, obj_rock);

timer_max = 120;
timer = timer_max;
timer_scale = 1;
timer_scale_incr = 0.1;

diff_timer_max = 120;
diff_timer = diff_timer_max;

// Add a new enemy every 15 seconds
pool_timer_max = 15 * 60;
pool_timer = pool_timer_max;

// Give 3 seconds before enemies start spawning
start_timer_max = 3 * 60;
start_timer = start_timer_max;