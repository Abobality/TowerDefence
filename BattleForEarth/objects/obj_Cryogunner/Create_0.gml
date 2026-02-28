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
	obj_bullet_pool.bullet_cryo_pool[0].x = x
	obj_bullet_pool.bullet_cryo_pool[0].y = y
	obj_bullet_pool.bullet_cryo_pool[0].active = true
	obj_bullet_pool.bullet_cryo_pool[0].visible = true
	obj_bullet_pool.bullet_cryo_pool[0].bulletSpeed = 5
	obj_bullet_pool.bullet_cryo_pool[0].damage = damage
	obj_bullet_pool.bullet_cryo_pool[0].bulletPersistent = 20
	obj_bullet_pool.bullet_cryo_pool[0].move()
	array_delete(obj_bullet_pool.bullet_cryo_pool,0,1)
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
			image_index++
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


