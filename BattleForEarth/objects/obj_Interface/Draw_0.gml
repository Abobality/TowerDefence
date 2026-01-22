draw_self();
draw_set_font(fnt_Agressive12);
draw_set_halign(fa_center);
draw_text_transformed(x,y-48,global.title,1.4,1.4,0);
draw_text(x,y+32,global.text);
draw_sprite_ext(global.sprite,0,x,y-116,2,2,0,c_white,1)
draw_sprite_ext(global.sprite2,0,x,y-116,2,2,0,c_white,1)

