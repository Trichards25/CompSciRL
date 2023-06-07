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
	sprMagicWand,
	sprite_get_bbox_right(sprWand) - sprite_get_xoffset(sprWand),
	oMagicShot,
	5,
	2,
	2,
	10,
	10,
	aBullet),
	
	machinegun : new create_weapon(
	"Machine Gun",
	sprite_machinegun,
	sprite_get_bbox_right(sprite_machinegun) - sprite_get_xoffset(sprite_machinegun),
	oBullet,
	5,
	0,
	5,
	2,
	5,
	aBullet),
	pistol : new create_weapon(
	"Pistol",
	sprite_pistol,
	sprite_get_bbox_right(sprite_pistol) - sprite_get_xoffset(sprite_pistol),
	oBullet,
	15,
	0,
	5,
	5,
	5,
	aBullet),
	sniper : new create_weapon(
	"Sniper",
	sprite_sniper,
	sprite_get_bbox_right(sprite_sniper) - sprite_get_xoffset(sprite_sniper),
	oBullet,
	50,
	0,
	20,
	40,
	20,
	aBullet)

	
	// Change to bow sound!!!
}