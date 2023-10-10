/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 4F468F23
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 22518E17
/// @DnDArgument : "var" "hspd"
draw_text(0, 0, string("Caption: ") + string(hspd));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 56393119
/// @DnDArgument : "y" "20"
/// @DnDArgument : "var" "vspd"
draw_text(0, 20, string("Caption: ") + string(vspd));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 60F51133
/// @DnDArgument : "y" "40"
/// @DnDArgument : "var" "spd"
draw_text(0, 40, string("Caption: ") + string(spd));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 6483A312
/// @DnDArgument : "y" "60"
/// @DnDArgument : "var" "dhspeed"
draw_text(0, 60, string("Caption: ") + string(dhspeed));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 18F90E41
/// @DnDArgument : "y" "80"
/// @DnDArgument : "var" "dvspeed"
draw_text(0, 80, string("Caption: ") + string(dvspeed));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 55E80043
/// @DnDArgument : "y" "100"
/// @DnDArgument : "var" "leftkey"
draw_text(0, 100, string("Caption: ") + string(leftkey));