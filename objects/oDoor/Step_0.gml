if(!global.RoomCleared){
	image_index = 0;
}else{
	image_index = 1;
	instance_deactivate_object(wall1);
	instance_deactivate_object(wall2);
	instance_deactivate_object(wall3);
	instance_deactivate_object(wall4);
}