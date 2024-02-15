if keyboard_check_pressed(ord("A")) || keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right)
{
	highlighted = not highlighted
}
if highlighted
{
	sprite_index = sRestartHighlight;
	oGOExit.sprite_index = sExit;
	if keyboard_check_pressed(vk_space)
	{
		room_goto(rMenu);
	}
}
else
{
	sprite_index = sRestart;
	oGOExit.sprite_index = sExitHighlight;
	if keyboard_check_pressed(vk_space)
	{
		game_end();
	}
}