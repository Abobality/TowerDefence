if isWaiting == true and wave <= array_length(waves) and wave != 9
{
	alarm[0] = 60;
	isWaiting = false
}

if wave = array_length(waves)
{
	instance_create_depth(room_width/2,room_height/2,-700,obj_Joker_Shop)
}