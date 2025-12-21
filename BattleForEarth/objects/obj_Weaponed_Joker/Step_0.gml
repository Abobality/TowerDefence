// Inherit the parent event
event_inherited();

var range = collision_circle(x,y,128,obj_Parent_Zombie,true,true)

if range != noone
{
	path_speed = 0;
	image_speed = 0;
	if alarm <= 0
	{
		alarm[0] = 30
	}
}else{
	image_speed = 1;
	path_speed = -10;
}