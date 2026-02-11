global.towerInfo = [
	
	{
		title: "Scout",
		text: "\n\nCost:100 coins\nIn game Cost:100$\nDamage:10\nRadius:150\n\n\nYour starter\npack btw",
		image: spr_Scout,
		image2: spr_Scout_Hands,
		cost: 100,
		brought: false
	},
	{
		title: "Sniper",
		text: "\n\nCost:100 coins\nIn game Cost:100$\nDamage:10\nRadius:150\n\n\nYour starter\npack btw",
		image: spr_Sniper,
		image2: spr_Sniper_Hands,
		cost: 300,
		brought: false
	},
	{
		title: "Shotgunner",
		text: "\n\nCost:100 coins\nIn game Cost:100$\nDamage:10\nRadius:150\n\n\nYour starter\npack btw",
		image: spr_Shot_Gunner,
		image2: spr_Shot_Gunner_Hands,
		cost: 100,
		brought: false
	},
	{
		title: "Miner",
		text: "\n\nCost:100 coins\nIn game Cost:100$\nDamage:10\nRadius:150\n\n\nYour starter\npack btw",
		image: spr_Miner,
		image2: spr_Miner_Hands,
		cost: 100,
		brought: false
	},
	{
		title: "Minigunner",
		text: "\n\nCost:100 coins\nIn game Cost:100$\nDamage:10\nRadius:150\n\n\nYour starter\npack btw",
		image: spr_MinigunnerBody,
		image2: spr_MinigunnerHand,
		cost: 100,
		brought: false
	},
	
]

global.currentWaveEnemies = [];

global.Money = 500;

global.easyWaves1 = array_create(10,obj_Basic_Zombie)
global.easyWaves2 = array_create(15,obj_Fast_Zombie)
global.easyWavesHybrid = array_create(10,obj_Basic_Zombie) repeat 15{array_push(global.easyWavesHybrid,obj_Fast_Zombie)}

global.easyWaves = [global.easyWaves1,global.easyWaves2,global.easyWavesHybrid]

global.waves = [];