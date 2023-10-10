/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 329FC3CD
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)//Nebula$(13_10)scale_nebula = 5.5$(13_10)back_layer_nebula = layer_create(1900)$(13_10)back_ground_nebula = layer_background_create(back_layer_nebula,spr_stars_pixel_darker_bg)$(13_10)layer_background_vtiled(back_ground_nebula,true)$(13_10)layer_background_xscale(back_ground_nebula,scale_nebula)$(13_10)layer_background_yscale(back_ground_nebula,scale_nebula)$(13_10)layer_x(back_layer_nebula,440)$(13_10)layer_y(back_layer_nebula,0)$(13_10)layer_vspeed(back_layer_nebula,2.5)$(13_10)$(13_10)//Stars$(13_10)scale_stars = 1$(13_10)back_layer_stars = layer_create(2000)$(13_10)back_ground_stars = layer_background_create(back_layer_stars,spr_stars_pixel_colourful)$(13_10)layer_background_vtiled(back_ground_stars,true)$(13_10)layer_background_htiled(back_ground_stars,true)$(13_10)layer_background_xscale(back_ground_stars,scale_stars)$(13_10)layer_background_yscale(back_ground_stars,scale_stars)$(13_10)layer_x(back_layer_stars,440)$(13_10)layer_y(back_layer_stars,0)$(13_10)layer_vspeed(back_layer_stars,2.5)$(13_10)$(13_10)//Sides_left$(13_10)$(13_10)back_layer_left = layer_create(500)$(13_10)back_ground_left = layer_background_create(back_layer_left,spr_sides)$(13_10)$(13_10)layer_background_vtiled(back_ground_left,true)$(13_10)$(13_10)layer_background_xscale(back_ground_left,-1)$(13_10)layer_background_yscale(back_ground_left,1)$(13_10)layer_x(back_layer_left,480)$(13_10)layer_y(back_layer_left,0)$(13_10)layer_vspeed(back_layer_left,-2.5)$(13_10)$(13_10)$(13_10)$(13_10)//Sides_right$(13_10)$(13_10)back_layer_right = layer_create(500)$(13_10)back_ground_right = layer_background_create(back_layer_right,spr_sides)$(13_10)$(13_10)layer_background_vtiled(back_ground_right,true)$(13_10)$(13_10)layer_background_xscale(back_ground_right,1)$(13_10)layer_background_yscale(back_ground_right,1)$(13_10)layer_x(back_layer_right,1440)$(13_10)layer_y(back_layer_right,0)$(13_10)layer_vspeed(back_layer_right,-2.5)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
/// @description Execute Code

//Nebula
scale_nebula = 5.5
back_layer_nebula = layer_create(1900)
back_ground_nebula = layer_background_create(back_layer_nebula,spr_stars_pixel_darker_bg)
layer_background_vtiled(back_ground_nebula,true)
layer_background_xscale(back_ground_nebula,scale_nebula)
layer_background_yscale(back_ground_nebula,scale_nebula)
layer_x(back_layer_nebula,440)
layer_y(back_layer_nebula,0)
layer_vspeed(back_layer_nebula,2.5)

//Stars
scale_stars = 1
back_layer_stars = layer_create(2000)
back_ground_stars = layer_background_create(back_layer_stars,spr_stars_pixel_colourful)
layer_background_vtiled(back_ground_stars,true)
layer_background_htiled(back_ground_stars,true)
layer_background_xscale(back_ground_stars,scale_stars)
layer_background_yscale(back_ground_stars,scale_stars)
layer_x(back_layer_stars,440)
layer_y(back_layer_stars,0)
layer_vspeed(back_layer_stars,2.5)

//Sides_left

back_layer_left = layer_create(500)
back_ground_left = layer_background_create(back_layer_left,spr_sides)

layer_background_vtiled(back_ground_left,true)

layer_background_xscale(back_ground_left,-1)
layer_background_yscale(back_ground_left,1)
layer_x(back_layer_left,480)
layer_y(back_layer_left,0)
layer_vspeed(back_layer_left,-2.5)



//Sides_right

back_layer_right = layer_create(500)
back_ground_right = layer_background_create(back_layer_right,spr_sides)

layer_background_vtiled(back_ground_right,true)

layer_background_xscale(back_ground_right,1)
layer_background_yscale(back_ground_right,1)
layer_x(back_layer_right,1440)
layer_y(back_layer_right,0)
layer_vspeed(back_layer_right,-2.5)

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3C500E59
/// @DnDDisabled : 1
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)//Nebula$(13_10)scale_nebula = 5.5$(13_10)back_layer_nebula = 0$(13_10)back_ground_nebula = 0$(13_10)$(13_10)$(13_10)//Stars$(13_10)scale_stars = 1$(13_10)back_layer_stars = 0$(13_10)back_ground_stars = 0$(13_10)$(13_10)$(13_10)//Sides_left$(13_10)$(13_10)back_layer_left = 0$(13_10)back_ground_left = 0$(13_10)$(13_10)$(13_10)$(13_10)//Sides_right$(13_10)$(13_10)back_layer_right =0$(13_10)back_ground_right = 0$(13_10)$(13_10)draw_once = true$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"