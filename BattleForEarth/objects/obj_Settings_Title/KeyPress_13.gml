for (var i = 0;i < array_length(global.promocodes);i++)
{
	if keyboard_string = global.promocodes[i].code and global.promocodes[i].expired = false
	{
		global.promocodes[i].reward();
		global.promocodes[i].expired = true;
		
		instance_create_layer(room_width/2,room_height-32,"Instances",obj_Pop_Up,
		{
			text: "code accepted!",
			color: c_white,
			font: fnt_Agressive12
		})
		
	}else if keyboard_string != global.promocodes[i].code {
		instance_create_layer(room_width/2,room_height-32,"Instances",obj_Pop_Up,
		{
			text: "code incorrect!",
			color: c_white,
			font: fnt_Agressive12
		})
	}else if keyboard_string = global.promocodes[i].code and global.promocodes[i].expired = true {
		instance_create_layer(room_width/2,room_height-32,"Instances",obj_Pop_Up,
		{
			text: "code expired!",
			color: c_white,
			font: fnt_Agressive12
		})
	}
}

keyboard_string = ""
