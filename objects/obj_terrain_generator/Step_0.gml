/// @description Insert description here
// You can write your code in this editor
timer -= x_speed;
if (timer <= 0) {
	var mid = height_max / 2;
	var chance = terrain_dir * (height - mid) / mid;
	
	if (random(1) < chance) {
		terrain_dir *= -1;
	}
	
	height += 4 * terrain_dir;
	
	var terrain = instance_create_layer(room_width, room_height, terrain_layer, obj_terrain);
	terrain.x_speed = x_speed;
	terrain.height = height;
	
	timer = timer_max;
}