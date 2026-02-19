if keyboard_check_pressed(ord("C"))
{
	wavesSetUp(2);
	repeat 30{array_push(global.waves,global.middleWavesS[irandom_range(0,3)])}
	repeat 30{array_push(global.waves,global.middleWavesM[irandom_range(0,3)])}
	wavesSetUp(3);
	repeat 30{array_push(global.waves,global.middleWavesS[irandom_range(0,3)])}
	repeat 30{array_push(global.waves,global.middleWavesM[irandom_range(0,3)])}
	wavesSetUp(4);
	repeat 30{array_push(global.waves,global.middleWavesS[irandom_range(0,3)])}
	repeat 30{array_push(global.waves,global.middleWavesM[irandom_range(0,3)])}
	wavesSetUp(40);
	repeat 30{array_push(global.waves,global.bossWave)}
	instance_activate_all()
	obj_Spawn_Wave_Manager.createZombie()
	instance_destroy(obj_Title)
	instance_destroy(self)
}
else if keyboard_check_pressed(ord("E"))
{
	room_goto(rm_Choose_menu);
}
