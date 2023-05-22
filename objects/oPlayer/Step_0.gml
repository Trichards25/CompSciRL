rightKey = (keyboard_check(ord("D")) + keyboard_check(vk_right));
leftKey = (keyboard_check(ord("A")) + keyboard_check(vk_left));
upKey = (keyboard_check(ord("W")) + keyboard_check(vk_up));
downKey = (keyboard_check(ord("S")) + keyboard_check(vk_down));
shootKey = mouse_check_button(mb_left);
swapWeapon = keyboard_check_pressed(ord("E"));
swapChar = keyboard_check_pressed(ord("P"));

if hasChanged {
	image_xscale = character.scale;
	image_yscale = character.scale;
}


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
sprite_index = character.rightSprite;

}
if aimDir > 135 && aimDir < 235 {
sprite_index = character.leftSprite;	
}
if aimDir > 235 && aimDir < 335 {
 sprite_index = character.downSprite;	
}
if aimDir > 45 && aimDir < 135 {
 sprite_index = character.upSprtie;	
}
if rightKey == 0 && leftKey == 0 && upKey == 0 && downKey == 0 {
	image_speed = 0;
	image_index = 0;
}else{
	image_speed = 1;
}
//depth
depth = -bbox_bottom;

if(cdValue <= 0 && shootKey && !isWarping && !global.isOnMenu && character.mana >= weapon.manaCost){
	cdValue = weapon.cooldown;
	character.mana -= weapon.manaCost;
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

if swapWeapon {
	selectedWeapon++;
		if selectedWeapon >= array_length(global.playerWeapons){
			selectedWeapon = 0;
		}
}
weapon = global.playerWeapons[selectedWeapon];
	
if swapChar {
	selectedChar++;
		if selectedChar >= array_length(global.playerCharacters){
			selectedChar = 0;
		}
		hasChanged = true;
}
character = global.playerCharacters[selectedChar];

if character.mana < character.maxMana {
	character.mana += character.manaRegen/room_speed;
}