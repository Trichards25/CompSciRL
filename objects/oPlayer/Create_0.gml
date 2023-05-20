moveSpd = 1;
xspd = 0;
ySpd = 0;
cdValue = 0;
aimDir = 0;

sprite_index = sprPlayerRight;


globalvar isWarping;
isWarping = false;
globalvar isFighting;
isFighting = false;

array_push(global.playerWeapons, global.weaponList.baseGun);
array_push(global.playerWeapons, global.weaponList.bow);

selectedWeapon = 0;
weapon = global.playerWeapons[selectedWeapon];