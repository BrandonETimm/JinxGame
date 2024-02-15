image_speed = 0;
if global.lastwave >= 1000
{
	image_index = 9;
}
else if global.lastwave % 10 == 9
{
	image_index = 9;
}
else if global.lastwave % 10 == 8
{
	image_index = 8;	
}
else if global.lastwave % 10 == 7
{
	image_index = 7;
}
else if global.lastwave %10 == 6
{
	image_index = 6;	
}
else if global.lastwave % 10 == 5
{
	image_index = 5;
}
else if global.lastwave % 10 == 4
{
	image_index = 4;	
}
else if global.lastwave % 10 == 3
{
	image_index = 3;
}
else if global.lastwave % 10 == 2
{
	image_index = 2;
}
else if global.lastwave % 10 == 1
{
	image_index = 1;	
}
else
{
	image_index = 0;
}
