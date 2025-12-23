enum CARDS
{
	SCOUT,
	SNIPER,
	SHOTGUNNER,
	MINER,
	MINIGUNNER
}

enum JOKERS
{
	BASIC_JOKER,
	FROST_JOKER,
	ELECTRO_JOKER,
	AGNGEL_JOKER,
	WEAPONED_JOKER
}


global.Choose = [
	[CARDS.SCOUT,CARDS.SNIPER,CARDS.SHOTGUNNER,CARDS.MINER,CARDS.MINIGUNNER],
];

global.Choosed = [
];

global.JokerChoosed = [

	JOKERS.WEAPONED_JOKER,
	JOKERS.AGNGEL_JOKER
]

global.Jokers = [
	
	{
		object: obj_Basic_Joker,
		chance: 70
	},
	{
		object: obj_Frost_Joker,
		chance: 70
	},
	{
		object: obj_Electro_Joker,
		chance: 30
	},
	{
		object: obj_Angel_Joker,
		chance: 10
	},
	{
		object: obj_Weaponed_Joker,
		chance: 30
	}
]
