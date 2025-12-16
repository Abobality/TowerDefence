var range = collision_circle(x,y,radius,obj_Parent_Zombie,false,true)
var nearest = instance_nearest(0,y,obj_Parent_Zombie)
direction = point_direction(x,y,nearest.x,nearest.y)

if direction > 90 and direction < 270
{
	image_xscale = -1
}else{
	image_xscale = 1
}

if range != noone
{
	if alarm[0] <= 0
	{
		alarm[0] = cooldown
	}
}