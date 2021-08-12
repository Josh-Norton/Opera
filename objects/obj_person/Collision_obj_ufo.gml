/// @description Insert description here
// You can write your code in this editor
//instance_destroy(other);
if ( rescued == false ) {
	rescued = true;	
	other.rescue = 30;
	hero = other;
	
	if (!obj_control.game_over) {
		var player = other.player;
	
		obj_control.points[player-1] += points_value;

		var points = instance_create_layer(x, y, obj_control.layer, obj_points);
		points.value = points_value;
		points.player = player;
		//instance_destroy(other);
	}
	
}


	
//instance_destroy();	