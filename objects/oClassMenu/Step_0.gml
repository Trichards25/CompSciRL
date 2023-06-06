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
		
		oPlayer.character = global.characterList.boy;
		oPlayer.weapon = global.weaponList.bow;
		sClassChooseSimilar();
		oPlayer.char = "boy";
		break;
	
	case 1:
		oPlayer.character = global.characterList.wizard;
		oPlayer.weapon = global.weaponList.wand;
		sClassChooseSimilar();
		oPlayer.char = "wizard";
		break;
	}
}