
if !isTalking{
		if(steps >= maxSteps){
			rand = irandom_range(0,4);
			maxSteps = irandom_range(60,300);
			steps = 0;
			justStopped = !justStopped;
		}
		if rand = 0 || justStopped{
			image_speed = 0;
			image_index = 0;
		} else if rand = 1{
			image_speed = 1;
			sprite_index = sprOldManRight;
			x+= moveSpd;
		}
		else if rand = 2{
			image_speed = 1;
			sprite_index = sprOldManLeft;
			x-= moveSpd;
		}
		else if rand = 3{
			image_speed = 1;
			sprite_index = sprOldManDown;
			y+= moveSpd;
		}
		else if rand = 4{
			image_speed = 1;
			sprite_index = sprOldManUp;
			y-= moveSpd;
		}
		steps++;
		}
