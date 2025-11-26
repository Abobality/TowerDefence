for(var i = 0;i < array_length(inventory);i++)
{
	if point_in_rectangle(mouse_x,mouse_y,32 + 80 * i,18,96 + 80 * i,104) 
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
			}
		}
	}
}
