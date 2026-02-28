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
	
	var array = obj_bullet_pool.bullet_Grenadelvl1_pool[0]
	
	switch lvl
	{
		case 1:
			array = obj_bullet_pool.bullet_Grenadelvl1_pool[0]
			break;
			
		case 2:
			array = obj_bullet_pool.bullet_Grenadelvl2_pool[0]
			break;
			
		case 3:
			array = obj_bullet_pool.bullet_Grenadelvl2_pool[0]
			break;
			
		case 4:
			array = obj_bullet_pool.bullet_Grenadelvl3_pool[0]
			break;
			
		case 5:
			array = obj_bullet_pool.bullet_Grenadelvl3_pool[0]
			break;
	}
	array[0].x = x
	array[0].y = y
	array[0].active = true
	array[0].visible = true
	array[0].bulletSpeed = 5
	array[0].damage = damage
	array[0].move()
	array_delete(array,0,1)
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

