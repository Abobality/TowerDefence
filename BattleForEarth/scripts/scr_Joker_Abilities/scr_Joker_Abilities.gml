function frostJoker(object)
{
	object.path_speed = object.path_speed/2;
	object.image_blend = c_aqua;
	
	var _return = function(arg)
	{
		arg.path_speed = arg.path_speed*2;
		arg.image_blend = c_white;
	}
	var _time_source = time_source_create(time_source_game,120,time_source_units_frames,_return,[object])
	time_source_start(_time_source)
}

function electroJoker(object)
{
	var zombieSpeed = object.path_speed;
	var imageSpeed = object.image_speed;
	object.path_speed = 0;
	object.image_blend = c_blue;
	object.image_speed = 0;
	
	var _return = function(arg,zspeed,imgSpeed)
	{
		arg.path_speed = zspeed;
		arg.image_blend = c_white;
		arg.image_speed = imgSpeed;
	}
	var _time_source = time_source_create(time_source_game,120,time_source_units_frames,_return,[object,zombieSpeed,imageSpeed])
	time_source_start(_time_source)
}

function angelJoker()
{
	with(obj_Parent_Zombie)
	{
		healthPoints = 0;
	}
	if global.BaseHealth<25
	{
		global.BaseHealth++
	}
}

