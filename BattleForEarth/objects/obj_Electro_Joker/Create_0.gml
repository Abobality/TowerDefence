jokerHealth = 200;

image_speed = 2;

if path_exists(pth_level_1)
{
	path_position = 1;
	path_start(pth_level_1,-20,path_action_stop,true);
}