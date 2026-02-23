if point_in_rectangle(mouse_x,mouse_y,room_width/2 + 50,245,room_width/2+80,275) and mouse_check_button_pressed(mb_left)
{
	global.autoSkip = !global.autoSkip
}

if point_in_rectangle(mouse_x,mouse_y,room_width/2 ,355,room_width/2+180,375) and mouse_check_button_pressed(mb_left)
{
	keyboard_string = ""
}


