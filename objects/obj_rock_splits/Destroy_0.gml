/// @description Insert description here
// You can write your code in this editor
event_inherited();

for (var i = 0; i < 5; i++) {
	instance_create_layer(x, y, "Instances", obj_rock_part);
}

var rock = instance_create_layer(x, y+random(30), "Instances", obj_rock_splits_parts);

rock.speed = 3;
rock.direction = 230;
rock = instance_create_layer(x, y-random(30), "Instances", obj_rock_splits_parts);
rock.speed = 3;
rock.direction = 150;