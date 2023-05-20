function damageNum(dmg){
	with instance_create_layer(x,y, "DmgNumber", oDmgNumFont){
	damage = dmg;
	size = 1;
}
}
function damageDelt(){
	rand = random_range(1,100);
	if(rand <= oPlayer.weapon.critChance){
		return oPlayer.weapon.damage * 2;
	}
	return oPlayer.weapon.damage;
}