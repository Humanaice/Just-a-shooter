/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1EC3B1FA
/// @DnDArgument : "code" "initial_x = x;$(13_10)initial_y = y;$(13_10)bullet_spd = 20;$(13_10)$(13_10)bullet_team = fireteam.ALLY;$(13_10)$(13_10)bullet_angle = 0;$(13_10)add_bullet_angle = 0;$(13_10)image_angle_random = choose(-20,20)$(13_10)$(13_10)scale = 1;$(13_10)image_xscale = scale;$(13_10)image_yscale = scale;$(13_10)image_alpha = 1;$(13_10)$(13_10)path_current = 0;$(13_10)if (bullet_team = fireteam.ALLY)$(13_10){$(13_10)	path_current = path_duplicate(pth_bommerang_goandcome);$(13_10)	path_orientation = bullet_angle + 90$(13_10)	bullet_spd *= -1$(13_10)	$(13_10)} else if (bullet_team = fireteam.ENEMY)$(13_10){$(13_10)	path_current = path_duplicate(pth_bommerang_goandcome);$(13_10)	path_orientation = bullet_angle $(13_10)	bullet_spd = 10$(13_10)	$(13_10)}$(13_10)$(13_10)path_current_endaction = path_action_stop;$(13_10)$(13_10)path_current_endaction = path_action_stop;$(13_10)path_check = path_start(path_current,bullet_spd,path_current_endaction,false)$(13_10)$(13_10)_position = 0;$(13_10)_position_limit = 0.2;$(13_10)$(13_10)//if (bullet_angle !=)$(13_10)$(13_10)creator = 0$(13_10)$(13_10)//bullet_dmg_mtpl = 1$(13_10)//bullet_dmg = 1 * bullet_dmg_mtpl$(13_10)bullet_dmg = 0"
initial_x = x;
initial_y = y;
bullet_spd = 20;

bullet_team = fireteam.ALLY;

bullet_angle = 0;
add_bullet_angle = 0;
image_angle_random = choose(-20,20)

scale = 1;
image_xscale = scale;
image_yscale = scale;
image_alpha = 1;

path_current = 0;
if (bullet_team = fireteam.ALLY)
{
	path_current = path_duplicate(pth_bommerang_goandcome);
	path_orientation = bullet_angle + 90
	bullet_spd *= -1
	
} else if (bullet_team = fireteam.ENEMY)
{
	path_current = path_duplicate(pth_bommerang_goandcome);
	path_orientation = bullet_angle 
	bullet_spd = 10
	
}

path_current_endaction = path_action_stop;

path_current_endaction = path_action_stop;
path_check = path_start(path_current,bullet_spd,path_current_endaction,false)

_position = 0;
_position_limit = 0.2;

//if (bullet_angle !=)

creator = 0

//bullet_dmg_mtpl = 1
//bullet_dmg = 1 * bullet_dmg_mtpl
bullet_dmg = 0