range = 320;
cooldown = 120;
image_speed = 0;
barrage = 0;
upgrade = false;
cost = 300;
lvl = 1;
damage = 0;
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
	
	var object = obj_Grenade_lvl1
	
	switch lvl
	{
		case 1:
			object = obj_Grenade_lvl1
			break;
			
		case 2:
			object = obj_Grenade_lvl1
			break;
			
		case 3:
			object = obj_Grenade_lvl2
			break;
			
		case 4:
			object = obj_Grenade_lvl2
			break;
			
		case 5:
			object = obj_Grenade_lvl3
			break;
	}
	instance_create_layer(x+80,y-8,"Instances",object,
	{
		damage: damage,
		bulletSpeed:4
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

