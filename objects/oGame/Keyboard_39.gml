/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6518053B
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)//global.iCamera = instance_create_layer(10,950,layer,oCamera);$(13_10)if room_exists(room_next(room))$(13_10){$(13_10)    room_goto_next();$(13_10)}else$(13_10){$(13_10) 	room_goto_previous();$(13_10)}$(13_10)//with(global.iCamera) $(13_10)//{$(13_10)//	ResizeWindow(zoom);$(13_10)//}"
/// @description Execute Code
//global.iCamera = instance_create_layer(10,950,layer,oCamera);
if room_exists(room_next(room))
{
    room_goto_next();
}else
{
 	room_goto_previous();
}
//with(global.iCamera) 
//{
//	ResizeWindow(zoom);
//}