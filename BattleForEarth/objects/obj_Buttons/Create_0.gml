pressFunction = function(index)
{
	switch index
	{
		case 0:
			instance_create_depth(0,0,-100,obj_Fade_In,
			{
				room_target: rm_Choose_menu
			});
			break;
			
		case 1:
			room_goto(rm_Settings);
			break;
			
		case 2:
			game_end();
			break;
	}
}