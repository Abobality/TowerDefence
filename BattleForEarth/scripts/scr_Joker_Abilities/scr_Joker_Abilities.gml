function frostJoker(object)
{
	audio_play_sound(snd_freeze,1,false,global.audio);
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
	audio_play_sound(snd_electro_joker,1,false,global.audio);
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
	audio_play_sound(snd_Heaven_Jkoker_Effect,1,false,global.audio);
	with(obj_Parent_Zombie)
	{
		healthPoints = 0;
	}
	if global.BaseHealth<25
	{
		global.BaseHealth++
	}
}

