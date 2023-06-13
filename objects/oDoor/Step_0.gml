if start{
switch(door){
	case "down":
	wall1 = instance_create_layer(x,y,"Walls",oWall);
	wall2 = instance_create_layer(x+16,y,"Walls",oWall);
	break;
	case "up":
	wall1 = instance_create_layer(x,y,"Walls",oWall);
	wall2 = instance_create_layer(x+16,y,"Walls",oWall);
	image_angle = 180;
	break;
	case "left":
	wall1 = instance_create_layer(x,y,"Walls",oWall);
	wall2 = instance_create_layer(x,y+16,"Walls",oWall);
	image_angle = 90;
	break;
	case "right":
	wall1 = instance_create_layer(x,y,"Walls",oWall);
	wall2 = instance_create_layer(x,y+16,"Walls",oWall);
	image_angle = 270;
	break;
}
}
start = false;

if(!global.RoomCleared || !global.bossDefeated){
	image_index = 0;
}else{
	image_index = 1;
	instance_deactivate_object(wall1);
	instance_deactivate_object(wall2);
}