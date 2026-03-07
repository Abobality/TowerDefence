var attackRange = collision_rectangle(x-32,y-32,x+192,y+32,obj_Zombie_Parent,false,true)

{
	if attackRange != noone and reload = false
	{
		shot()
	}
}