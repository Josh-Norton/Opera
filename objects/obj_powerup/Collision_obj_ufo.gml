/// @description Insert description here
// You can write your code in this editor
var points = instance_create_layer(other.x, other.y, obj_control.layer, obj_points);
points.value = name;
points.player = other.player;

audio_play_sound(snd_powerup, 0, false);

instance_destroy();