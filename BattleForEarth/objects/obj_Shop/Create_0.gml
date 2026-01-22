instance_destroy(obj_Joker_Parent)
instance_destroy(obj_Parent_Zombie)
instance_deactivate_object(obj_Wave_Manager)
instance_deactivate_object(obj_Inventory)

<<<<<<< HEAD
=======
xscale = 1;
JokerID = 0;

depth = -50
>>>>>>> d3b5b5390c3de8e62add9c49194ad091b866a56a
image_speed = 0;

jokerShop = []

jokerShopFiller = function()
{
<<<<<<< HEAD
	for (var i = 0;i < 5;i++)
	{
		array_push(jokerShop,i)
=======
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
>>>>>>> d3b5b5390c3de8e62add9c49194ad091b866a56a
	}
	
}

<<<<<<< HEAD
jokerShopFiller();
=======
jokerShop = [
	[jokerChanceToDrop,jokerChanceToDrop],
	[jokerChanceToDrop,jokerChanceToDrop]
]



cardShop = [
	[CARDS.MINER,CARDS.MINIGUNNER],
	[CARDS.MINER,CARDS.MINIGUNNER]
]
>>>>>>> d3b5b5390c3de8e62add9c49194ad091b866a56a
