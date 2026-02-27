draw_rectangle_colour(room_width/2 + 30,158,room_width/2+130,162,c_black,c_black,c_black,c_black,false)
draw_set_font(fnt_Agressive20);
draw_set_halign(fa_center);
draw_set_valign(fa_middle)
draw_set_colour(c_black)
draw_set_alpha(0.5)
draw_rectangle(room_width/2-228,0,room_width/2+228,room_height,false)
draw_set_colour(c_white)
draw_set_alpha(1)
draw_text_transformed(room_width/2,64,"Pause",1.5,1.5,0);
draw_text(room_width/2-120,160,"volume");
draw_text(room_width/2-120,260,"auto skip");
draw_text(room_width/2,320,"continue");
draw_text(room_width/2,360,"exit to menu");
draw_text(room_width/2,400,"exit to OS");
draw_set_colour(c_red)
draw_text(room_width/2,560,"warning!\nexit from game will \ndelete your level progress");
draw_set_colour(c_white)
draw_rectangle(room_width/2 + 50,245,room_width/2+80,275,true)


if global.autoSkip = true
{
	draw_rectangle(room_width/2 + 50,245,room_width/2+80,275,false)
}