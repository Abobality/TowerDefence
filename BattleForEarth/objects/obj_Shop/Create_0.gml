instance_destroy(obj_Joker_Parent)
instance_destroy(obj_Parent_Zombie)
instance_deactivate_object(obj_Wave_Manager)
instance_deactivate_object(obj_Inventory)

xscale = 1;
JokerID = 0;

depth = -50
image_speed = 0;

function jokerChanceToDrop()
{
	var chance = irandom(100)
	JokerID = 0;
	
	if chance >= 20
	{
		JokerID = global.basicJokers[irandom(array_length(global.basicJokers)-1)]
		return(JokerID);
	}else if chance >= 50
	{
		JokerID = global.rareJokers[irandom(array_length(global.rareJokers)-1)]
		return(JokerID);
	}else if chance >= 10
	{
		JokerID = global.legendaryJokers[irandom(array_length(global.legendaryJokers)-1)]
		return(JokerID);
	}
	
}

jokerShop = [
	[jokerChanceToDrop,jokerChanceToDrop],
	[jokerChanceToDrop,jokerChanceToDrop]
]



cardShop = [
	[CARDS.MINER,CARDS.MINIGUNNER],
	[CARDS.MINER,CARDS.MINIGUNNER]
]