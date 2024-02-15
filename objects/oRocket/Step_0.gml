if (place_meeting(x,y+16,oEnemy))
{
	instance_create_layer(x,y,"Player", oBigExplosion);
	audio_play_sound(aBigExplosion,1,false);
	instance_destroy();
}
