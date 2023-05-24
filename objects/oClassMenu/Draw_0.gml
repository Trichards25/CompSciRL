//draw menu backround
draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1);

//draw options
draw_set_font(fntTitleFont);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

for (var i = 0; i < op_length; i++){
	var _c = c_white;
	if pos == i{_c = c_yellow;}
	draw_text_color(x+op_border, y+op_border + op_space*i, option[i], _c, _c, _c, _c, 1);
	
}
draw_sprite_ext(sprBoyRight, image_index,x+100,y+15,1,1,0,c_white,1);
draw_sprite_ext(sprWizardRight, image_index,x+100,y+45,0.5,0.5,0,c_white,1);