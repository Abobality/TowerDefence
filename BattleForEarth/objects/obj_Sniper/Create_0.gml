// Inherit the parent event
event_inherited();

gunx = x;
guny = y;


towerLevel = 1;

cooldown = 120;

radius = 350;

buffs = [];

shotFunction = function(func) 
{
	func();
}
drawHandFunction = function(func) 
{
	func();
}

levelUp = function()
{
	if towerLevel < 5
	{
		alarm[0] = 0;
		towerLevel++
		if image_index != 4
		{
			image_index++
		}
	}
	
	switch towerLevel
	{
		case 1:
			cooldown = 120;
			radius = 350;
			break;
			
		case 2:
			cooldown = 110;
			radius = 350;
			break;
			
		case 3:
			cooldown = 110;
			radius = 400;
			break;
			
		case 4:
			cooldown = 90;
			radius = 400;
			break;
			
		case 5:
			cooldown = 60;
			radius = 600;
			break;
	}
}

basicShot = function()
{
	var target = point_direction(x + lengthdir_x(16,direction),y + lengthdir_y(16,direction),gunx,guny)

	instance_create_depth(gunx + lengthdir_x(24,gunDir),guny - 12 + lengthdir_y(24,gunDir),-3,obj_Sniper_Bullet,
	{
		drawColour : #7FC7FF 
	})

	gunx = x + lengthdir_x(24,target)
	guny = y + lengthdir_y(24,target)
}


drawHand1 = function()
{
	draw_sprite_ext(spr_Sniper_Hands,towerLevel-2,gunx+8,guny,image_xscale,image_yscale,gunDir,c_white,1)
}


