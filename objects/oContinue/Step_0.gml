if keyboard_check_pressed(ord("A")) || keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right)
{
	highlighted = not highlighted
}
if highlighted
{
	sprite_index = sContinueHighlight;
	oWinExit.sprite_index = sExit;
	if keyboard_check_pressed(vk_space)
	{
		instance_destroy(oWinScreen);
		instance_destroy(oWinExit);
		instance_destroy();
	}
}
else
{
	sprite_index = sContinue;
	oWinExit.sprite_index = sExitHighlight;
	if keyboard_check_pressed(vk_space)
	{
		game_end();
	}
}