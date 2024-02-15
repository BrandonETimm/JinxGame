if !instance_exists(oContinue)
{
	if paused == false
	{
		instance_deactivate_all(true);
		paused = true;
		visible = true;
	}
	else
	{
		instance_activate_all();
		paused = false;
		visible = false;
	}
}