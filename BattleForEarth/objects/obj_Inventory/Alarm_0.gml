instance_create_layer(path_get_point_x(pth_level_1,10),path_get_point_y(pth_level_1,10),"Instances",global.Jokers[jokerInventory[jokerOrder]])

jokerOrder++

if jokerOrder >= array_length(jokerInventory)
{
	jokerOrder = 0
	alarm[0] = 120;
}else{
	alarm[0] = 60;
}