range = room_width;
cooldown = 120;
image_speed = 0;
barrage = 0;
upgrade = false;
cost = 50;
lvl = 1;
damage = 25;
name = "Scout"
invisDetection = false;
depth = -y

arrayOfCash = 
[
	"poor",
	"not enough",
	"okak"
]

shot = function()
{
	image_xscale = 1.1;
	image_yscale = 0.9;
	audio_play_sound(snd_freeze,1,false,global.audio);
	instance_create_layer(x+16,y,"Instances",obj_Cryo_Bullet,
	{
		damage: damage,
		bulletSpeed: 5
	})
	alarm[1] = 5;
}

lvlUp = function()
{
	if global.cash >= cost 
	{
		if lvl != 5
		{
			global.cash -= cost;
			cost *= 2;
			lvl++;
			damage+=25;
			if lvl = 3 
			{
				damage*=2
			}
			if lvl < 4
			{
				image_index++;
			}
		}
	}else{ 
		instance_create_layer(room_width/2,room_height-32,"Instances",obj_Pop_Up,
		{
			text: arrayOfCash[irandom_range(0,2)],
			color: c_orange,
			font: fnt_Agressive12
		})
	}
}


