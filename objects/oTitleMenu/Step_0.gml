//get inputs
up_key = keyboard_check_pressed(vk_up) + keyboard_check_pressed(ord("W"));
down_key = keyboard_check_pressed(vk_down) + keyboard_check_pressed(ord("S"));
accept_key = keyboard_check_pressed(vk_space) + keyboard_check(vk_enter);

//move through the menu
pos += down_key - up_key;
if pos >= op_length{
pos = 0;	
}
if pos < 0{
	pos = op_length-1;
}

//using options
if accept_key{
	switch(pos){
	
		//start game
	case 0:
		 var inst = instance_create_depth(x,y,-99999999999,oWarp);
		 inst.targetX = 135;
		 inst.targetY = 75;
		 inst.targetRoom = rBedRoom;
		 inst.sprIndex = sprPlayerDown;

		break;
	
	case 1:
		game_end();
		break;
	}
}