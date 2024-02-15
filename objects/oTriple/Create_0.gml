image_speed = 0;
if global.lastwave >= 900
{
	image_index = 9;
}
else if global.lastwave >= 800
{
	image_index = 8;	
}
else if global.lastwave >= 700
{
	image_index = 7;
}
else if global.lastwave >= 600
{
	image_index = 6;	
}
else if global.lastwave >= 500
{
	image_index = 5;
}
else if global.lastwave >= 400
{
	image_index = 4;	
}
else if global.lastwave >= 300
{
	image_index = 3;
}
else if global.lastwave >= 200
{
	image_index = 2;
}
else if global.lastwave >= 100
{
	image_index = 1;	
}
else
{
	image_index = 0;
}
