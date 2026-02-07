if (file_exists("savegame.json")) {
    var _file = file_text_open_read("savegame.json");
    var _string = file_text_read_string(_file);
    file_text_close(_file);

    var _data = json_parse(_string);

	global.Money = _data.money;
	global.towerInfo = _data.info;
	global.Choosed = _data.deck;
}