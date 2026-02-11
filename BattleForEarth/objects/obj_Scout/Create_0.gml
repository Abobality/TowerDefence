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
	instance_create_layer(x+16,y,"Instances",obj_Pistol_Bullet,
	{
		drawColour: c_yellow,
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
			}else{
				drawFunction = drawTwoHand;
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

drawOneHand = function()
{
	draw_sprite_ext(spr_Scout_Hands,lvl-1,x,y,image_xscale,image_yscale,0,c_white,1)
}

drawTwoHand = function()
{
	draw_sprite_ext(spr_Scout_Hands,lvl-1,x-16,y,image_xscale,image_yscale,0,c_white,1)
	draw_sprite_ext(spr_Scout_Hands,lvl-1,x+8,y,image_xscale,image_yscale,0,c_white,1)
}

drawFunction = drawOneHand;

