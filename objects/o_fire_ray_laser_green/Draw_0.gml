/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4224F654
/// @DnDArgument : "code" "//draw_sprite_stretched(Sprite47,1,x,y,100,100)$(13_10)//draw_sprite_stretched(Sprite47,0,x,y,100,100)$(13_10)//draw_self()$(13_10)$(13_10)var bottom_x = x + lengthdir_x(raydistance,direction)$(13_10)var top_x = x + lengthdir_x(raydistance + add_raydistance_bottom,direction)$(13_10)var bottom_y = y + lengthdir_y(raydistance ,direction)$(13_10)var top_y = y + lengthdir_y(raydistance + add_raydistance_bottom ,direction)$(13_10)$(13_10)$(13_10)draw_sprite_ext(sprite_bottom, image_index,bottom_x , bottom_y , bottom_scale_x, scale_y, image_angle, $FFFFFF & $ffffff, 1);$(13_10)$(13_10)draw_sprite_ext(sprite_index, image_index,top_x , top_y , body_scale_x, scale_y, image_angle, $FFFFFF & $ffffff, 1);$(13_10)$(13_10)$(13_10)mask_index = spr_fire_raylaser_collision;$(13_10)"
//draw_sprite_stretched(Sprite47,1,x,y,100,100)
//draw_sprite_stretched(Sprite47,0,x,y,100,100)
//draw_self()

var bottom_x = x + lengthdir_x(raydistance,direction)
var top_x = x + lengthdir_x(raydistance + add_raydistance_bottom,direction)
var bottom_y = y + lengthdir_y(raydistance ,direction)
var top_y = y + lengthdir_y(raydistance + add_raydistance_bottom ,direction)


draw_sprite_ext(sprite_bottom, image_index,bottom_x , bottom_y , bottom_scale_x, scale_y, image_angle, $FFFFFF & $ffffff, 1);

draw_sprite_ext(sprite_index, image_index,top_x , top_y , body_scale_x, scale_y, image_angle, $FFFFFF & $ffffff, 1);


mask_index = spr_fire_raylaser_collision;

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 06B9A9F5
/// @DnDDisabled : 1
/// @DnDArgument : "x" "lengthdir_x(raydistance,direction) "
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "lengthdir_y(raydistance ,direction) "
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "yscale" "0.5"
/// @DnDArgument : "rot" "image_angle"
/// @DnDArgument : "sprite" "spr_fire_raylaser_body_red"
/// @DnDSaveInfo : "sprite" "spr_fire_raylaser_body_red"


/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 21DDF0E4
/// @DnDDisabled : 1
/// @DnDArgument : "x" "lengthdir_x(raydistance + add_raydistance_bottom,direction) "
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "lengthdir_y(raydistance + add_raydistance_bottom ,direction) "
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "10"
/// @DnDArgument : "yscale" "0.5"
/// @DnDArgument : "rot" "image_angle"
/// @DnDArgument : "sprite" "spr_fire_raylaser_body_red"
/// @DnDArgument : "frame" "1"
/// @DnDSaveInfo : "sprite" "spr_fire_raylaser_body_red"