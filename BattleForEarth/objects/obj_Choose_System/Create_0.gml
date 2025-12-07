for(var j = 0;j < array_length(global.Choose);j++)
{
	for(var i = 0;i < array_length(global.Choose[j]);i++)
	{
		instance_create_depth(x+64 * i,y + j * 96,depth,obj_Choose_Slot,
		{
			image_index: global.Choose[j][i]
		})
	}
}