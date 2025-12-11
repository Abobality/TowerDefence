draw_self();
draw_set_font(fnt_Agressive12);
draw_set_halign(fa_center);
draw_text(x,y+32,global.text);
draw_sprite_ext(global.sprite,0,x,y-116,2,2,0,c_white,1)
draw_sprite_ext(global.sprite2,0,x,y-116,2,2,0,c_white,1)

if global.brought
{
	draw_rectangle_colour(x-32,y-48,x+32,y-64,c_gray,c_gray,c_gray,c_gray,false)
}
else if !global.brought
{
	draw_rectangle_colour(x-32,y-48,x+32,y-64,c_green,c_green,c_green,c_green,false)
}