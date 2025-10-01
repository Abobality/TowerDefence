if placeEnable = true
{
	switch placeSlot 
	{
		case 1:
			createUnit(placeTower[inventory[0]])
			break;
			
		case 2:
			createUnit(placeTower[inventory[1]])
			break;
			
		case 3:
		
			break;

	}
	placeSlot = 0;
}else{
	show_debug_message("Place is not empty")
}


