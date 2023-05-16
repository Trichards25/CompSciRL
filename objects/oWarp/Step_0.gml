if room == targetRoom && image_index < 1
{
	if !oPlayer.visible {oPlayer.visible = true;}
	isWarping = false;
	instance_destroy();
}