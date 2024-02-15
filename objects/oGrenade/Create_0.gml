if keyboard_check(vk_left)
{
	direction = 180;
	image_xscale = -1
}
else if keyboard_check(vk_up)
{
	direction = 90
	image_angle = 90
}
else if keyboard_check(vk_right)
{
	direction = 0	
}
else
{
	direction = 270
	image_angle = 270
}
speed = 6