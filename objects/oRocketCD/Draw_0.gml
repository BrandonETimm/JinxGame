draw_self();
if oJinx.rocketHold
{
	draw_set_color(c_maroon);	
}
else
{
	draw_set_color(c_red);
}
if oJinx.hp > 0
{
	draw_rectangle(x+54,y+6,x+54+44*(oJinx.rocketT/oJinx.rocketCD),y+15, false);
}
else
{
	instance_destroy();	
}
draw_set_color(c_white);