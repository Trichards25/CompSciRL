/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

	draw_set_color(c_black);
draw_rectangle(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0])+200, camera_get_view_x(view_camera[0]) + (hpMax*0.1), camera_get_view_y(view_camera[0])+210, false);

draw_set_color(c_red);
draw_rectangle(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0])+200, camera_get_view_x(view_camera[0]) + (hp*0.1), camera_get_view_y(view_camera[0]) + 210, false);

draw_set_color(c_green);
draw_text(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0])+200, "Sean the Sneaky Snake");