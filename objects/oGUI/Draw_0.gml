/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 76098486
draw_self();

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 05ECD99D
/// @DnDDisabled : 1
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (global.gamePaused == true)$(13_10){$(13_10)if !surface_exists(paused_surf)$(13_10)    {$(13_10)    if paused_surf == -1$(13_10)        {$(13_10)        instance_deactivate_all(true);$(13_10)        }$(13_10)    paused_surf = surface_create(room_width, room_height);$(13_10)    surface_set_target(paused_surf);$(13_10)    draw_surface(application_surface, 0, 0);$(13_10)    surface_reset_target();$(13_10)    } $(13_10)	else$(13_10)    {$(13_10)    draw_surface(paused_surf, 0, 0);$(13_10)    draw_set_alpha(0.5);$(13_10)    draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);$(13_10)    draw_set_alpha(1);$(13_10)    draw_set_halign(fa_center);$(13_10)    draw_text_transformed_colour(room_width / 2, room_height / 2, "PAUSED", 2, 2, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1);$(13_10)    draw_set_halign(fa_left);$(13_10)    }$(13_10)}"