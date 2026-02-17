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
global.Multiple = 1;

global.easyWaves1S = array_create(10 * global.Multiple,obj_Basic_Zombie)
global.easyWaves2S = array_create(15 * global.Multiple,obj_Fast_Zombie)
global.easyWavesHybridS = array_create(10 * global.Multiple,obj_Basic_Zombie) repeat 15 * global.Multiple{array_push(global.easyWavesHybridS,obj_Fast_Zombie)}
global.easyWaves1M = array_create(30 * global.Multiple,obj_Basic_Zombie)
global.easyWaves2M = array_create(30 * global.Multiple,obj_Fast_Zombie)
global.easyWavesHybridM = array_create(15 * global.Multiple,obj_Basic_Zombie) repeat 30 * global.Multiple{array_push(global.easyWavesHybridM,obj_Fast_Zombie)}
global.middleWaves1S = array_create(100 * global.Multiple,obj_Basic_Zombie)
global.middleWaves2S = array_create(50 * global.Multiple,obj_Fast_Zombie)repeat 50 * global.Multiple{array_push(global.easyWavesHybridM,obj_Basic_Zombie)}
global.middleWaves3S = array_create(50 * global.Multiple,obj_Tank_Zombie)
global.middleWavesHybridS = array_create(30 * global.Multiple,obj_Basic_Zombie) repeat 30 * global.Multiple{array_push(global.easyWavesHybridS,obj_Fast_Zombie)} repeat 30 * global.Multiple{array_push(global.easyWavesHybridS,obj_Tank_Zombie)}
global.middleWaves1M = array_create(150 * global.Multiple,obj_Basic_Zombie)
global.middleWaves2M = array_create(200 * global.Multiple,obj_Fast_Zombie)
global.middleWaves3M = array_create(100 * global.Multiple,obj_Tank_Zombie) 
global.middleWavesHybridM = array_create(150 * global.Multiple,obj_Basic_Zombie) repeat 100 * global.Multiple{array_push(global.easyWavesHybridS,obj_Fast_Zombie)} repeat 100 * global.Multiple{array_push(global.easyWavesHybridS,obj_Tank_Zombie)}
global.bossWave = array_create(50 * global.Multiple,obj_Tank_Zombie) array_push(global.bossWave,obj_Zombie_Boss1 * global.Multiple)

global.easyWavesS = [global.easyWaves1S,global.easyWaves2S,global.easyWavesHybridS]
global.easyWavesM = [global.easyWaves1M,global.easyWaves2M,global.easyWavesHybridM]
global.middleWavesS = [global.middleWaves1S,global.middleWaves2S,global.middleWaves3S,global.middleWavesHybridS]
global.middleWavesM = [global.middleWaves1M,global.middleWaves2M,global.middleWaves3M,global.middleWavesHybridM]

global.waves = [];

global.shop = false;