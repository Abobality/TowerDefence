if placeEnable = true and mouse_y > 102 and mouse_x < 816 
{
	if instance_number(obj_Tower_Parent) <= 30
	{
		switch placeSlot 
		{
			case 1:
				createUnit(placeTower[inventory[0]].object,placeTower[inventory[0]].cost)
				break;
			
			case 2:
				createUnit(placeTower[inventory[1]].object,placeTower[inventory[1]].cost)
				break;
			
			case 3:
				createUnit(placeTower[inventory[2]].object,placeTower[inventory[2]].cost)
				break;
			
			case 4:
				createUnit(placeTower[inventory[3]].object,placeTower[inventory[3]].cost)
				break;
			
			case 5:
				createUnit(placeTower[inventory[4]].object,placeTower[inventory[4]].cost)
				break;

		}
		placeSlot = 0;
	}else{
	instance_create_layer(room_width/2,room_height-32,"Instances",obj_Pop_Up,
		{
			text: "tower max!",
			color: c_white,
			font: fnt_Agressive12
		})
	}
}


