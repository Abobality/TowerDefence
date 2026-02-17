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
	JOKERS.BASIC_JOKER,
]

global.Jokers = [
	{
		object: obj_Basic_Joker,
		cost: 100
	},
	{
		object: obj_Frost_Joker,
		cost: 1000000
	},
	{
		object: obj_Electro_Joker,
		cost: 100
	},
	{
		object: obj_Angel_Joker,
		cost: 100
	},
	{
		object: obj_Weaponed_Joker,
		cost: 100
	}
]
