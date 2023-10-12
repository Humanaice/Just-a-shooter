/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 426269B6
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)if(shake)$(13_10){$(13_10)	camera_set_view_pos(vCam,view_x + random_range(range,-range),view_y + random_range(range,-range));$(13_10)$(13_10)}$(13_10)else$(13_10){$(13_10)	camera_set_view_pos(vCam,view_x,view_y);$(13_10)}$(13_10)"
/// @description Execute Code

if(shake)
{
	camera_set_view_pos(vCam,view_x + random_range(range,-range),view_y + random_range(range,-range));

}
else
{
	camera_set_view_pos(vCam,view_x,view_y);
}