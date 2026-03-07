var attackRange = collision_rectangle(x-32,y-32,x+192,y+32,obj_Zombie_Parent,false,true)
reload = false
{
	if attackRange != noone
	{
		shot()
	}else{
		exit	
	}
}