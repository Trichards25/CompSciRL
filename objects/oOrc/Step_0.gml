	CheckForPlayer();
	 xDif = x - xLast;
	 yDif = y - yLast;
	xLast = x;
	yLast = y;
	
	if xDif > 0 {
		image_xscale = 1;
	}else if xDif < 0{
		image_xscale = -1;
	}
	if xDif == 0{
		image_index = 0;
		image_speed = 0;
	}else{
		image_speed = 1;
	}
	if hp <= 0 {
		instance_destroy();
	}