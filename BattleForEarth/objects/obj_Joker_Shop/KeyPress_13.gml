obj_Spawn_Wave_Manager.wave++
audio_play_sound(snd_button,1,false,global.audio);
obj_Inventory.jokerInventoryUpgrade()
obj_Inventory.spawnJoker()
global.shop = false
instance_destroy(self)
