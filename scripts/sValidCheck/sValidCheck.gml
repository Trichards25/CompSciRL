function sValidCheck(map, pos1, pos2){
	var  validSpot = array_create(4);
	if pos2 - 1 >= 0 && !map[pos1,pos2-1].isFilled{
		validSpot[0] = true;
	}if pos1 - 1 >= 0 && !map[pos1-1,pos2].isFilled{
		validSpot[1] = true;
	}if pos2 + 1 <= 9 && !map[pos1,pos2+1].isFilled{
		validSpot[2] = true;
	}if pos1 + 1 <= 9 && !map[pos1+1,pos2].isFilled{
		validSpot[3] = true;
	}
	return validSpot;
}