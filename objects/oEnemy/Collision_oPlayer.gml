if global.InvFrames <= 0{
	oPlayer.character.hp -= dmg;
	global.InvFrames+=2*room_speed;
}