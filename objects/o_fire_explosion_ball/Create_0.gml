/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 63182EB9
/// @DnDArgument : "code" "initial_x = x;$(13_10)initial_y = y;$(13_10)limit_y = -120;$(13_10)bullet_spd = 15;$(13_10)$(13_10)bullet_angle = 90;$(13_10)add_bullet_angle = 0;$(13_10)facing = -1;$(13_10)$(13_10)bullet_team = fireteam.ALLY;$(13_10)bullet_preset = firepattern.IN_LINE;$(13_10)$(13_10)scale = 1;$(13_10)image_xscale = scale;$(13_10)image_yscale = scale;$(13_10)image_alpha = 1;$(13_10)$(13_10)creator = 0$(13_10)$(13_10)if (bullet_team == fireteam.ENEMY)$(13_10){sprite_index = spr_fire_ball_enemy}$(13_10)$(13_10)$(13_10)//bullet_dmg_mtpl = 1$(13_10)//bullet_dmg = 3 * bullet_dmg_mtpl$(13_10)bullet_dmg = 0$(13_10)$(13_10)time_limit = 15$(13_10)play_once = true$(13_10)"
initial_x = x;
initial_y = y;
limit_y = -120;
bullet_spd = 15;

bullet_angle = 90;
add_bullet_angle = 0;
facing = -1;

bullet_team = fireteam.ALLY;
bullet_preset = firepattern.IN_LINE;

scale = 1;
image_xscale = scale;
image_yscale = scale;
image_alpha = 1;

creator = 0

if (bullet_team == fireteam.ENEMY)
{sprite_index = spr_fire_ball_enemy}


//bullet_dmg_mtpl = 1
//bullet_dmg = 3 * bullet_dmg_mtpl
bullet_dmg = 0

time_limit = 15
play_once = true