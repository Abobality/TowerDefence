// Inherit the parent event
event_inherited();



gunx = x;
guny = y;
gunx2 = x;
guny2 = y;

secondHand = false;

towerLevel = 1;

cooldown = 120;

radius = 150;

bulletAmount = 4;

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
			radius = 150;
			break;
			
		case 2:
			cooldown = 110;
			radius = 180;
			bulletAmount = 5;
			break;
			
		case 3:
			cooldown = 100;
			radius = 180;
			bulletAmount = 7;
			break;
			
		case 4:
			cooldown = 100;
			radius = 200;
			break;
			
		case 5:
			cooldown = 80;
			radius = 210;
			bulletAmount = 10;
			break;
	}
}

basicShot = function()
{
	var target = point_direction(x + lengthdir_x(16,direction),y + lengthdir_y(16,direction),gunx,guny)

	repeat(4)
	{
		instance_create_depth(gunx + lengthdir_x(16,gunDir),guny - 6 + lengthdir_y(16,gunDir),-3,obj_Shotgun_Bullet,
		{
			drawColour: #FEFE22
		})
	}
	
	gunx = x + lengthdir_x(16,target)
	guny = y + lengthdir_y(16,target)
}



drawHand1 = function()
{
	draw_sprite_ext(spr_Shot_Gunner_Hands,towerLevel-1,gunx,guny,image_xscale,image_yscale,gunDir,c_white,1)
}


