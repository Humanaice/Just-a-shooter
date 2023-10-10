/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 30FDF8A3
/// @DnDArgument : "code" "initial_x = x;$(13_10)initial_y = y;$(13_10)bullet_spd = 15;$(13_10)$(13_10)bullet_angle = 90;$(13_10)add_bullet_angle = 0;$(13_10)$(13_10)bullet_team = 0;$(13_10)bullet_preset = firepattern.IN_LINE;$(13_10)$(13_10)scale = 0.6;$(13_10)image_xscale = scale;$(13_10)image_yscale = scale;$(13_10)image_alpha = 1;$(13_10)$(13_10)creator = 0$(13_10)$(13_10)sprite_bullet_ally = spr_fire_ball$(13_10)$(13_10)if (bullet_team == fireteam.ALLY)$(13_10){$(13_10)	sprite_index = spr_fire_ball;$(13_10)} else $(13_10){$(13_10)	sprite_index = spr_fire_ball_enemy;$(13_10)}$(13_10)$(13_10)//bullet_dmg_mtpl = 1$(13_10)//bullet_dmg = 2 * bullet_dmg_mtpl$(13_10)$(13_10)bullet_dmg = 0"
initial_x = x;
initial_y = y;
bullet_spd = 15;

bullet_angle = 90;
add_bullet_angle = 0;

bullet_team = 0;
bullet_preset = firepattern.IN_LINE;

scale = 0.6;
image_xscale = scale;
image_yscale = scale;
image_alpha = 1;

creator = 0

sprite_bullet_ally = spr_fire_ball

if (bullet_team == fireteam.ALLY)
{
	sprite_index = spr_fire_ball;
} else 
{
	sprite_index = spr_fire_ball_enemy;
}

//bullet_dmg_mtpl = 1
//bullet_dmg = 2 * bullet_dmg_mtpl

bullet_dmg = 0