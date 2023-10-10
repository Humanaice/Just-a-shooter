/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 410DAB23
/// @DnDArgument : "code" "$(13_10)$(13_10)$(13_10)if (global.gamePaused)$(13_10){$(13_10)	stop_at_pause()$(13_10)}$(13_10)else$(13_10){$(13_10)	y += 2.5$(13_10)	image_xscale = scale;$(13_10)	image_yscale = scale;$(13_10)}$(13_10)$(13_10)"



if (global.gamePaused)
{
	stop_at_pause()
}
else
{
	y += 2.5
	image_xscale = scale;
	image_yscale = scale;
}