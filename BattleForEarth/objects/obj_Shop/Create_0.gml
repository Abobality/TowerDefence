instance_destroy(obj_Joker_Parent)
instance_destroy(obj_Parent_Zombie)
instance_deactivate_object(obj_Wave_Manager)
instance_deactivate_object(obj_Inventory)

xscale = 1;

depth = -50

image_speed = 0;

function jokerChanceToDrop()
{
	var chance = irandom(100)
	var number = 0;
	
	if chance <= global.Jokers
	{
		
	}
}

jokerShop = [
	[],
	[]
]



function jokerShopSetJokers()
{
	for (var i = 0;i < 2;i++)
	{
		for (var j = 0;j < 2;j++)
		{
			var joker = 1
			if array_contains(global.JokerChoosed,joker) and array_contains(jokerShop,joker)
			{
				jokerShopSetJokers()
			}else{
				array_push(jokerShop[i],joker)
			}
		}
	}
}

jokerShopSetJokers()

cardShop = [
	[CARDS.MINER,CARDS.MINIGUNNER],
	[CARDS.MINER,CARDS.MINIGUNNER]
]