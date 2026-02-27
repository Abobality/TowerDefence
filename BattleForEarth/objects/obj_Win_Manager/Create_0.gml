audio_play_sound(snd_triumph,1,false,global.audio);
moneyGive()
array_push(global.waveRecord,obj_Spawn_Wave_Manager.wave)
saveData()
instance_deactivate_all(true)
instance_create_layer(room_width/2,room_height/2,"UI",obj_Title,
{
	image_xscale: 8 ,
	image_blend: c_yellow,
	text: "Triumph!"
});

