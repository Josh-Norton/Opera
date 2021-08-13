// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function room_goto_trans(target) {
	if (!instance_exists(obj_transition)) {
		var trans = instance_create_depth(x, y, -1000, obj_transition);
		trans.target = target;
	}
}