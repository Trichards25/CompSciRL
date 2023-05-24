	CheckForPlayer();
	 xDif = x - xLast;
	 yDif = y - yLast;
	xLast = x;
	yLast = y;
	
	if xDif > 0 {
		sprite_index = rightSprite;
	}else if xDif < 0{
		sprite_index = leftSprite;
	}else if yDif > 0 {
		sprite_index = upSprtie;
	}else{
		sprite_index = downSprite;
	}
	if hp <= 0 {
		instance_destroy();
	}