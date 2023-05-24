hp = random_range(10,20);
dead = false;
moveSpd = 0.5;
dmg = 1;
upSprtie = sprGreenSlimeUp;
leftSprite = sprGreenSlimeLeft;
rightSprite = sprGreenSlimeRight;
downSprite = sprGreenSlimeDown;

alert = false;
alert_dis = 1000;

attack_dis = 64;

path = path_add();

//delay for calc
calc_path_delay = 30;
calc_path_timer = irandom(60);

xDif = 0;
yDif = 0;
xLast = 0;
yLast = 0;