moveSpd = 1;
xspd = 0;
ySpd = 0;
cdValue = 0;
aimDir = 0;
hasChanged = false;
xp = 0;
level = 1;


globalvar isWarping;
isWarping = false;
globalvar isFighting;
isFighting = false;

state = "menu";

weapon = global.weaponList.baseGun;
character = global.characterList.boy;
//weapons
//array_push(global.playerWeapons, global.weaponList.baseGun);
//array_push(global.playerWeapons, global.weaponList.bow);
//array_push(global.playerWeapons, global.weaponList.wand);

//selectedWeapon = 0;
//weapon = global.playerWeapons[selectedWeapon];

//character
//array_push(global.playerCharacters, global.characterList.wizard);
//array_push(global.playerCharacters, global.characterList.boy);
//selectedChar = 0;
//character = global.playerCharacters[selectedChar];
//sprIndex = character.rightSprite;
//image_xscale = character.scale;
//image_yscale = character.scale;