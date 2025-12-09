inventory = global.Choosed

rotation = 0
xscale = 1
placeEnable = true;




placeSlot = 0;

drawSprites = 
[
	spr_Scout,
	spr_Sniper,
	spr_Shot_Gunner,
	spr_Miner,
	spr_MinigunnerBody
]

placeTower =
[
	obj_Scout,
	obj_Sniper,
	obj_ShotGunner,
	obj_Miner,
	obj_MiniGunner
]

createUnit = function(object)
{
	instance_create_depth(mouse_x div 32 * 32,mouse_y div 32 * 32,-5,object)
}