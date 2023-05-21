if !hasSpawned && global.waves > 0 {
	pauseCount++;
	if pauseCount >= (pauseDuration * room_speed) && spawnNum > count{
		instance_create_layer(x,y,"Enemies", enemy);
		pauseCount = 0;
		count++;
		global.justChanged = false;
	}
	if spawnNum <= count {
			hasSpawned = true;
	}
}
if lastWave != global.waves{
	hasSpawned = false;
	pauseCount = pauseDuration * room_speed;
	lastWave = global.waves;
	count = 0;
}