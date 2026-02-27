range = 64;
cooldown = 120;
image_speed = 0;
barrage = 0;
upgrade = false;
cost = 50;
lvl = 1;
damage = 50;
name = "Shotgunner"
invisDetection = false;
depth = -y

sprites = [
	spr_policelvl1,
	spr_policelvl2,
	spr_policelvl3,
	spr_policelvl4,
	spr_policelvl5
]

arrayOfCash = 
[
	"poor",
	"not enough",
	"okak"
]


lvlUp = function()
{
	if global.cash >= cost 
	{
		if lvl != 5
		{
			global.cash -= cost;
			cost *= 2;
			lvl++;
			damage+=50;
			if lvl = 3 
			{
				damage*=2
			}
			sprite_index = sprites[lvl-1];
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

punch = function()
{
	var object = obj_Bat_Basic_Hitbox
	
	if lvl >= 4
	{
		object = obj_Bat_Electro_Hitbox
	}
	audio_play_sound(snd_police_punch,1,false,global.audio);
	instance_create_layer(x+80,y-8,"Instances",object,
	{
		damage: damage
	})
}
