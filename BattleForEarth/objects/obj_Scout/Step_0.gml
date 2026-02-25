var zone = collision_rectangle(x,y-32,x + range,y+32,obj_Parent_Zombie,true,true)

if zone != noone 
{
	if alarm[0] <= 0
	{
		alarm[0] = cooldown
	}

}