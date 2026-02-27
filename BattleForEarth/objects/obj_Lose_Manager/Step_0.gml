if global.BaseHealth <= 0
{
	array_push(global.waveRecord,obj_Spawn_Wave_Manager.wave)
	saveData()
	if audioplayed = false
	{
		audio_pause_all()
		audio_play_sound(snd_fail,1,false,global.audio);
		instance_create_layer(room_width/2,room_height/2,"UI",obj_Title,
		{
			image_xscale: 8 ,
			image_blend: c_red,
			text: "defeat"
		});
		audioplayed = true
	}
	
	global.JokerChoosed = []
	instance_destroy(obj_Parent_Zombie);
	instance_destroy(obj_Tower_Parent);
	instance_destroy(obj_Support_Tower_Parrent);
	instance_destroy(obj_Joker_Parent);
	
	instance_deactivate_layer("Instances");
	
	if keyboard_check_pressed(ord("R"))
	{
		
		moneyGive()
		room_restart();
	}
	else if keyboard_check_pressed(ord("E"))
	{
		
		moneyGive()
		instance_create_depth(0,0,-100,obj_Fade_In,
		{
			depth: -10000,
			room_target: rm_Main_Menu
		});
	}
}