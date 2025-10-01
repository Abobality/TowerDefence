inventory = 
[
	CARDS.SCOUT,
	CARDS.SNIPER,
]

rotation = 0
xscale = 1
placeEnable = true;

enum CARDS
{
	SCOUT,
	SNIPER,
	SHOTGUNNER
}


placeSlot = 0;

drawSprites = 
[
	spr_Scout,
	spr_Sniper,
]

placeTower =
[
	obj_Scout,
	obj_Sniper
]

createUnit = function(object)
{
	instance_create_depth(mouse_x div 32 * 32,mouse_y div 32 * 32,-5,object)
}