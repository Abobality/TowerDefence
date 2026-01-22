for (var i = 0;i < 3;i++)
{
	if point_in_rectangle(mouse_x,mouse_y,room_width/2-80,262 + 48 * i,room_width/2+80,262 + 48 * i + 20) and mouse_check_button_pressed(mb_left)
	{
		pressFunction(i);
	}
}