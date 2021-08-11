/// @description Insert description here
// You can write your code in this editor

var p_dir = 180;

layer_stars = layer;

var p_chance = -200;
var p1_speed = 0.05;
var p2_speed = 0.025;
var p1_alpha = 0.8;
var p2_alpha = 0.5;

ps = part_system_create();

part_system_layer(ps, layer_stars);

pt1 = part_type_create();

part_type_speed(pt1, p1_speed, p1_speed, 0, 0);
part_type_direction(pt1, p_dir, p_dir, 0, 0);
part_type_life(pt1, room_width / p1_speed, room_width / p1_speed);
part_type_alpha1(pt1, p1_alpha);

pt2 = part_type_create();

part_type_speed(pt2, p2_speed, p2_speed, 0, 0);
part_type_direction(pt2, p_dir, p_dir, 0, 0);
part_type_life(pt2, room_width / p2_speed, room_width / p2_speed);
part_type_alpha1(pt2, p2_alpha);

pe1 = part_emitter_create(ps);

part_emitter_region(ps, pe1, room_width, room_width, 0, room_height, ps_shape_line, ps_distr_linear);
part_emitter_stream(ps, pe1, pt1, p_chance);

pe2 = part_emitter_create(ps);

part_emitter_region(ps, pe2, room_width, room_width, 0, room_height, ps_shape_line, ps_distr_linear);
part_emitter_stream(ps, pe2, pt2, p_chance);

for (var i = 0; i < room_width; i+= p2_speed) {
	part_system_update(ps);
}