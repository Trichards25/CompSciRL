if(current_width < global.BorderWidth){
		current_width += ((global.BorderWidth - current_width) / 2);
}
if(current_width > global.BorderWidth){
		current_width -= ((current_width - global.BorderWidth) / 2);
}
if(current_height < global.BorderHeight){
		current_height += ((global.BorderHeight - current_height) / 2);
}
if(current_height > global.BorderHeight){
		current_height -= ((current_height - global.BorderHeight) / 2);
}
if keyboard_check_pressed(vk_space){
	global.BorderWidth = random(600);
	global.BorderHeight = random(300);
}