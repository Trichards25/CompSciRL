// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sClassChooseSimilar(){
	var inst = instance_create_depth(x,y,-99999999999,oWarp);
		inst.sprIndex = oPlayer.character.rightSprite;
		inst.targetX = 720;
		inst.targetY = 735;
		inst.targetRoom = rBossRoom;
		oPlayer.image_xscale = oPlayer.character.scale;
		oPlayer.image_yscale = oPlayer.character.scale;
}