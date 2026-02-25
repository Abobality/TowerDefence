range = 320;
cooldown = 120;
image_speed = 0;
barrage = 0;
upgrade = false;
cost = 300;
lvl = 1;
damage = 25;
name = "Dynoman"
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
	instance_create_layer(x+80,y-8,"Instances",obj_Shot_Gun_Shot,
	{
		drawColour: c_yellow,
		damage: damage,
		image_xscale: 3,
		image_yscale: 3
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
			damage+=50;
			if lvl = 3 
			{
				damage*=2
			}
			image_index++;
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

