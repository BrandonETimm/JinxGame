if (mp_grid_path(grid,path,x,y,oJinx.x,oJinx.y,1))
{
	path_start(path,1.1,path_action_stop,false);
}
else
{
	path_end();	
}

xSpace = oJinx.x - x
ySpace = oJinx.y - y

if xSpace > 0 && abs(xSpace) > abs(ySpace)
{
	sprite_index = sEnemyLR
	image_xscale = 1
}
else if xSpace < 0 && abs(xSpace) > abs(ySpace)
{
	sprite_index = sEnemyLR
	image_xscale = -1
}
else if ySpace > 0 && abs(ySpace) > abs(xSpace)
{
	sprite_index = sEnemyD
	image_xscale = 1
}
else if ySpace < 0 && abs(ySpace) > abs(xSpace)
{
	sprite_index = sEnemyU
	image_xscale = 1
}

if hp <= 0 instance_destroy();