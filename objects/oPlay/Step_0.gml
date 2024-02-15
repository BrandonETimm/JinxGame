if keyboard_check_pressed(ord("W")) || keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down) || keyboard_check_pressed(vk_up)
{
	highlighted = not highlighted
}
if highlighted
{
	if keyboard_check_pressed(vk_space)
	{
		room_goto(rArena);
	}
	sprite_index = sPlayHighlight;
	oGraceMode.sprite_index = sGraceMode;
}
else
{
	sprite_index = sPlay;
	oGraceMode.sprite_index = sGraceModeHighlight;
	if keyboard_check_pressed(vk_space)
	{
		global.gracemode = not global.gracemode;
	}
}
