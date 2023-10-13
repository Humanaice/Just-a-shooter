/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 5B1C448D
draw_self();

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2ACD2AA0
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)draw_text(128, 0, idealWidth);$(13_10)draw_text(128, 128, idealHeight);$(13_10)draw_text(128, 256, display_get_height());$(13_10)draw_text(128, 366, display_get_width());$(13_10)draw_text(128, 512, window_get_width());$(13_10)draw_text(128, 640, window_get_height());$(13_10)$(13_10)draw_text(128, 768, camera_get_view_width(MainCamera));$(13_10)draw_text(128, 896, camera_get_view_height(MainCamera));$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
/// @description Execute Code
draw_text(128, 0, idealWidth);
draw_text(128, 128, idealHeight);
draw_text(128, 256, display_get_height());
draw_text(128, 366, display_get_width());
draw_text(128, 512, window_get_width());
draw_text(128, 640, window_get_height());

draw_text(128, 768, camera_get_view_width(MainCamera));
draw_text(128, 896, camera_get_view_height(MainCamera));