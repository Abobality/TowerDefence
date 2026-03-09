zombieHealth = 3;
zombieSpeed = 0;
image_xscale = -1;
range = 16
cooldown = false
attackSpeed = 60

move = function(spd)
{
	image_speed = spd
	move_towards_point(0,y,spd)
}

poolPushing = function()
{
	if !array_contains(global.ZombiePool,id)
	{
		array_push(global.ZombiePool,id)
	}
}


setInactive = function()
{
	zombieSpeed = 0;
	move(zombieSpeed);
	visible = false;
	x = -128;
	y = -64;
	cooldown = false
	poolPushing()
}

setActive = function(Speed,healthZ,xpos,ypos)
{
	zombieHealth = healthZ;
	zombieSpeed = Speed;
	move(zombieSpeed);
	visible = true;
	x = xpos;
	y = ypos;
}

punch = function()
{ 
	var nearest = instance_nearest(x-range,y,obj_Tower_Parent)
	zombieSpeed = 0;
	image_speed = 0;
	move(zombieSpeed);
	cooldown = true;
	nearest.hp--;
	var timer = 0
	
	timer++
	
	if timer == attackSpeed
	{
		cooldown = false;
	}
	
}


poolPushing()
setInactive()