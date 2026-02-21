function cryoBullet(object)
{
	var z_speed = object.path_speed
	object.path_speed = 2;
	object.image_blend = c_aqua;
	
	var _return = function(arg,zombiespeed)
	{
		arg.path_speed = zombiespeed;
		arg.image_blend = c_white;
	}
	var _time_source = time_source_create(time_source_game,120,time_source_units_frames,_return,[object,z_speed])
	time_source_start(_time_source)
}
