function cryoBullet(object)
{
	object.path_speed = 5;
	object.image_blend = c_aqua;
	
	var _return = function(arg)
	{
		arg.image_blend = c_white;
	}
	var _time_source = time_source_create(time_source_game,120,time_source_units_frames,_return,[object])
	time_source_start(_time_source)
}
