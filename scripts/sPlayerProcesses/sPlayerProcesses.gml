function collision(){
	//set target values
	var _tx = x;
	var _ty = y;
	
	//move back to last setep out out collision
	x = xprevious;
	y = yprevious;
	
	// get distance we want to move
	var _disx = abs(_tx - x);
	var _disy = abs(_ty - y);
	
	//move as far as possible
	repeat(_disx){
		if !place_meeting(x + sign(_tx -x), y, oWall) 
		x+=sign(_tx - x);
	}
	repeat(_disy){
		if !place_meeting(x, y + sign(_ty -y), oWall) 
		y+=sign(_ty - y);
	}
	
}