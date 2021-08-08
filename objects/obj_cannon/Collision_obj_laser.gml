/// @description Insert description here
// You can write your code in this editor
event_inherited();

for (var i = 0; i < 5; i++) {
	var part = instance_create_layer(x, y, "Instances", obj_rock_part);
	part.sprite_index = spr_cannon_part;
}