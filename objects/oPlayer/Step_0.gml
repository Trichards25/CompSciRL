hInput = (keyboard_check(ord("D")) + keyboard_check(vk_right)) - (keyboard_check(ord("A")) + keyboard_check(vk_left));
vInput = (keyboard_check(ord("S")) + keyboard_check(vk_down)) - (keyboard_check(ord("W")) + keyboard_check(vk_up));

if(isWarping || isFighting){
	hInput = 0;
	vInput = 0;
}
x += hInput*moveSpd;
y += vInput*moveSpd;

if hInput > 0 {
sprite_index = sprPlayerRight;

}
if hInput < 0 {
sprite_index = sprPlayerLeft;	
}
if vInput > 0 {
 sprite_index = sprPlayerDown;	
}
if vInput < 0 {
 sprite_index = sprPlayerUp;	
}
if hInput == 0 && vInput == 0 {
	image_speed = 0;
	image_index = 0;
}else{
	image_speed = 1;
}
//depth
depth = -bbox_bottom;

if(cd <= 0 && mouse_check_button(mb_left) && !isWarping && !global.isOnMenu){
	cd = cdValue;
	//audio_play_sound(aBullet, 1, false);
	with(instance_create_layer(x,y, "instances", oBullet)){
		direction = oGun.image_angle;
		speed = 8;
	}
}
cd--;