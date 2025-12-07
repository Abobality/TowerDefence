if placeEnable = true and mouse_y > 102
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
			createUnit(placeTower[inventory[2]])
			break;
			
		case 4:
			createUnit(placeTower[inventory[3]])
			break;
			
		case 5:
			createUnit(placeTower[inventory[4]])
			break;

	}
	placeSlot = 0;
}else{
	show_debug_message("Place is not empty")
}


