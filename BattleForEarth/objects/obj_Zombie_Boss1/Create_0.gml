maxHealth = 700 * global.Multiple
isVisible = false;
healthPoints = 700 * global.Multiple
resistant = 0
damaged = [];

array_push(global.currentWaveEnemies,id);

image_xscale = -1;
image_yscale = 1;

if path_exists(global.path)
{
	path_start(global.path,5,path_action_stop,true);
}

takeDamage = function(damage)
{
	healthPoints = round(healthPoints - (damage / resistant));
}

punch = function()
{
	var nearest = instance_nearest(x-64,y,obj_Tower_Parent)
	path_speed = 0;
	sprite_index = spr_ZombieBossPunch;
	
	if image_index >= 4
	{
		if nearest.object_index != obj_Tower_Parent
		{
			instance_destroy(nearest)
		}
		
		audio_play_sound(snd_ZombieBossPunch,1,false,global.audio);
		path_speed = 5;
		sprite_index = spr_ZombieBossMove;
	}
}