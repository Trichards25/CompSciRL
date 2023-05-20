function create_weapon(_sprite, _length, _bulletObj, _cooldown, _manaCost, _shotSpd, _damage, _critChance , _sound) constructor{
	sprite = _sprite;
	length = _length;
	bulletObj = _bulletObj;
	cooldown = _cooldown;
	manaCost = _manaCost;
	shotSpd = _shotSpd;
	damage = _damage;
	critChance = _critChance;
	sound = _sound;
}

global.playerWeapons = array_create(0);

global.weaponList = {
	baseGun : new create_weapon(
	sprbaseGun,
	sprite_get_bbox_right(sprbaseGun) - sprite_get_xoffset(sprbaseGun),
	oBullet,
	10,
	2,
	5,
	5,
	aBullet),
	
	bow : new create_weapon(
	sprBow,
	sprite_get_bbox_right(sprBow) - sprite_get_xoffset(sprBow),
	oArrow,
	15,
	0,
	10,
	10,
	15,
	aBullet)
	
	// Change to bow sound!!!
}