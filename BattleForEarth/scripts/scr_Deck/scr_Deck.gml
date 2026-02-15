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
	JOKERS.ELECTRO_JOKER
]

global.Jokers = [
	{
		object: obj_Basic_Joker,
		cost: 100
	},
	{
		object: obj_Frost_Joker,
		cost: 100
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


global.basicJokers = [
	JOKERS.BASIC_JOKER,
	JOKERS.ELECTRO_JOKER
]

global.rareJokers = [
	JOKERS.ELECTRO_JOKER,
	JOKERS.WEAPONED_JOKER
]

global.legendJoker = [
	JOKERS.AGNGEL_JOKER
]