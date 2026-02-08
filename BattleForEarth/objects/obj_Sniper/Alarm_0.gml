var zone = collision_rectangle(x,y-32,range,y+32,obj_Parent_Zombie,true,true)
shot();

if zone != noone
{
	alarm[0] = cooldown
}else{
	exit
}
