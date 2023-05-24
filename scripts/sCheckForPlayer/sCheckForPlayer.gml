function CheckForPlayer(){
	//check if close enough
	var _dis = distance_to_object(oPlayer);
	
	if _dis <= alert_dis or alert and _dis > attack_dis{
		alert = true;
		if calc_path_timer-- <= 0 {
			calc_path_timer = calc_path_delay;
			//can we make a path to player
			var _found_player = mp_grid_path(global.mp_grid, path, x, y, oPlayer.x, oPlayer.y, choose(0,1));

			if _found_player {
				path_start(path, moveSpd, path_action_stop, false);
			}
		}
	}else{
		if _dis <= attack_dis {
			path_end();
		}
	}
}
