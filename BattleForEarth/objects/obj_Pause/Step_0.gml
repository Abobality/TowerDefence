if point_in_rectangle(mouse_x,mouse_y,room_width/2 + 50,245,room_width/2+80,275) and mouse_check_button_pressed(mb_left)
{
	global.autoSkip = !global.autoSkip
	audio_play_sound(snd_button,1,false,global.audio)
}

if point_in_rectangle(mouse_x,mouse_y,room_width/2 - 80,310,room_width/2+80,330) and mouse_check_button_pressed(mb_left)
{
	instance_activate_all()
	audio_play_sound(snd_button,1,false,global.audio)
	instance_destroy(obj_Polzunok)
	instance_destroy(self)
}

if point_in_rectangle(mouse_x,mouse_y,room_width/2 - 80,350,room_width/2+80,370) and mouse_check_button_pressed(mb_left)
{
	audio_play_sound(snd_button,1,false,global.audio)
	instance_create_depth(0,0,-100,obj_Fade_In,
	{
		depth: -10000,
		room_target: rm_Main_Menu
	});
}

if point_in_rectangle(mouse_x,mouse_y,room_width/2 - 80,390,room_width/2+80,410) and mouse_check_button_pressed(mb_left)
{
	audio_play_sound(snd_button,1,false,global.audio)
	game_end()
}

