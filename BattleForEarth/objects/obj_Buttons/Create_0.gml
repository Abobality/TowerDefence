pressFunction = function(index)
{
	switch index
	{
		case 0:
			room_goto(rm_Choose_menu);
			break;
			
		case 1:
			room_goto(rm_Settings);
			break;
			
		case 2:
			game_end();
			break;
	}
}