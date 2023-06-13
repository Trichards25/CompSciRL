hp = 2000;
hpMax = hp;
dead = false;
dmg = 5;
sprite = sprBossSnake;
moveSpd = 1;

alert = true;
alert_dis = 1000;

attack_dis = 128;

image_index = sprite;
path = path_add();

//delay for calc
calc_path_delay = 30;
calc_path_timer = irandom(60);

xDif = 0;
yDif = 0;
xLast = 0;
yLast = 0;

xp = irandom_range(100,1000);