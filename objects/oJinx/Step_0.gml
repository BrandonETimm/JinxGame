keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));
keyUp = keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));

var xmove = keyRight - keyLeft;
var ymove = keyDown - keyUp;

xsp = xmove * walksp;
ysp = ymove * walksp;

if hp > 0 && !instance_exists(oContinue)
{
if grenadeT < grenadeCD
{
	grenadeT += 1;	
}
else if keyboard_check_pressed(ord("E"))
{
	grenadeHold = not grenadeHold
	rocketHold = false
}

if shootTimer > 0
{
	if global.gracemode
	{
		xsp = 0;
		ysp = 0;
	}
	shootTimer -= 1;
}

if rocketT < rocketCD
{
	rocketT += 1;	
}
else if keyboard_check_pressed(ord("R")) and rocketAmmo > 0
{	
	rocketHold = not rocketHold;
	grenadeHold = false;
}

if shootTimer == 0 or grenadeHold or rocketHold
{
	if keyboard_check(vk_left)
	{
		if grenadeHold == true
		{
			instance_create_layer(x-12,y+4,"Player", oGrenade);
			grenadeHold = false;
			grenadeT = 0;
		}
		else if rocketHold == true
		{
			instance_create_layer(x-12,y+4,"Player", oRocket);
			rocketHold = false;
			rocketT = 0;
			rocketAmmo -= 1;
		}
		else
		{		
			instance_create_layer(x-12,y+4,"Player", oBullet);
			audio_play_sound(aShoot,1,false);
		}
		shootTimer = 30;
		sprite_index = sJinxL;
	}
	else if keyboard_check(vk_up)
	{
		if grenadeHold == true
		{
			instance_create_layer(x+4,y+4,"Player", oGrenade);
			grenadeHold = false
			grenadeT = 0;
		}
		else if rocketHold == true
		{
			instance_create_layer(x+4,y+4,"Player", oRocket);
			rocketHold = false;
			rocketT = 0;
			rocketAmmo -= 1;
		}
		else
		{
			instance_create_layer(x-1,y+4,"Player", oBullet);
			audio_play_sound(aShoot,1,false);
		}
		shootTimer = 30;
		sprite_index = sJinxU;
	}
	else if keyboard_check(vk_right)
	{
		if grenadeHold == true
		{
			instance_create_layer(x+12,y+4,"Player", oGrenade);
			grenadeHold = false;
			grenadeT = 0;
		}
		else if rocketHold == true
		{
			instance_create_layer(x+16,y+4,"Player", oRocket);
			rocketHold = false;
			rocketT = 0;
			rocketAmmo -= 1;
		}
		else
		{
			instance_create_layer(x+12,y+4,"Player", oBullet);
			audio_play_sound(aShoot,1,false);
		}
		shootTimer = 30;
		sprite_index = sJinxR;
	}
	else if keyboard_check(vk_down)
	{
		if grenadeHold == true
		{
			instance_create_layer(x-2,y+8,"Player", oGrenade);
			grenadeHold = false;
			grenadeT = 0;
		}
		else if rocketHold == true
		{
			instance_create_layer(x-2,y+8,"Player", oRocket);
			rocketHold = false;
			rocketT = 0;
			rocketAmmo -= 1;
		}
		else
		{
			instance_create_layer(x+2,y+8,"Player", oBullet);
			audio_play_sound(aShoot,1,false);
		}
		shootTimer = 30;
		sprite_index = sJinxD;
	}
	else if xsp < 0 
	{
		if grenadeHold
		{
			sprite_index = sJinxLThrow;
		}
		else if rocketHold
		{
			sprite_index = sJinxLRocket;
		}
		else
		{
			sprite_index = sJinxL;
		}
	}
	else if ysp < 0 
	{
		if grenadeHold
		{
			sprite_index = sJinxUThrow;
		}
		else if rocketHold
		{
			sprite_index = sJinxURocket;
		}
		else
		{
			sprite_index = sJinxU;
		}
	}
	else if xsp > 0 
	{
		if grenadeHold
		{
			sprite_index = sJinxRThrow;
		}
		else if rocketHold
		{
			sprite_index = sJinxRRocket;
		}
		else
		{
			sprite_index = sJinxR;
		}
	}
	else if ysp > 0 
	{
		if grenadeHold
		{
			sprite_index = sJinxDThrow;
		}
		else if rocketHold
		{
			sprite_index = sJinxDRocket;
		}
		else
		{
			sprite_index = sJinxD;
		}
	}
}
if rocketHold
{
	if sprite_index == sJinxL
	{
		sprite_index = sJinxLRocket;
	}
	else if sprite_index == sJinxU
	{
		sprite_index = sJinxURocket;
	}
	else if sprite_index == sJinxR
	{
		sprite_index = sJinxRRocket;
	}
	else if sprite_index == sJinxD
	{
		sprite_index = sJinxDRocket;
	}
}
else if grenadeHold
{
	if sprite_index == sJinxL
	{
		sprite_index = sJinxLThrow;
	}
	else if sprite_index == sJinxU
	{
		sprite_index = sJinxUThrow;
	}
	else if sprite_index == sJinxR
	{
		sprite_index = sJinxRThrow;
	}
	else if sprite_index == sJinxD
	{
		sprite_index = sJinxDThrow;
	}
}
else
{
	if sprite_index == sJinxLRocket || sprite_index == sJinxLThrow
	{
		sprite_index = sJinxL;
	}
	else if sprite_index == sJinxURocket || sprite_index == sJinxUThrow
	{
		sprite_index = sJinxU;
	}
	else if sprite_index == sJinxRRocket || sprite_index == sJinxRThrow
	{
		sprite_index = sJinxR;
	}
	else if sprite_index == sJinxDRocket || sprite_index == sJinxDThrow
	{
		sprite_index = sJinxD;
	}
}

if ysp == 0 && xsp == 0
{
	image_speed = 0;
	image_index=0;
}
else
{
	image_speed = 1;	
}

if iFrames > 0 iFrames -= 1;

if (place_meeting(x+xsp,y,oColl))
{
	while(!place_meeting(x+sign(xsp),y,oColl))
	{
		x+=sign(xsp);
	}
	xsp=0;
}

x +=xsp;

if (place_meeting(x,y+ysp,oColl))
{
	while(!place_meeting(x,y+sign(ysp),oColl))
	{
		y+=sign(ysp);
	}
	ysp=0;
}

y +=ysp;
//Movement and Combat

if waveT > 0
{
	waveT -= 1;
	spawnL -= 1;
	spawnU -= 1;
	spawnR -= 1;
	spawnD -= 1;
}

if spawnL <= 0
{
	spawnL = (5 + 10 div max(wave div 1.8,1))*60;
	instance_create_layer(16,216,"Enemies",oEnemy);
}
if spawnU <= 0
{
	spawnU = (5 + 10 div max(wave div 1.8,1))*60;
	instance_create_layer(384,0,"Enemies",oEnemy);
}
if spawnR <= 0
{
	spawnR = (5 + 10 div max(wave div 1.8,1))*60;
	instance_create_layer(760,216,"Enemies",oEnemy);
}
if spawnD <= 0
{
	spawnD = (5 + 10 div max(wave div 1.8,1))*60;
	instance_create_layer(384,416,"Enemies",oEnemy);
}

if !instance_exists(oEnemy) && (waveT <= 0)
{
	if wave == 9 && !continued
	{
		instance_create_layer(208,300,"Win",oContinue);
		instance_create_layer(558,300,"Win",oWinExit);
		instance_create_layer(384,216,"Win",oWinScreen);
		continued = true;
	}
	if !instance_exists(oBuff)
	{
		instance_create_layer(320,168,"Walls",oAttackUp);
		instance_create_layer(384,168,"Walls",oHealthUp);
		instance_create_layer(448,168,"Walls",oFullHeal);
	}
}
}
else if hp <= 0
{
	sprite_index = sJinxDeath;
	image_speed = 1;
	deathT += 1;
	if image_index > image_number - 1 image_speed = 0;
	if deathT == 180 room_goto(rGameOver);
	global.lastwave = wave + 1;
}