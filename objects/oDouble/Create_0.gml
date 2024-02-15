image_speed = 0;
if global.lastwave >= 1000
{
	image_index = 9;
}
else if global.lastwave % 100 >= 90
{
	image_index = 9;
}
else if global.lastwave % 100 >= 80
{
	image_index = 8;	
}
else if global.lastwave % 100 >= 70
{
	image_index = 7;
}
else if global.lastwave %100 >= 60
{
	image_index = 6;	
}
else if global.lastwave % 100 >= 50
{
	image_index = 5;
}
else if global.lastwave % 100 >= 40
{
	image_index = 4;	
}
else if global.lastwave % 100 >= 30
{
	image_index = 3;
}
else if global.lastwave % 100 >= 20
{
	image_index = 2;
}
else if global.lastwave % 100 >= 10
{
	image_index = 1;	
}
else
{
	image_index = 0;
}
