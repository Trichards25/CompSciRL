hp = 1;
dead = false;
dmg = 1;
upSprtie = sprOldManUp;
leftSprite = sprOldManLeft;
rightSprite = sprOldManRight;
downSprite = sprOldManDown;
moveSpd = 1;

alert = false;
alert_dis = 1000;

attack_dis = 128;

image_index = downSprite;
path = path_add();

//delay for calc
calc_path_delay = 30;
calc_path_timer = irandom(60);

xDif = 0;
yDif = 0;
xLast = 0;
yLast = 0;