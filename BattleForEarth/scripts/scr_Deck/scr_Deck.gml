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
	obj_Basic_Joker,
	obj_Frost_Joker,
	obj_Electro_Joker,
	obj_Angel_Joker,
	obj_Weaponed_Joker
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