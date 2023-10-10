/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0EA5C7C6
/// @DnDArgument : "code" "initial_x = x;$(13_10)initial_y = y;$(13_10)bullet_spd = 10;$(13_10)$(13_10)bullet_angle = 90;$(13_10)add_bullet_angle = 0;$(13_10)facing = -1;$(13_10)$(13_10)bullet_team = fireteam.ALLY;$(13_10)bullet_preset = firepattern.IN_LINE;$(13_10)$(13_10)scale = 1;$(13_10)image_xscale = scale;$(13_10)image_yscale = scale;$(13_10)image_alpha = 1;$(13_10)$(13_10)add_angle_rotation = 5;$(13_10)shield_distance = 80;$(13_10)add_shield_distance = 0.7;$(13_10)$(13_10)$(13_10)function die_shield ()$(13_10){$(13_10)	instance_destroy(self)$(13_10)}$(13_10)$(13_10)bullet_dmg = 10$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
initial_x = x;
initial_y = y;
bullet_spd = 10;

bullet_angle = 90;
add_bullet_angle = 0;
facing = -1;

bullet_team = fireteam.ALLY;
bullet_preset = firepattern.IN_LINE;

scale = 1;
image_xscale = scale;
image_yscale = scale;
image_alpha = 1;

add_angle_rotation = 5;
shield_distance = 80;
add_shield_distance = 0.7;


function die_shield ()
{
	instance_destroy(self)
}

bullet_dmg = 10