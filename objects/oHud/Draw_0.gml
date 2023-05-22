draw_set_color(c_black);
draw_rectangle(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0])+10, camera_get_view_x(view_camera[0]) + oPlayer.character.maxHp*2, camera_get_view_y(view_camera[0])+20, false);

draw_set_color(c_red);
draw_rectangle(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0])+10, camera_get_view_x(view_camera[0]) + oPlayer.character.hp*2, camera_get_view_y(view_camera[0]) + 20, false);

draw_set_color(c_white);
draw_set_font(fntDmg);
draw_text(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0])+10,"HP    " + string(oPlayer.character.hp) + "/" + string(oPlayer.character.maxHp));

draw_set_color(c_black);
draw_rectangle(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0])+30, camera_get_view_x(view_camera[0]) + oPlayer.character.maxMana*2, camera_get_view_y(view_camera[0])+40, false);
draw_set_color(c_blue);
draw_rectangle(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0])+30, camera_get_view_x(view_camera[0]) + oPlayer.character.mana*2, camera_get_view_y(view_camera[0])+40, false);

draw_set_color(c_white);
draw_set_font(fntDmg);
draw_text(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0])+30,"Mana    " + string(floor(oPlayer.character.mana)) + "/" + string(oPlayer.character.maxMana));