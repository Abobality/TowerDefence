alarm[1] = 10;
if instance_exists(obj_Support_Tower_Parrent)
{
	with(obj_Support_Tower_Parrent)
	{
		support_function();
	}
}

if currentWave!= 4
{
	currentWave++
}

global.enemyOnWave = global.wavePlan[currentWave-1].amount