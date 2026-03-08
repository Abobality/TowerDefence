with obj_Zombie_Parent
{
	var collision = collision_rectangle(x+16,y+16,x-range,y-range,obj_Tower_Parent,false,true)
	
	if collision != noone
	{
		punch();	
	}else{
		move(-zombieSpeed)
	}
}

alarm[0] = 2