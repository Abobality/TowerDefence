var attackRange = collision_rectangle(x-32,y-16,x+192,y+16,obj_Zombie_Parent,false,true)

{
	if attackRange != noone and reload = false
	{
		shot()
	}
}

if hp <= 0
{
	instance_destroy(self)
}