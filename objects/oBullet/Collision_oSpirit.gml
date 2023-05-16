if(global.InvFrames <= 0){
	global.InvFrames = 30;
	global.PlayerHP -=damage;
}if (hit){
	instance_destroy();
}