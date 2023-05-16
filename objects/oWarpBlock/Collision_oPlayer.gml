 if !instance_exists(oWarp){
 var inst = instance_create_depth(x,y,-99999999999,oWarp);
 inst.targetX = targetX;
 inst.targetY = targetY;
 inst.targetRoom = targetRoom;
 inst.sprIndex = sprIndex;
 }