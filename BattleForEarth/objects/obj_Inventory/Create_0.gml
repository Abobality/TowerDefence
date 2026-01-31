inventory = global.Choosed

jokerInventoryUpgrade = function()
{
	jokerInventory = global.JokerChoosed	
}

jokerInventoryUpgrade();

rotation = 0
xscale = 1
placeEnable = true;

jokerOrder = 0;

arrayOfCash = 
[
	"poor",
	"not enough",
	"okak"
]

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
	{
		object: obj_Tower_Parent,
		cost: 100
	},
	{
		object: obj_Miner,
		cost: 500
	},
	{
		object: obj_Miner,
		cost: 350
	},
	{
		object: obj_Miner,
		cost: 250
	},
	{
		object: obj_Miner,
		cost: 1150
	}
]




createUnit = function(object,cost)
{
	if cost <= global.cash
	{
		instance_create_layer(mouse_x div 32 * 32,mouse_y div 32 * 32,"Instances",object)
		global.cash -= cost
	}else{
		instance_create_layer(room_width/2,room_height-32,"Instances",obj_Pop_Up,
		{
			text: arrayOfCash[irandom_range(0,2)],
			color: c_white,
			font: fnt_Agressive12
		})
	}
}

spawnJoker = function()
{
	jokerOrder = 0;
	alarm[0] = 60
}

if array_length(jokerInventory) != 0
{
	spawnJoker();
}

