function frostJoker(object)
{
	object.path_speed = object.path_speed/2;
	object.image_blend = c_aqua;
	call_later(2, time_source_units_seconds, object.path_speed*2, false)
	call_later(2, time_source_units_seconds, object.image_blend = c_white, false)
}