if start{
switch(door){
	case "down":
	wall1 = instance_create_layer(x,y,"Walls",oWall);
	wall2 = instance_create_layer(x+16,y,"Walls",oWall);
	sprite_index = sprDoorDown;
	break;
	case "up":
	wall1 = instance_create_layer(x,y,"Walls",oWall);
	wall2 = instance_create_layer(x+16,y,"Walls",oWall);
	sprite_index = sprDoorUp;
	break;
	case "left":
	wall1 = instance_create_layer(x,y,"Walls",oWall);
	wall2 = instance_create_layer(x,y+16,"Walls",oWall);
	sprite_index = sprDoorLeft;
	break;
	case "right":
	wall1 = instance_create_layer(x,y,"Walls",oWall);
	wall2 = instance_create_layer(x,y+16,"Walls",oWall);
	sprite_index = sprDoorRight;
	break;
}
}
start = false;

if(!global.RoomCleared){
	image_index = 0;
}else{
	image_index = 1;
	instance_deactivate_object(wall1);
	instance_deactivate_object(wall2);
}