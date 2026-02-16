randomise()

repeat 5
{
	array_push(global.waves,global.easyWavesS[irandom_range(0,2)]);
}

repeat 4
{
	
	array_push(global.waves,global.easyWavesM[irandom_range(0,2)]);
}

global.path = path