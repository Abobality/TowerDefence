// Inherit the parent event
event_inherited();

gunx = x;
guny = y;
gunx2 = x;
guny2 = y;

secondHand = false;

towerLevel = 1;

cooldown = 20;

radius = 150;

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
		if image_index < 4
		{
			image_index++
		}
		if towerLevel >3
		{
			shotFunction(basicShot)
			drawHandFunction(drawHand2)
		}
	}
	
	switch towerLevel
	{
		case 1:
			cooldown = 6;
			radius = 300;
			break;
			
		case 2:
			cooldown = 6;
			radius = 350;
			break;
			
		case 3:
			cooldown = 4;
			radius = 350;
			break;
			
		case 4:
			cooldown = 3;
			radius = 400;
			break;
			
		case 5:
			cooldown = 2;
			radius = 450;
			break;
	}
}

basicShot = function()
{
	var target = point_direction(x + lengthdir_x(16,direction),y + lengthdir_y(16,direction),gunx,guny)

	instance_create_depth(gunx + lengthdir_x(16,gunDir),guny - 6 + lengthdir_y(16,gunDir),-3,obj_Pistol_Bullet,
	{
		drawColour: #FEFE22
	})

	gunx = x + lengthdir_x(16,target)
	guny = y + lengthdir_y(16,target)
}

dualShot = function()
{
	var target = point_direction(x + lengthdir_x(16,direction),y + lengthdir_y(16,direction),gunx,guny)
	secondHand = !secondHand;
	
	if secondHand = true
	{
		instance_create_depth(gunx+10 + lengthdir_x(16,gunDir),guny - 6 + lengthdir_y(16,gunDir),-3,obj_Pistol_Bullet,
	{
		drawColour: #FEFE22
	})
		gunx = x + lengthdir_x(16,target)
		guny = y + lengthdir_y(16,target)
	}else{
		instance_create_depth(gunx2-10 + lengthdir_x(16,gunDir),guny2 - 6 + lengthdir_y(16,gunDir),-3,obj_Pistol_Bullet,
	{
		drawColour: #FEFE22
	})
		gunx2 = x + lengthdir_x(16,target)
		guny2 = y + lengthdir_y(16,target)
	}
}

drawHand1 = function()
{
	draw_sprite_ext(spr_MinigunnerHand,towerLevel-1,gunx,guny,image_xscale,image_yscale,gunDir,c_white,1)
}
drawHand2 = function()
{
	draw_sprite_ext(spr_MinigunnerHand,towerLevel-1,gunx+10,guny,image_xscale,image_yscale,gunDir,c_white,1)
	draw_sprite_ext(spr_MinigunnerHand,towerLevel-1,gunx2-10,guny2,image_xscale,image_yscale,gunDir,c_white,1)
}
