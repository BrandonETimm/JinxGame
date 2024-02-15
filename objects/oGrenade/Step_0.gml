if (place_meeting(x,y+16,oEnemy))
{
	instance_create_layer(x,y,"Player", oExplosion);
	audio_play_sound(aExplosion,1,false);
	instance_destroy();
}
