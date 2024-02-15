draw_self();
drawHp = lerp(drawHp, oJinx.hp, 0.5);
draw_set_color(c_red);
if drawHp > 0
{
	draw_rectangle(x+4,y+4,x+4+119*(drawHp/oJinx.maxHp),y+15, false);
}
else
{
	instance_destroy();	
}
draw_set_color(c_white);