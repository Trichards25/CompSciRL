function create_weapon(_name, _sprite, _length, _bulletObj, _cooldown, _manaCost, _shotSpd, _damage, _critChance , _sound) constructor{
	name = _name;
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

global.playerWeapons = array_create();

global.weaponList = {
	baseGun : new create_weapon(
	"Basic Gun",
	sprbaseGun,
	sprite_get_bbox_right(sprbaseGun) - sprite_get_xoffset(sprbaseGun),
	oBullet,
	10,
	0,
	5,
	5,
	5,
	aBullet),
	
	bow : new create_weapon(
	"Bow",
	sprBow,
	sprite_get_bbox_right(sprBow) - sprite_get_xoffset(sprBow),
	oArrow,
	30,
	0,
	10,
	15,
	20,
	aBullet),
	
	wand : new create_weapon(
	"Magic Wand",
	sprWand,
	sprite_get_bbox_right(sprWand) - sprite_get_xoffset(sprWand),
	oMagicShot,
	5,
	2,
	2,
	10,
	10,
	aBullet)
	
	// Change to bow sound!!!
}