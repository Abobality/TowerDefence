draw_rectangle_colour(room_width/2 + 30,158,room_width/2+130,162,c_black,c_black,c_black,c_black,false)
draw_set_font(fnt_Agressive20);
draw_set_halign(fa_center);
draw_set_valign(fa_middle)
draw_set_colour(c_black)
draw_set_alpha(0.5)
draw_rectangle(room_width/2-228,0,room_width/2+228,room_height,false)
draw_set_colour(c_white)
draw_set_alpha(1)
draw_text_transformed(room_width/2,64,"settings",1.5,1.5,0);
draw_text(room_width/2-120,160,"volume");
draw_text(room_width/2-120,260,"auto skip");
draw_text(room_width/2-120,360,"codes");
draw_text(64,32,"<esc");
draw_set_halign(fa_left);
draw_text(room_width/2,360,keyboard_string);
draw_rectangle(room_width/2 + 50,245,room_width/2+80,275,true)
draw_line(room_width/2 ,375,room_width/2+180,375)

if global.autoSkip = true
{
	draw_rectangle(room_width/2 + 50,245,room_width/2+80,275,false)
}