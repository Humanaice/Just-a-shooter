/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3C467E52
/// @DnDArgument : "code" "if (room == rm_title_screan)$(13_10){$(13_10)	$(13_10)	//room_goto(rm_level_1);$(13_10)	TransitionStart(rm_level_1,sqn_fadeout1,sqn_fadein1)$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)//if (room ==rm_level_1)$(13_10)//{$(13_10)	$(13_10)//	global.iCamera = instance_create_layer(1110,110,layer,o_camera);$(13_10)	$(13_10)//}$(13_10)$(13_10)"
if (room == rm_title_screan)
{
	
	//room_goto(rm_level_1);
	TransitionStart(rm_level_1,sqn_fadeout1,sqn_fadein1)
}




//if (room ==rm_level_1)
//{
	
//	global.iCamera = instance_create_layer(1110,110,layer,o_camera);
	
//}