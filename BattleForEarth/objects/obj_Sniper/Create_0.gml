range = room_width;
cooldown = 240;
image_speed = 0;
barrage = 0;
cost = 650;
lvl = 1;
damage = 100;
name = "Sniper"
invisDetection = false;
upgrade = false;
draw_index = 0;
depth = -y

arrayOfCash = 
[
	"poor",
	"not enough",
	"okak"
]

shot = function()
{
	audio_play_sound(snd_pistol_shot,1,false,global.audio);
	image_xscale = 1.1;
	image_yscale = 0.9;
	obj_bullet_pool.bullet_sniper_pool[0].x = x
	obj_bullet_pool.bullet_sniper_pool[0].y = y
	obj_bullet_pool.bullet_sniper_pool[0].active = true
	obj_bullet_pool.bullet_sniper_pool[0].visible = true
	obj_bullet_pool.bullet_sniper_pool[0].bulletSpeed = 10
	obj_bullet_pool.bullet_sniper_pool[0].damage = damage
	obj_bullet_pool.bullet_sniper_pool[0].move()
	array_delete(obj_bullet_pool.bullet_sniper_pool,0,1)
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
			if lvl = 4 
			{
				damage*=2
			}
			if lvl > 2 
			{
				draw_index++
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

drawOneHand = function()
{
	draw_sprite_ext(spr_Sniper_Hands,draw_index,x,y,image_xscale,image_yscale,0,c_white,1)
}


drawFunction = drawOneHand;

