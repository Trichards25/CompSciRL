function create_character(_downSprite, _leftSprite, _upSprite, _rightSprite, _maxHp, _hp, _mana, _maxMana, _manaRegen, _scale) constructor {
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
	0.5),
	
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
	1)
}