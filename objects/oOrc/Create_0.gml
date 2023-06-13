hp = irandom_range(80,120);
dead = false;
dmg = 5;

moveSpd = 0.40;

alert = false;
alert_dis = 1000;

attack_dis = 128;

path = path_add();

//delay for calc
calc_path_delay = 30;
calc_path_timer = irandom(60);

xDif = 0;
yDif = 0;
xLast = 0;
yLast = 0;

xp = irandom_range(30,50);