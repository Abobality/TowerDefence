alarm[1] = 10;
if instance_exists(obj_Support_Tower_Parrent)
{
	with(obj_Support_Tower_Parrent)
	{
		support_function();
	}
}

if currentWave!= array_length(global.wavePlan)
{
	currentWave++
	if currentWave % 15 = 0 and currentWave != 0
	{
		instance_create_layer(room_width/2,room_height/2,"UI",obj_Shop,
		{
			image_xscale: 3,
			image_yscale: 3,
		})
	}
}

global.enemyOnWave = global.wavePlan[currentWave-1].amount