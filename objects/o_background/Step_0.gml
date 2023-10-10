/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7C49CA99
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (global.gamePaused)$(13_10){$(13_10)	layer_vspeed(back_layer_nebula,0)$(13_10)	layer_vspeed(back_layer_stars,0)$(13_10)	//layer_vspeed(back_layer_left,0)$(13_10)	//layer_vspeed(back_layer_right,0)$(13_10)} else$(13_10){$(13_10)	layer_vspeed(back_layer_nebula,2.5)$(13_10)	layer_vspeed(back_layer_stars,2.5)$(13_10)	//layer_vspeed(back_layer_left,-2.5)$(13_10)	//layer_vspeed(back_layer_right,-2.5)$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)"
/// @description Execute Code
if (global.gamePaused)
{
	layer_vspeed(back_layer_nebula,0)
	layer_vspeed(back_layer_stars,0)
	//layer_vspeed(back_layer_left,0)
	//layer_vspeed(back_layer_right,0)
} else
{
	layer_vspeed(back_layer_nebula,2.5)
	layer_vspeed(back_layer_stars,2.5)
	//layer_vspeed(back_layer_left,-2.5)
	//layer_vspeed(back_layer_right,-2.5)
}