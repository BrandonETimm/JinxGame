if chargeT < 40
{
	if (mp_grid_path(grid,path,x,y,oJinx.x,oJinx.y,1))
	{
		path_start(path,1.35,path_action_stop,false);
	}
	else
	{
		path_end();	
	}
}
else if chargeT == 40
{
	if (mp_grid_path(grid,path,x,y,oJinx.x,oJinx.y,1))
	{
		path_start(path,5,path_action_stop,false);
	}
	else
	{
		path_end();	
	}
	instance_create_layer(oJinx.x,oJinx.y,"Player",oReach)
}

if chargeT > 120
{
	chargeT = -120;	
}

xSpace = oJinx.x - x;
ySpace = oJinx.y - y;

if xSpace > 0 && abs(xSpace) > abs(ySpace)
{
	if chargeT <= 0
	{
		sprite_index = sViR;
	}
	else if chargeT < 40
	{
		sprite_index = sViRChargeUp	
	}
	else
	{
		sprite_index =	sViRCharging
	}
}
else if xSpace < 0 && abs(xSpace) > abs(ySpace)
{	
	if chargeT <= 0
	{
		sprite_index = sViL;
	}
	else if chargeT < 40
	{
		sprite_index = sViLChargeUp	
	}
	else
	{
		sprite_index =	sViLCharging
	}
}
else if ySpace > 0 && abs(ySpace) > abs(xSpace)
{
	if chargeT <= 0
	{
		sprite_index = sViD;
	}
	else if chargeT < 40
	{
		sprite_index = sViDChargeUp	
	}
	else
	{
		sprite_index =	sViDCharging
	}
}
else if ySpace < 0 && abs(ySpace) > abs(xSpace)
{
	if chargeT <= 0
	{
		sprite_index = sViU;
	}
	else if chargeT < 40
	{
		sprite_index = sViUChargeUp	
	}
	else
	{
		sprite_index =	sViUCharging
	}
}
if (!collision_line(x,y,oJinx.x,oJinx.y,oWall,false,false)) || chargeT >= 40 || (chargeT < 0)
{
	chargeT += 1;	
}
else
{
	chargeT = 0;	
}

if hp <= 0 instance_destroy();