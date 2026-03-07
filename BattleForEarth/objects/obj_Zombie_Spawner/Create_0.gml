alarm[0] = 10

spawnZombie = function()
{
	if array_length(global.ZombiePool) > 0
	{
		global.ZombiePool[0].setActive(4,4,room_width-64,irandom_range(0,room_height))
		array_delete(global.ZombiePool,0,1)
	}else{
		instance_create_layer(x,y,"Instances",obj_Zombie_Parent)
		global.ZombiePool[0].setActive(4,4,room_width-64,irandom_range(0,room_height))
		array_delete(global.ZombiePool,0,1)
	}
	
}