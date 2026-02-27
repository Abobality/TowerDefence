waves = global.waves;

wave = 1;
zombieNumber = 0;
isWaiting = false;
triumphWait = false;

zombieSounds = [snd_zombie1,snd_zombie2,snd_zombie3]

waiting = function()
{
	isWaiting = true;
}

createZombie = function()
{
	if wave < array_length(waves)
	{
		if zombieNumber < array_length(waves[wave])-1
		{
			instance_create_layer(path_get_x(pth_level_1,0),path_get_y(pth_level_1,0),"Instances",waves[wave][zombieNumber])
			zombieNumber++
			audio_play_sound(zombieSounds[irandom_range(0,2)],1,false,global.audio);
			alarm[0] = 20;
		}else{
			wave++
			zombieNumber = 0;
			if instance_exists(obj_Support_Tower_Parrent)
			{
				with(obj_Support_Tower_Parrent)
				{
					self.support_function()
				}
			}
			if global.autoSkip != true
			{
				waiting();
			}else{
				if (wave mod 15 == 0) and global.shop != true
				{
					instance_create_depth(room_width/2,room_height/2,-700,obj_Joker_Shop)
				}
				alarm[0] = 300
			}
		}
	}else if wave == array_length(waves) and instance_number(obj_Parent_Zombie) <= 0{
		instance_create_layer(0,0,"UI",obj_Win_Manager)	
	}else{
		triumphWait = true
	}
}

alarm[0] = 300;