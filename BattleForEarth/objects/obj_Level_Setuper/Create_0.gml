randomise()

wavesSetUp(1);

repeat(10){array_push(global.waves,global.monoWavesSmall[irandom_range(0,2)])}
repeat(20){array_push(global.waves,global.hybridWavesSmall[irandom_range(0,1)])}
array_push(global.waves,global.bossWaves[0])



global.path = path