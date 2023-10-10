/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 406621D5
/// @DnDDisabled : 1
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)window_set_size(RES_W * RES_SCALE, RES_H * RES_SCALE);$(13_10)surface_resize(application_surface, RES_W * RES_SCALE, RES_H * RES_SCALE);$(13_10)$(13_10)display_set_gui_size(RES_W* RES_SCALE, RES_H* RES_SCALE);$(13_10)$(13_10)// Center window$(13_10) display_width = display_get_width();$(13_10) display_height = display_get_height();$(13_10)$(13_10) window_width = RES_W * RES_SCALE;$(13_10) window_height = RES_H * RES_SCALE;$(13_10)$(13_10)window_set_position(display_width/2 - window_width/2, display_height/2 - window_height/2);$(13_10)"