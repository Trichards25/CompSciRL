rightKey = (keyboard_check(ord("D")) + keyboard_check(vk_right));
leftKey = (keyboard_check(ord("A")) + keyboard_check(vk_left));
upKey = (keyboard_check(ord("W")) + keyboard_check(vk_up));
downKey = (keyboard_check(ord("S")) + keyboard_check(vk_down));
shootKey = mouse_check_button(mb_left);
swapDown = keyboard_check_pressed(ord("E"));

aimDir = point_direction(oPlayer.x, oPlayer.y, mouse_x, mouse_y);

if(isWarping || isFighting){
	rightKey = 0;
	leftKey = 0;
	upKey = 0;
	downKey = 0;
}
x += (rightKey-leftKey)*moveSpd;
y += (downKey-upKey)*moveSpd;

if aimDir > 335 || aimDir < 45{
sprite_index = sprPlayerRight;

}
if aimDir > 135 && aimDir < 235 {
sprite_index = sprPlayerLeft;	
}
if aimDir > 235 && aimDir < 335 {
 sprite_index = sprPlayerDown;	
}
if aimDir > 45 && aimDir < 135 {
 sprite_index = sprPlayerUp;	
}
if rightKey == 0 && leftKey == 0 && upKey == 0 && downKey == 0 {
	image_speed = 0;
	image_index = 0;
}else{
	image_speed = 1;
}
//depth
depth = -bbox_bottom;

if(cdValue <= 0 && shootKey && !isWarping && !global.isOnMenu){
	cdValue = weapon.cooldown;
	//audio_play_sound(aBullet, 1, false);
	var _xOffset = lengthdir_x(weapon.length, aimDir);
	var _yOffset = lengthdir_y(weapon.length, aimDir);
	var _bulletInst = instance_create_depth(x + _xOffset, y + _yOffset, depth-100, weapon.bulletObj);
	
	with(_bulletInst){
		dir = other.aimDir;
	}
	}

cdValue--;
if(global.InvFrames > 0 ) {
	global.InvFrames -= 1;
}

if swapDown {
	selectedWeapon++;
		if selectedWeapon >= array_length(global.playerWeapons){
			selectedWeapon = 0;
		}
}
weapon = global.playerWeapons[selectedWeapon];
	
