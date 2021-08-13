/// @description Insert description here
// You can write your code in this editor
powerup_layer = layer;

powerup_timer_max = 60;//60 * 10;
powerup_timer_var = 60;//60 * 5;
powerup_timer = powerup_timer_max + random(powerup_timer_var);

powerup_list = ds_list_create();
ds_list_add(powerup_list, obj_rapid);
ds_list_add(powerup_list, obj_triple);
ds_list_add(powerup_list, obj_shield);
ds_list_add(powerup_list, obj_nuke);