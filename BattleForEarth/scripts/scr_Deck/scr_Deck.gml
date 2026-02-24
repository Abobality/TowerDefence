enum CARDS
{
	SCOUT,
	SNIPER,
	SHOTGUNNER,
	MINER,
	MINIGUNNER,
	SOLDIER,
	DYNOMAN,
	POLICEMAN,
	CRYOGUNNER,
	DOCTOR
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
	[CARDS.SOLDIER,CARDS.DYNOMAN,CARDS.POLICEMAN,CARDS.CRYOGUNNER,CARDS.DOCTOR]
];

global.Choosed = [
];

global.JokerChoosed = [
]

global.Jokers = [
	{
		object: obj_Basic_Joker,
		cost: 1000
	},
	{
		object: obj_Frost_Joker,
		cost: 1500
	},
	{
		object: obj_Electro_Joker,
		cost: 2000
	},
	{
		object: obj_Angel_Joker,
		cost: 20000
	},
	{
		object: obj_Weaponed_Joker,
		cost: 2500
	}
]
