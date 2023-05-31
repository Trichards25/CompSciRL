mapMax = 10;
global.map = ds_grid_create(mapMax, mapMax);

for(i = 0; i < mapMax; i++){
	for (j = 0; j < mapMax; j++){
		global.map[i, j] = sRooms(false, false, false, false, false, i,j,sprEmptyRoom, false);
	}
}
lastX = mapMax/2;
lastY = mapMax/2;
global.map[lastX,mapMax/2] = sRooms(true, false, false, false, false, mapMax/2, mapMax/2, sprStartRoom, true);
/*
for(i = 0; i < mapMax; i++){
	valids = sValidCheck(map, lastX, lastY);
	connects = irandom_range(1,4);
		for(J = 0; J < connects; j++){
			spot = irandom_range(0,3);
			if valids[spot] {
				if spot = 0 {
					lastY -= 1;
				}
				if spot = 1 {
					lastX += 1;
				}
				if spot = 2 {
					lastY -= 1;
				}
				if spot = 3 {
					lastX -= 1;
				}
				valids[spot] = false;
				map[lastX,lastY] = sRooms(true, false, false, false, false, lastX, lastY, sprRoom, false);
			}
		}
		}