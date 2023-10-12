/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 4A924EF8
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 19977949
/// @DnDArgument : "x" "30"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "var" "global.clock"
draw_text(30, 200, string("Caption: ") + string(global.clock));