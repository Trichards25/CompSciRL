
if place_meeting(x, y, oPlayer){
	drawInfo = true;
}else{
	drawInfo = false;
}
if drawInfo && keyboard_check_pressed(ord("E")){
	var newPickup = instance_create_depth(x,y, -1000, oWeaponPickup);
	with(newPickup){
		weapon = oPlayer.weapon;
		sprite_index = weapon.sprite;
	}
	oPlayer.weapon = weapon;
	instance_destroy();
}