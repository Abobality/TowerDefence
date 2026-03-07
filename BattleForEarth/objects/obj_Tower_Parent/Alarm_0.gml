var attackRange = collision_rectangle(x-32,y-16,x+192,y+16,obj_Zombie_Parent,false,true)
reload = false
{
	if attackRange != noone
	{
		shot()
	}else{
		exit	
	}
}