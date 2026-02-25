upgrade = false;
cost = 300;
income = 100;
name = "Miner"
depth = -y

support_function = function()
{
	audio_play_sound(snd_money_gain,1,false,global.audio);
	global.cash += income;
	instance_create_depth(x,y,depth-1,obj_Pop_Up,
	{
		text: $"{income}$",
		color: #228B22,
		font: fnt_Agressive20
	})
}

image_speed = 0;

depth = -y;

current_level = 1;

lvlUp = function()
{
	if current_level != 5
	{
		income*=2;
		current_level++;
		if current_level > 2
		{
			image_index++;
		}
	}
}