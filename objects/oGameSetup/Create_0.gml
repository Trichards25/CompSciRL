window_set_fullscreen(true);
global.LV = 1;
global.BorderWidth = 570;
global.BorderHeight = 120;
global.SpiritSpd = 1;
global.InvFrames = 0;
global.roomsCleared = 0;
global.killedSinceLastItem = 0;

global.commonItems = {
	heart : oHeart,
	bow : oWeaponPickup
	
	
}
with (global.commonItems.bow){
	weapon = global.weaponList.bow;
}
global.rareItems = {
	gun : oWeaponPickup
}
with (global.rareItems.gun){
	weapon = global.weaponList.baseGun;
}
global.epicItems = {
	gun : oWeaponPickup
}
with (global.epicItems.gun){
	weapon = global.weaponList.baseGun;
}
global.exoticItems = {
	wand : oWeaponPickup
}
with (global.exoticItems.wand){
	weapon = global.weaponList.wand;
}