/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 30FDF8A3
/// @DnDArgument : "code" "initial_x = x;$(13_10)initial_y = y;$(13_10)bullet_spd = 10;$(13_10)bullet_spd_enemy = 7;$(13_10)$(13_10)$(13_10)bullet_angle = 90;$(13_10)add_bullet_angle = 0;$(13_10)direction = 90$(13_10)$(13_10)bullet_team = fireteam.ALLY;$(13_10)bullet_preset = firepattern.IN_LINE;$(13_10)$(13_10)scale = 1;$(13_10)image_xscale = scale;$(13_10)image_yscale = scale;$(13_10)image_alpha = 1;$(13_10)image_speed = 0$(13_10)$(13_10)turn_rate = 5$(13_10)time_to_follow = 80;$(13_10)time_to_follow_team_player = 100;$(13_10)distance_scan_player = 150$(13_10)$(13_10)creator = 0$(13_10)$(13_10)//bullet_dmg_mtpl = 1$(13_10)//bullet_dmg = 1.5 * bullet_dmg_mtpl$(13_10)bullet_dmg = 0$(13_10)$(13_10)if (bullet_team == fireteam.ALLY)$(13_10){$(13_10)	direction = bullet_angle$(13_10)} else if (bullet_team == fireteam.ENEMY)$(13_10){$(13_10)	direction = bullet_angle * -1$(13_10)}"
initial_x = x;
initial_y = y;
bullet_spd = 10;
bullet_spd_enemy = 7;


bullet_angle = 90;
add_bullet_angle = 0;
direction = 90

bullet_team = fireteam.ALLY;
bullet_preset = firepattern.IN_LINE;

scale = 1;
image_xscale = scale;
image_yscale = scale;
image_alpha = 1;
image_speed = 0

turn_rate = 5
time_to_follow = 80;
time_to_follow_team_player = 100;
distance_scan_player = 150

creator = 0

//bullet_dmg_mtpl = 1
//bullet_dmg = 1.5 * bullet_dmg_mtpl
bullet_dmg = 0

if (bullet_team == fireteam.ALLY)
{
	direction = bullet_angle
} else if (bullet_team == fireteam.ENEMY)
{
	direction = bullet_angle * -1
}