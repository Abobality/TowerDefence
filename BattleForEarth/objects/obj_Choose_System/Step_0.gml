y = clamp(y,0,128);

if keyboard_check_pressed(vk_enter) 
{
	if array_length(global.Choosed) != 0
	{
		audio_play_sound(snd_button,1,false,global.audio)
		room_goto_next();
	}else{
		instance_create_layer(room_width/2,room_height-32,"Instances",obj_Pop_Up,
		{
			text: arrayOfEmptyDeck[irandom_range(0,3)],
			color: c_white,
			font: fnt_Agressive12
		})
	}
}