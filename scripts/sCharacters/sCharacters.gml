function create_character(_downSprite, _leftSprite, _upSprite, _rightSprite, _maxHp, _hp, _mana, _maxMana, _manaRegen, _scale,_ability1Cool,_ability2Cool,_ability3Cool) constructor {
	downSprite = _downSprite;
	leftSprite = _leftSprite;
	upSprtie = _upSprite;
	rightSprite = _rightSprite;
	maxHp = _maxHp;
	hp = _hp;
	mana = _mana;
	maxMana = _maxMana;
	manaRegen = _manaRegen;
	scale = _scale;
	ability1Cool = _ability1Cool;
	ability2Cool = _ability2Cool;
	ability3Cool = _ability3Cool;
}

global.playerCharacters = array_create();

global.characterList = {
	wizard : new create_character(
	sprWizardDown,
	sprWizardLeft,
	sprWizardUp,
	sprWizardRight,
	20,
	20,
	40,
	40,
	2,
	0.5,
	10,
	10,
	10),
	
	boy : new create_character(
	sprBoyDown,
	sprBoyLeft,
	sprBoyUp,
	sprBoyRight,
	30,
	30,
	30,
	30,
	1,
	1,
	10,
	10,
	10)
}