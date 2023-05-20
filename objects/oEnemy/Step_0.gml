	direction = point_direction(x, y, oPlayer.x, oPlayer.y);

	if(direction > 90 && direction < 270){
		image_xscale = -1;
	}else{
		image_xscale = 1;
	}
	if hp <= 0 {
		instance_destroy();
	}