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
				var itemIndex = irandom(array_length(global.items));
                var commonItem = global.items[itemIndex];
                instance_create_depth(x, y, -1000, commonItem);
			
	}
}