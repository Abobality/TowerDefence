if array_length(global.Choosed)<5 and image_blend = c_white
{
	array_push(global.Choosed,image_index);
}else{
	array_delete(global.Choosed,0,1);
	array_push(global.Choosed,image_index);
}

show_debug_message(global.Choosed);

if array_contains(global.Choosed,image_index)
{
	image_blend = c_dkgray;
}else{
	image_blend = c_white;
}