var border_1 = 320 - (current_width / 2);
var border_r = 320 + (current_width / 2);
var border_u = 384 - current_height;
var border_d = 384;

oSpirit.x = clamp(oSpirit.x, border_1 + 8, border_r - 8);
oSpirit.y = clamp(oSpirit.y, border_u + 8, border_d - 8);

draw_set_color(c_white);
draw_rectangle(border_1 - 4, border_u - 4, border_r + 4, border_d + 4, false);
draw_set_color(c_black);
draw_rectangle(border_1, border_u, border_r, border_d, false);

var hp_barwidth = global.PlayerMaxHP;
var hp_barwidth_fill = global.PlayerHP;
draw_set_font(fntBattleUi);
draw_set_color(c_white);
draw_text(30, 400, global.Name + "      LV " + string(global.LV));
draw_text(320 + hp_barwidth, 400, string(global.PlayerHP) + " / " + string(global.PlayerMaxHP));

draw_text(255, 400, "HP");

draw_set_color(c_red);
draw_rectangle(300, 400, 300 + hp_barwidth, 418, false);
draw_set_color(c_yellow);
draw_rectangle(300, 400, 300 + hp_barwidth_fill, 418, false);