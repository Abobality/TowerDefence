var zone = collision_rectangle(x,y-32,range,y+32,obj_Parent_Zombie,true,true)
shot();

if zone != noone
{
	if barrage < 3
	{
		barrage++
		alarm[0] = 10
	}else{
		barrage=0
		alarm[0] = cooldown
	}
}else{
	exit
}