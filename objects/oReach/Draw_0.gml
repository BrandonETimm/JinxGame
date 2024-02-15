if instance_exists(oCaitlyn)
{
	if oCaitlyn.chargeT > 0
	{
		draw_set_color(c_red);
		if oCaitlyn.sprite_index == sCaitlynL draw_line(oCaitlyn.x-16,oCaitlyn.y-5,oJinx.x,oJinx.y);
		else if oCaitlyn.sprite_index == sCaitlynU draw_line(oCaitlyn.x+3,oCaitlyn.y-5,oJinx.x,oJinx.y);
		else if oCaitlyn.sprite_index == sCaitlynR draw_line(oCaitlyn.x+16,oCaitlyn.y-5,oJinx.x,oJinx.y);
		else draw_line(oCaitlyn.x-3,oCaitlyn.y-5,oJinx.x,oJinx.y);
		draw_set_color(c_white);
	}
}