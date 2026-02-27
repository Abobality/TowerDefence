if keyboard_check_pressed(ord("C"))
{
	wavesSetUp(2);
	repeat 30{array_push(global.waves,global.monoWavesSmall[irandom_range(0,2)])}
	repeat 30{array_push(global.waves,global.hybridWavesSmall[irandom_range(0,1)])}
	array_push(global.waves,global.bossWaves[0])
	wavesSetUp(3);
	repeat 30{array_push(global.waves,global.monoWavesSmall[irandom_range(0,2)])}
	repeat 30{array_push(global.waves,global.hybridWavesSmall[irandom_range(0,1)])}
	array_push(global.waves,global.bossWaves[0])
	wavesSetUp(4);
	repeat 30{array_push(global.waves,global.monoWavesSmall[irandom_range(0,2)])}
	repeat 30{array_push(global.waves,global.hybridWavesSmall[irandom_range(0,1)])}
	array_push(global.waves,global.bossWaves[0])
	wavesSetUp(40);
	repeat 30{array_push(global.waves,global.bossWaves[0])}
	instance_activate_all()
	obj_Spawn_Wave_Manager.createZombie()
	instance_destroy(obj_Title)
	instance_destroy(self)
}
else if keyboard_check_pressed(ord("E"))
{
	array_push(global.waveRecord,obj_Spawn_Wave_Manager.wave)
	instance_create_depth(0,0,-100,obj_Fade_In,
	{
		depth: -10000,
		room_target: rm_Main_Menu
	});
}
