var enemies = instance_number(oEnemy);
if(enemies <= 0 && !global.justChanged){
	if global.waves > 0 {
		global.waves--;
		global.justChanged = true;
	}
}
 if global.waves == 0 {
	 	global.RoomCleared = true;
 }