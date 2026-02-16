for(var i = 0;i < array_length(inventory);i++)
{
	if point_in_rectangle(mouse_x,mouse_y,x-32,y + i*96-48,x+32,y + i*96 + 48) 
	{
		if mouse_check_button_pressed(mb_left)
		{
			switch i
			{
				case 0:
					placeSlot = 1
					break;
					
				case 1:
					placeSlot = 2
					break;
					
				case 2:
					placeSlot = 3
					break;
					
				case 3:
					placeSlot = 4
					break;
					
				case 4:
					placeSlot = 5
					break;
			}
		}
	}
}

for(var i = 0;i < array_length(jokerInventory);i++)
{
	if mouse_check_button_pressed(mb_right) and global.shop = true 
	{
		global.cash += global.Jokers[jokerInventory[i]].cost
		array_delete(jokerInventory,i,1)
	}
}