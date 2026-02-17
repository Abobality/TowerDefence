for (var i = 0;i < array_length(shop);i++)
{
	if point_in_rectangle(mouse_x,mouse_y,240 + 184*i,424,240 + 96 + 184*i,568) and mouse_check_button_pressed(mb_left)
	{
		if global.Jokers[shop[i]].cost <= global.cash
		{
			array_push(global.JokerChoosed,shop[i])
			global.cash -= global.Jokers[shop[i]].cost
			array_delete(shop,i,1)
		}else{
			instance_create_layer(room_width/2,room_height-32,"Instances",obj_Pop_Up,
			{
				text: arrayOfCash[irandom_range(0,2)],
				color: c_white,
				font: fnt_Agressive12
			})
		}
	}
}