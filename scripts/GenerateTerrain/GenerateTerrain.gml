// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GenerateTerrain(){
	
	/// @description Insert description here
// You can write your code in this editor

    var sh = (room_height/ 2) - floor(random(room_height / 3));
	sh = (sh / 32) * 32;
	
	var ah = sh;
	
	var bottom_level;
	
	for(xx= 0; xx < room_width; xx+=32){
		instance_create_layer(xx, ah,terrain_layer, obj_terrain_top);
	
	}
	


}