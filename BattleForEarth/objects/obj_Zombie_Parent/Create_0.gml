zombieHealth = 3;
zombieSpeed = 1;
image_xscale = -1;

move = function()
{
	image_speed = 1
	move_towards_point(0,y,-1)
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
	move();
	visible = false;
	x = -128;
	y = -64;
	poolPushing()
}

setActive = function(Speed,healthZ,xpos,ypos)
{
	zombieHealth = healthZ;
	zombieSpeed = Speed;
	move();
	visible = true;
	x = xpos;
	y = ypos;
	
}

poolPushing()
setInactive()