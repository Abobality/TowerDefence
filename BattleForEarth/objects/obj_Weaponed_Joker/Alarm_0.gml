audio_play_sound(snd_pistol_shot,1,false,global.audio);
instance_create_depth(x,y,-3,obj_Pistol_Bullet,
{
	drawColour: #FEFE22,
	damage: 30,
	bulletSpeed: 5
})

alarm[0] = 60