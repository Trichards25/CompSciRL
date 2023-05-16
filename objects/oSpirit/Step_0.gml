if keyboard_check(ord("A")) || keyboard_check(vk_left){
	x -= global.SpiritSpd;
}
if keyboard_check(ord("D")) || keyboard_check(vk_right){
	x += global.SpiritSpd;
}
if keyboard_check(ord("W")) || keyboard_check(vk_up){
	y -= global.SpiritSpd;
}
if keyboard_check(ord("S")) || keyboard_check(vk_down){
	y += global.SpiritSpd;
}

if(global.InvFrames > 0 ) {
	global.InvFrames -= 1;
	image_speed = 1;
}else{
	image_speed = 0;
	image_index = 0;
}