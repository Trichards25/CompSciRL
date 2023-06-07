
	if aimDir >= 0 && aimDir < 90{
		draw_sprite_ext(weapon.sprite, 0,x,y, 1, 1, aimDir, c_white, 1);

	}
	if aimDir >= 90 && aimDir < 180{
		draw_sprite_ext(weapon.sprite, 0,x,y, 1, -1, aimDir, c_white, 1);

	}

	draw_self();

	if aimDir >= 180 && aimDir < 270{
		draw_sprite_ext(weapon.sprite, 0,x,y, 1, -1, aimDir, c_white, 1);
	
	}
	if aimDir >= 270 && aimDir < 360{
		draw_sprite_ext(weapon.sprite, 0,x,y, 1, 1, aimDir, c_white, 1);
	
	}
