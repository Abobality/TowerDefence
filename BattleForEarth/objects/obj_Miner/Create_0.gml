support_function = function()
{
	instance_create_depth(x,y,depth-1,obj_Pop_Up,
	{
		text: "100$",
		color: #228B22,
		font: fnt_Agressive20
	})
}

image_speed = 0;

depth = -y;

current_level = 1;