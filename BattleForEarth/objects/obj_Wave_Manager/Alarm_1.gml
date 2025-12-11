instance_create_depth(path_get_point_x(pth_level_1,1),path_get_point_y(pth_level_1,1),depth,global.wavePlan[currentWave-1].zombie)
if zombieSpawned < global.wavePlan[currentWave-1].amount
{
	alarm[1] = 20;
	zombieSpawned++
}else{
	zombieSpawned = 0;
	alarm[0] = 300;
	
}