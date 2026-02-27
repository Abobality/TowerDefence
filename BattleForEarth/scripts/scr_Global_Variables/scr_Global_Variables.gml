global.towerInfo = [
	
	{
		title: "Scout",
		text: "\n\nCost:100 coins\nIn game Cost:100$\nDamage:25\nRadius:medium\n\n\nYour starter\npack btw",
		image: spr_Scout,
		image2: spr_Scout_Hands,
		cost: 100,
		brought: false
	},
	{
		title: "Sniper",
		text: "\n\nCost:100 coins\nIn game Cost:600$\nDamage:100\nRadius:high\n\n\nThe strogest\none",
		image: spr_Sniper,
		image2: spr_Sniper_Hands,
		cost: 100,
		brought: false
	},
	{
		title: "Shotgunner",
		text: "\n\nCost:300 coins\nIn game Cost:350$\nDamage:50(splash)\nRadius:low\n\n\nU really\nwanna get\ncloser?",
		image: spr_Shot_Gunner,
		image2: spr_Shot_Gunner_Hands,
		cost: 300,
		brought: false
	},
	{
		title: "Miner",
		text: "\n\nCost:300 coins\nIn game Cost:300$\nIncome:100\nRadius:none\n\n\nNerf\nminer?",
		image: spr_Miner,
		image2: spr_Miner_Hands,
		cost: 300,
		brought: false
	},
	{
		title: "Minigunner",
		text: "\n\nCost:1000 coins\nIn game Cost:1150$\nDamage:10\nRadius:high\n\n\nIts my\nSANDWICH",
		image: spr_MinigunnerBody,
		image2: spr_MinigunnerHand,
		cost: 1000,
		brought: false
	},
	{
		title: "Soldier",
		text: "\n\nCost:500 coins\nIn game Cost:350$\nDamage:25\nRadius:high\n\n\nMore than\none bullet",
		image: spr_Soldier,
		image2: spr_Null,
		cost: 500,
		brought: false
	},
	{
		title: "Dynoman",
		text: "\n\nCost:700 coins\nIn game Cost:300$\nDamage:25(splash)\nRadius:medium\n\n\nExplosion is\nart!",
		image: spr_dynoman,
		image2: spr_Null,
		cost: 700,
		brought: false
	},
	{
		title: "Policeman",
		text: "\n\nCost:300 coins\nIn game Cost:600$\nDamage:50\nRadius:low\n\n\nRlly brutal\nguy",
		image: spr_policelvl1,
		image2: spr_Null,
		cost: 300,
		brought: false
	},
	{
		title: "Cryogunner",
		text: "\n\nCost:300 coins\nIn game Cost:350$\nDamage:1(freeze)\nRadius:high\n\n\nCan freeze \nzombie.Do u like\nice cream?",
		image: spr_cryogunner,
		image2: spr_Null,
		cost: 300,
		brought: false
	},
	{
		title: "Doctor",
		text: "\n\nCost:600 coins\nIn game Cost:300$\nHeal power:1\nRadius:none\n\n\nCan heal your \nbase.AMAZING!",
		image: spr_doctor,
		image2: spr_Null,
		cost: 600,
		brought: false
	},
]

global.currentWaveEnemies = [];

global.Money = 50000;
global.Multiple = 1;

global.waves = [];

global.shop = false;
global.autoSkip = false;
global.audio = 0.2;
global.waveRecord = [];
