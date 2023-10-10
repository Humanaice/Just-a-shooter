/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2AB9500F
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)//https://www.youtube.com/watch?v=Rivaxy6Y_Sc&list=PLhvuXCmibF5rGtNHIDkqjS12fU079f8i6&index=15$(13_10)particle_system = part_system_create()$(13_10)$(13_10)particle_type_player_fade = part_type_create();$(13_10)part_type_sprite(particle_type_player_fade,spr_spaceship_base, -1,0,0)$(13_10)part_type_size(particle_type_player_fade,1.5,1.5,0,0)$(13_10)$(13_10)part_type_life(particle_type_player_fade,10,10)$(13_10)part_type_alpha3(particle_type_player_fade,1,0.8,0.5)$(13_10)part_type_color3(particle_type_player_fade,c_white,c_teal,c_blue)$(13_10)$(13_10)$(13_10)ptc_ty_plr_fadedashflies = part_type_create()$(13_10)part_type_sprite(ptc_ty_plr_fadedashflies,spr_pixel, -1,0,0)$(13_10)part_type_size(ptc_ty_plr_fadedashflies,7,7,0,0)$(13_10)$(13_10)part_type_life(ptc_ty_plr_fadedashflies,20,40)$(13_10)part_type_alpha3(ptc_ty_plr_fadedashflies,1,0.8,0.5)$(13_10)part_type_color3(ptc_ty_plr_fadedashflies,c_blue,c_teal,c_white)$(13_10)$(13_10)//ptc_emitter_flies = part_emitter_create(particle_system)$(13_10)$(13_10)$(13_10)$(13_10)"
/// @description Execute Code
//https://www.youtube.com/watch?v=Rivaxy6Y_Sc&list=PLhvuXCmibF5rGtNHIDkqjS12fU079f8i6&index=15
particle_system = part_system_create()

particle_type_player_fade = part_type_create();
part_type_sprite(particle_type_player_fade,spr_spaceship_base, -1,0,0)
part_type_size(particle_type_player_fade,1.5,1.5,0,0)

part_type_life(particle_type_player_fade,10,10)
part_type_alpha3(particle_type_player_fade,1,0.8,0.5)
part_type_color3(particle_type_player_fade,c_white,c_teal,c_blue)


ptc_ty_plr_fadedashflies = part_type_create()
part_type_sprite(ptc_ty_plr_fadedashflies,spr_pixel, -1,0,0)
part_type_size(ptc_ty_plr_fadedashflies,7,7,0,0)

part_type_life(ptc_ty_plr_fadedashflies,20,40)
part_type_alpha3(ptc_ty_plr_fadedashflies,1,0.8,0.5)
part_type_color3(ptc_ty_plr_fadedashflies,c_blue,c_teal,c_white)

//ptc_emitter_flies = part_emitter_create(particle_system)