if chargeT <= 0
{
	if (mp_grid_path(grid,path,x,y,oJinx.x,oJinx.y,1))
	{
		path_start(path,1.3,path_action_stop,false);
	}
	else
	{
		path_end();	
	}
}
else
{
	if (mp_grid_path(grid,path,x,y,oJinx.x,oJinx.y,1))
	{
		path_start(path,1,path_action_stop,false);
	}
	else
	{
		path_end();	
	}
}

if chargeT >= 60
{
	chargeT = -120;
	instance_create_layer(x,y,"Enemies",oCaitlynBullet)
}

xSpace = oJinx.x - x;
ySpace = oJinx.y - y;

if xSpace > 0 && abs(xSpace) > abs(ySpace)
{
	sprite_index = sCaitlynR;
}
else if xSpace < 0 && abs(xSpace) > abs(ySpace)
{	
	sprite_index = sCaitlynL;
}
else if ySpace > 0 && abs(ySpace) > abs(xSpace)
{
	sprite_index = sCaitlynD;
}
else if ySpace < 0 && abs(ySpace) > abs(xSpace)
{
	sprite_index = sCaitlynU;
}
if (!collision_line(x,y,oJinx.x,oJinx.y,oWall,false,false)) || chargeT < 0
{
	chargeT += 1;
}
else
{
	chargeT = 0;	
}

if hp <= 0 instance_destroy();