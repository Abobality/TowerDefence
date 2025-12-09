var xscale = 1;
for (var i = 0;i<array_length(global.Choosed);i++)
{
	draw_rectangle(x-32,y + i*96-48,x+32,y + i*96 + 48,true)
	
	if point_in_rectangle(mouse_x,mouse_y,x-32,y + i*96-48,x+32,y + i*96 + 48)
	{
		xscale = 1.1
	}else
	{
		xscale = 1
	}
	
	draw_sprite_ext(spr_GameCards_Sheet,global.Choosed[i],x,y+96*i,xscale,xscale,0,c_white,1)
}