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