room_goto(targetRoom);
oPlayer.x = targetX;
oPlayer.y = targetY;
oPlayer.sprite_index = sprIndex;
oPlayer.layer = layer_get_id("Player");
oPlayer.state = "fight";

image_speed = -1;