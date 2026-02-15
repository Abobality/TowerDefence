waves = global.waves;

wave = 1;
zombieNumber = 0;
isWaiting = false;

waiting = function()
{
	isWaiting = true;
}

createZombie = function()
{
	instance_create_layer(path_get_x(pth_level_1,0),path_get_y(pth_level_1,0),"Instances",waves[wave][zombieNumber])
	
	
	if zombieNumber < array_length(waves[wave])-1
	{
		zombieNumber++
		alarm[0] = 20;
	}else{
		wave++
		zombieNumber = 0;
		waiting();
	}
	
}

alarm[0] = 300;