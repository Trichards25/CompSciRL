if drawInfo {
	/*
	draw_set_color(c_black);
draw_rectangle(x-20,y-20,x+40,y-10,false);
*/
draw_set_font(fntDmg)
draw_set_color(c_white);
draw_text(x-20,y-20,string(weapon.name));
}
draw_self();