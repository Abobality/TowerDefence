function saveData(){
	var save_data = {
		money: global.Money,
		info: global.towerInfo,
		deck: global.Choosed
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
	
	global.easyWaves1S = array_create(10 * global.Multiple,obj_Basic_Zombie)
	global.easyWaves2S = array_create(15 * global.Multiple,obj_Fast_Zombie)
	global.easyWavesHybridS = array_create(10 * global.Multiple,obj_Basic_Zombie) repeat 15 * global.Multiple{array_push(global.easyWavesHybridS,obj_Fast_Zombie)}
	global.easyWaves1M = array_create(30 * global.Multiple,obj_Basic_Zombie)
	global.easyWaves2M = array_create(30 * global.Multiple,obj_Fast_Zombie)
	global.easyWavesHybridM = array_create(15 * global.Multiple,obj_Basic_Zombie) repeat 30 * global.Multiple{array_push(global.easyWavesHybridM,obj_Fast_Zombie)}
	global.middleWaves1S = array_create(100 * global.Multiple,obj_Basic_Zombie)
	global.middleWaves2S = array_create(50 * global.Multiple,obj_Fast_Zombie)repeat 50 * global.Multiple{array_push(global.easyWavesHybridM,obj_Basic_Zombie)}
	global.middleWaves3S = array_create(50 * global.Multiple,obj_Tank_Zombie)
	global.middleWavesHybridS = array_create(30 * global.Multiple,obj_Basic_Zombie) repeat 30 * global.Multiple{array_push(global.easyWavesHybridS,obj_Fast_Zombie)} repeat 30 * global.Multiple{array_push(global.easyWavesHybridS,obj_Tank_Zombie)}
	global.middleWaves1M = array_create(150 * global.Multiple,obj_Basic_Zombie)
	global.middleWaves2M = array_create(200 * global.Multiple,obj_Fast_Zombie)
	global.middleWaves3M = array_create(100 * global.Multiple,obj_Tank_Zombie) 
	global.middleWavesHybridM = array_create(150 * global.Multiple,obj_Basic_Zombie) repeat 100 * global.Multiple{array_push(global.easyWavesHybridS,obj_Fast_Zombie)} repeat 100 * global.Multiple{array_push(global.easyWavesHybridS,obj_Tank_Zombie)}
	global.bossWave = array_create(50 * global.Multiple,obj_Tank_Zombie) 
	repeat(global.Multiple){array_push(global.bossWave,obj_Zombie_Boss1)}

	global.easyWavesS = [global.easyWaves1S,global.easyWaves2S,global.easyWavesHybridS]
	global.easyWavesM = [global.easyWaves1M,global.easyWaves2M,global.easyWavesHybridM]
	global.middleWavesS = [global.middleWaves1S,global.middleWaves2S,global.middleWaves3S,global.middleWavesHybridS]
	global.middleWavesM = [global.middleWaves1M,global.middleWaves2M,global.middleWaves3M,global.middleWavesHybridM]

}