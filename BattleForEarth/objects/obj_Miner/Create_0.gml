support_function = function()
{
	instance_create_depth(x,y,depth-1,obj_Pop_Up,
	{
		text: "100$"
	})
}

image_speed = 0;

depth = -y;

current_level = 1;