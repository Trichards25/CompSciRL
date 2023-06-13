if oPlayer.y+oPlayer.sprite_height < y{
for (i = 0; i < 19; i++){
	instance_create_layer(x + 16*i,y,"Walls",oWall);
}
instance_create_layer(700, 360, "Enemies", oBossSnake);
instance_destroy();
}