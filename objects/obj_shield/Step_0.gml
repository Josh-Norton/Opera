/// @description Insert description here
// You can write your code in this editor
x -=1;

var shield_interval = 20;
shield_interval -= 1;
if(obj_enemy_control.shield_activated==true && shield_interval == 0){
	obj_enemy_control.shield_activated = false;
}
