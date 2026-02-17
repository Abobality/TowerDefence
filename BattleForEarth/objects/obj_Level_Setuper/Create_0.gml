randomise()

wavesSetUp(1);

repeat 10
{
	
	array_push(global.waves,global.easyWavesS[irandom_range(0,2)]);
}

array_push(global.waves,obj_Tank_Zombie)

repeat 10
{
	
	array_push(global.waves,global.easyWavesM[irandom_range(0,2)]);
}

repeat 10
{
	
	array_push(global.waves,global.middleWavesS[irandom_range(0,3)]);
}

array_push(global.waves,global.bossWave)



global.path = path