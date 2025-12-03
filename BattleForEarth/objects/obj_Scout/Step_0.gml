var range = collision_circle(x,y,radius,obj_Parent_Zombie,false,true)
var nearest = instance_nearest(path_get_point_x(pth_level_1,10),path_get_point_y(pth_level_1,10),obj_Parent_Zombie)


if gunx != x or guny != y
{
	gunx = lerp(gunx,x,0.2)
	guny = lerp(guny,y,0.2)
}
if gunx2 != x or guny2 != y
{
	gunx2 = lerp(gunx2,x,0.2)
	guny2 = lerp(guny2,y,0.2)
}

if range != noone
{
	direction = point_direction(x,y,nearest.x,nearest.y)
	
	if direction > 90 and direction < 270
	{
		image_xscale = -1
		gunDir = direction + 180
	}else{
		image_xscale = 1
		gunDir = direction
	}
	
	if alarm[0] <= 0
	{
		alarm[0] = cooldown
	}
}




