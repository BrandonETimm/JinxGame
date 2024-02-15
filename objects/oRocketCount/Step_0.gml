if oJinx.rocketAmmo == 0
{
	sprite_index = sRocketCount0	
}
else if oJinx.rocketAmmo == 1
{
	sprite_index = sRocketCount1	
}
else if oJinx.rocketAmmo == 2
{
	sprite_index = sRocketCount2
}
else if oJinx.rocketAmmo == 3
{
	sprite_index = sRocketCount3	
}
else if oJinx.rocketAmmo == 4
{
	sprite_index = sRocketCount4
}
else
{
	sprite_index = sRocketCount5	
}

if oJinx.hp <= 0
{
	instance_destroy();	
}