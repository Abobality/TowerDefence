draw_self();

draw_sprite(spr_Miner_Hands,current_level-1,x,y + sin(delta_time))


if upgrade == true
{
	draw_text(x,y+32,$"{name} lvl{lvl}\ncost:{cost}")
}
