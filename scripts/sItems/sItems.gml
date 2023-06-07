function itemChance(){
 rand = irandom_range(0,100);
 if rand <=  5 * (global.roomsCleared/5) +  global.killedSinceLastItem {
	 global.killedSinceLastItem = 0;
	return true;
 }else {
	return false;
 }
}

function dropItem(){
	var drop = itemChance();
	if drop{
		resetArray();		
		var itemIndex = irandom(array_length(global.items)-1);
		while(global.usedItems[itemIndex]){
		itemIndex = irandom(array_length(global.items)-1);
		}
        var item = global.items[itemIndex];
		global.usedItems[itemIndex] = true;
        instance_create_depth(x, y, -1000, item);
			
	}
}
function checkArray(){
	for(i = 0; i < array_length(global.usedItems);i++){
		if !global.usedItems[i]{
			return false;
		}
	}
	return true;
}
function resetArray(){
	if checkArray(){
		for(i = 0; i < array_length(global.usedItems);i++){
			global.usedItems[i] = false;
		}
}
}