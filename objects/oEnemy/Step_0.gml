	direction = point_direction(x, y, oPlayer.x, oPlayer.y);

if direction > 335 || direction < 45{
sprite_index = rightSprite;

}
if direction > 135 && direction < 235 {
sprite_index = leftSprite;	
}
if direction > 235 && direction < 335 {
 sprite_index = downSprite;	
}
if direction > 45 && direction < 135 {
 sprite_index = upSprtie;	
}
	if hp <= 0 {
		instance_destroy();
	}