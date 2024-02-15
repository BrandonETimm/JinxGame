if (place_meeting(x,y,oBuff))
{
	if (place_meeting(x,y,oAttackUp))
	{
		damage += 1;
	}
	else if (place_meeting(x,y,oHealthUp))
	{
		maxHp += 10;
		hp += 10;
	}
	else
	{
		hp = maxHp;
	}
	
	instance_destroy(oBuff);
	wave += 1;
	randomize();
	first = random(4);
	if (wave+1) % 10 == 0
	{
		waveT = -1;
		spawnL = 0;
		spawnU = 0;
		spawnR = 0;
		spawnD = 0;
		if first <= 1 instance_create_layer(16,216,"Enemies",oCaitlyn);
		else if first <= 2 instance_create_layer(384,0,"Enemies",oCaitlyn);
		else if first <= 3 instance_create_layer(760,216,"Enemies",oCaitlyn);
		else instance_create_layer(384,416,"Enemies",oCaitlyn);
	}
	else if (wave+1) % 5 == 0
	{
		waveT = -1;
		spawnL = 0;
		spawnR = 0;
		if first <= 1 instance_create_layer(16,216,"Enemies",oVi);
		else if first <= 2 instance_create_layer(384,0,"Enemies",oVi);
		else if first <= 3 instance_create_layer(760,216,"Enemies",oVi);
		else instance_create_layer(384,416,"Enemies",oVi);
	}
	else
	{
		if (wave + 1) % 4 == 0 && rocketAmmo < 5
		{
			rocketAmmo += 1;	
		}
		waveT = 3601;
		if first <= 1
		{
			spawnL = 0;
			spawnU = (5 - min(2,wave div 5))*60;
			spawnR = (10 - min(5,wave div 4))*60;
			spawnD = (15 - min(8,wave div 3))*60;
		}
		else if first <= 2
		{
			spawnU = 0;
			spawnR = (5 - min(2,wave div 5))*60;
			spawnD = (10 - min(5,wave div 4))*60;
			spawnL = (15 - min(8,wave div 3))*60;
		}
		else if first <= 3
		{
			spawnR = 0
			spawnD = (5 - min(2,wave div 5))*60;
			spawnL = (10 - min(5,wave div 4))*60;
			spawnU = (15 - min(8,wave div 3))*60;
		}
		else
		{	spawnD = 0
			spawnL = (5 - min(2,wave div 5))*60;
			spawnU = (10 - min(5,wave div 4))*60;
			spawnR = (15 - min(8,wave div 3))*60;
		}
	}
}