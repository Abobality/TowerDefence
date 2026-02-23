function saveData(){
	var save_data = {
		money: global.Money,
		info: global.towerInfo,
		deck: global.Choosed,
		promo: global.promocodes
	}

	var _string = json_stringify(save_data);

	var _file = file_text_open_write("savegame.json");
	file_text_write_string(_file, _string);
	file_text_close(_file);

	if file_exists(_file)
	{
		show_debug_message($"{_file} exists")
	}else{
		show_debug_message($"{_file} doesnt exists")
	}
}


function roll()
{
	var number = irandom(array_length(global.Jokers)-1)
	
	if array_contains(global.JokerChoosed,number)
	{
		return roll();
	}else{
		return number;
	}
}

function wavesSetUp(X)
{
	global.Multiple = X;
	
	easySmallWave = array_create(8 * global.Multiple,obj_Basic_Zombie)
	easySmallFastWave = array_create(14 * global.Multiple,obj_Fast_Zombie)
	easySmallTankWave = array_create(6 * global.Multiple,obj_Tank_Zombie)
	
	easyLightHybridWave = array_create(10 * global.Multiple,obj_Basic_Zombie)
					   repeat 15 * global.Multiple{array_push(easyLightHybridWave,obj_Fast_Zombie)}
	easyTankHybridWave = array_create(10 * global.Multiple,obj_Basic_Zombie)
					   repeat 10 * global.Multiple{array_push(easyTankHybridWave,obj_Tank_Zombie)}
	
	easySmalBossWave = array_create(10 * global.Multiple,obj_Basic_Zombie)
					   repeat 15 * global.Multiple{array_push(easySmalBossWave,obj_Fast_Zombie)}
					   repeat 8 * global.Multiple{array_push(easySmalBossWave,obj_Tank_Zombie)}
					   repeat 2 * global.Multiple{array_push(easySmalBossWave,obj_Zombie_Boss1)}

	global.monoWavesSmall = [easySmallWave,easySmallFastWave,easySmallTankWave]
	global.hybridWavesSmall = [easyLightHybridWave,easyTankHybridWave]
	global.bossWaves = [easySmalBossWave]
}

function moneyGive()
{
	var earn = 0;
	var wave = obj_Spawn_Wave_Manager.wave
	
	if wave < 8
	{
		earn = 30
	}else if wave > 8 and wave < 16
	{
		earn = 60
	}else if wave > 16 and wave < 32
	{
		earn = 90
	}else if wave > 32
	{
		earn = 100 * global.Multiple
	}
	
	global.Money += earn
	
}

function promocodeCheck(index)
{
	if keyboard_string = global.promocodes[index].code
	{
		if global.promocodes[index].expired = false
		{
			global.promocodes[index].reward();
			global.promocodes[index].expired = true;
		
			instance_create_layer(room_width/2,room_height-32,"Instances",obj_Pop_Up,
			{
				text: "code accepted!",
				color: c_white,
				font: fnt_Agressive12
			})
		}else{
			instance_create_layer(room_width/2,room_height-32,"Instances",obj_Pop_Up,
			{
				text: "code expired!",
				color: c_white,
				font: fnt_Agressive12
			})
		}
		
	}
	
	if keyboard_string != global.promocodes[index].code {
		instance_create_layer(room_width/2,room_height-32,"Instances",obj_Pop_Up,
		{
			text: "code incorrect!",
			color: c_white,
			font: fnt_Agressive12
		})
	}
}