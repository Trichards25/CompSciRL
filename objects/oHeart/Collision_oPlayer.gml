if heal + oPlayer.character.hp >= oPlayer.character.maxHp {
	oPlayer.character.hp = oPlayer.character.maxHp;
}else{
oPlayer.character.hp += heal;
}
event_inherited();

