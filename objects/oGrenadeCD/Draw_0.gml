draw_self();
if oJinx.grenadeHold
{
	draw_set_color(c_purple);
}
else
{
	draw_set_color(c_fuchsia);
}
if oJinx.hp > 0
{
	draw_rectangle(x+28,y+6,x+28+44*(oJinx.grenadeT/oJinx.grenadeCD),y+15, false);
}
else
{
	instance_destroy();	
}
draw_set_color(c_white);