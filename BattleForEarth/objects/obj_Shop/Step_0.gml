for (var i = 0;i<array_length(jokerShop);i++)
{
	for (var j = 0;j<array_length(jokerShop[i]);j++)
	{
		if point_in_rectangle(mouse_x,mouse_y,room_width/4 + 64 * j - 32,y+96*i-48,room_width/4 + 64 * j+32,y + i*96 + 48)
		{
			if mouse_check_button_pressed(mb_left) and array_length(global.JokerChoosed) < 5
			{
				array_push(global.JokerChoosed,jokerShop[i][j]);
				array_delete(jokerShop[i],j,1)
			}
		}
	}
}

