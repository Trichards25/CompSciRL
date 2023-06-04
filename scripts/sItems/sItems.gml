function itemChance(){
 rand = irandom_range(0,100);
 if rand <=  100 {//5 * (global.roomsCleared/5) +  global.killedSinceLastItem {
	 global.killedSinceLastItem = 0;
	return true;
 }else {
	return false;
 }
}
function determinRare(){
	var item = 0
	// 0 common, 1 rare,  2 epic, 3 exotic
	rand = irandom_range(0,100);
	if rand <= 50-(global.roomsCleared/5) {
		item = 0;
	}else if rand <= 75-(global.roomsCleared/5){
		item  = 1;
	}else if rand <= 90-(global.roomsCleared/5){
		item = 2;
	}else{
		item = 3;
	}
	return item;
}
function dropItem(){
	var drop = itemChance();
	if drop{
		var rare = determinRare();
		switch (rare){
			case 0:
				var itemIndex = irandom_range(0,array_length(global.commonItems) - 1);
                var commonItem = global.commonItems[itemIndex];
                instance_create_depth(x, y, -1000, commonItem);
				break;
			case 1:
				var itemIndex = irandom_range(0,array_length(global.rareItems) - 1);
                var rareItem = global.rareItems[itemIndex];
                instance_create_depth(x, y, -10000, rareItem);
				break;
			case 2:
				var itemIndex = irandom_range(0,array_length(global.epicItems) - 1);
                var epicItem = global.epicItem[itemIndex];
                instance_create_depth(x, y, -1000, epicItem);
				break;
			case 3:
				var itemIndex = irandom_range(0,array_length(global.exoticItems) - 1);
                var exoticItem = global.exoticItem[itemIndex];
                instance_create_depth(x, y, -10000, exoticItem);
				break;
		}
	}
}