/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7A37D72B
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)//if(room_get_camera(room, 0) == MainCamera)$(13_10)//{$(13_10)//	room_set_view_enabled(room,true);$(13_10)//    room_set_viewport(room,0,true,0,0,idealWidth,idealHeight);$(13_10)//    room_set_camera(room,0,MainCamera);	$(13_10)//}$(13_10)$(13_10)surface_resize(application_surface,idealWidth,idealHeight);$(13_10)window_set_size(idealWidth*zoom,idealHeight*zoom);$(13_10)display_set_gui_size(idealWidth,idealHeight);$(13_10)window_center();$(13_10)//window_set_position(0,30);$(13_10)"
/// @description Execute Code

//if(room_get_camera(room, 0) == MainCamera)
//{
//	room_set_view_enabled(room,true);
//    room_set_viewport(room,0,true,0,0,idealWidth,idealHeight);
//    room_set_camera(room,0,MainCamera);	
//}

surface_resize(application_surface,idealWidth,idealHeight);
window_set_size(idealWidth*zoom,idealHeight*zoom);
display_set_gui_size(idealWidth,idealHeight);
window_center();
//window_set_position(0,30);