waves = global.waves;

wave = 8;
zombieNumber = 0;
isWaiting = false;

waiting = function()
{
	isWaiting = true;
}

createZombie = function()
{
	if zombieNumber < array_length(waves[wave])-1
	{
		instance_create_layer(path_get_x(pth_level_1,0),path_get_y(pth_level_1,0),"Instances",waves[wave][zombieNumber])
		zombieNumber++
		alarm[0] = 20;
	}else{
		wave++
		zombieNumber = 0;
		if instance_exists(obj_Support_Tower_Parrent)
		{
			with(obj_Support_Tower_Parrent)
			{
				self.support_function()
			}
		}
		waiting();
	}
	
}

alarm[0] = 300;