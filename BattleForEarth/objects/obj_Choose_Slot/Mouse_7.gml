if array_length(global.Choosed)<5 
{
	if !array_contains(global.Choosed,image_index)
	{
		array_push(global.Choosed,image_index);
	}
}

show_debug_message(global.Choosed);

if array_contains(global.Choosed,image_index)
{
	image_blend = c_dkgray;
}