if array_length(jokerInventory) != 0
	{
	if jokerOrder < array_length(jokerInventory)
	{
		instance_create_layer(path_get_point_x(pth_level_1,10),path_get_point_y(pth_level_1,10),"Instances",global.Jokers[jokerInventory[jokerOrder]].object)
		jokerOrder++
		alarm[0] = 180;
	}else{
		jokerOrder = 0
		alarm[0] = 420;
	}
}