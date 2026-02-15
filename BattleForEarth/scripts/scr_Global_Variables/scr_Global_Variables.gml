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

global.easyWaves1S = array_create(10,obj_Basic_Zombie)
global.easyWaves2S = array_create(15,obj_Fast_Zombie)
global.easyWavesHybridS = array_create(10,obj_Basic_Zombie) repeat 15{array_push(global.easyWavesHybridS,obj_Fast_Zombie)}
global.easyWaves1M = array_create(30,obj_Basic_Zombie)
global.easyWaves2M = array_create(30,obj_Fast_Zombie)
global.easyWavesHybridM = array_create(15,obj_Basic_Zombie) repeat 30{array_push(global.easyWavesHybridM,obj_Fast_Zombie)}

global.easyWavesS = [global.easyWaves1S,global.easyWaves2S,global.easyWavesHybridS]
global.easyWavesM = [global.easyWaves1M,global.easyWaves2M,global.easyWavesHybridM]

global.waves = [];

global.shop = false;