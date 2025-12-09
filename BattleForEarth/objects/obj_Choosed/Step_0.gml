for (var i = 0;i<array_length(global.Choosed);i++)
{
	if point_in_rectangle(mouse_x,mouse_y,x-32,y + i*96-48,x+32,y + i*96 + 48)
	{
		if mouse_check_button_pressed(mb_left)
		{
			array_delete(global.Choosed,i,1);
		}
	}
}