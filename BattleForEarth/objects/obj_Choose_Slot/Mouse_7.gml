if array_length(global.Choosed)<5 and global.towerInfo[image_index].brought == true
{
	if !array_contains(global.Choosed,image_index)
	{
		array_push(global.Choosed,image_index);
	}
}

if global.towerInfo[image_index].brought == false and global.towerInfo[image_index].cost <= global.Money
{
	global.Money -= global.towerInfo[image_index].cost;
	global.towerInfo[image_index].brought = true;
	image_blend = c_white;
	saveData();
	instance_create_layer(room_width/2,room_height-32,"Instances",obj_Pop_Up,
		{
			text: "brought",
			color: c_white,
			font: fnt_Agressive12
		})
}else if global.towerInfo[image_index].cost > global.Money and global.towerInfo[image_index].brought == false{
	instance_create_layer(room_width/2,room_height-32,"Instances",obj_Pop_Up,
		{
			text: "not enough coins",
			color: c_white,
			font: fnt_Agressive12
		})
}

show_debug_message(global.Choosed);

if array_contains(global.Choosed,image_index)
{
	image_blend = c_black;
}