range = 64;
cooldown = 120;
image_speed = 0;
barrage = 0;
upgrade = false;
cost = 350;
lvl = 1;
damage = 50;
name = "Shotgunner"
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
	audio_play_sound(snd_shotgun_shot,1,false,global.audio);
	image_xscale = 1.1;
	image_yscale = 0.9;
	obj_bullet_pool.bullet_Shotgun_pool[0].x = x
	obj_bullet_pool.bullet_Shotgun_pool[0].y = y
	obj_bullet_pool.bullet_Shotgun_pool[0].active = true
	obj_bullet_pool.bullet_Shotgun_pool[0].visible = true
	obj_bullet_pool.bullet_Shotgun_pool[0].damage = damage
	array_delete(obj_bullet_pool.bullet_Shotgun_pool,0,1)
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

drawOneHand = function()
{
	draw_sprite_ext(spr_Shot_Gunner_Hands,lvl-1,x,y,image_xscale,image_yscale,0,c_white,1)
}


drawFunction = drawOneHand;

