spotX = x;
spotY = y;
for(i =0; i < mapMax; i++){
	for(j = 0; j < mapMax; j++){
		draw_sprite(global.map[i,j].sprite,0,spotX,spotY);
		spotX += 10;
		spotY += 10;
	}
}