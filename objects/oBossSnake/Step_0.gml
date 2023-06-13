	CheckForPlayer();
	 xDif = x - xLast;
	 yDif = y - yLast;
	xLast = x;
	yLast = y;
	
	if xDif > 0 {
		image_xscale = -1;
	}else if xDif < 0{
		image_xscale = 1;

	}
	if hp <= 0 {
		instance_destroy();
	}
	moveSpd = irandom_range(0.2,1);
	
