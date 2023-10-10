/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 4A722860
event_inherited();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 047CC22D
/// @DnDArgument : "var" "global.gamePaused"
/// @DnDArgument : "value" "false"
if(global.gamePaused == false)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 208521AC
	/// @DnDParent : 047CC22D
	/// @DnDArgument : "code" "_position = path_position;$(13_10)image_angle += image_angle_random$(13_10)direction = bullet_angle$(13_10)speed = bullet_spd;$(13_10)path_speed = bullet_spd$(13_10)$(13_10)if (bullet_team == fireteam.ALLY)$(13_10){$(13_10)	path_orientation = bullet_angle - 90$(13_10)	bullet_spd = 20;$(13_10)	$(13_10)} else if (bullet_team == fireteam.ENEMY)$(13_10){$(13_10)	path_orientation = bullet_angle - 90$(13_10)	bullet_spd = 10;$(13_10)$(13_10)}$(13_10)$(13_10)$(13_10)if (path_position == 1)$(13_10){$(13_10)	path_check = path_start(path_current,bullet_spd,path_current_endaction,false)$(13_10)}$(13_10)$(13_10)if (bullet_team == fireteam.ALLY)$(13_10){$(13_10)	sprite_index = spr_fire_boomerang_dna;$(13_10)} else $(13_10){$(13_10)	sprite_index = spr_fire_boomerang_enemy;$(13_10)}$(13_10)$(13_10)"
	_position = path_position;
	image_angle += image_angle_random
	direction = bullet_angle
	speed = bullet_spd;
	path_speed = bullet_spd
	
	if (bullet_team == fireteam.ALLY)
	{
		path_orientation = bullet_angle - 90
		bullet_spd = 20;
		
	} else if (bullet_team == fireteam.ENEMY)
	{
		path_orientation = bullet_angle - 90
		bullet_spd = 10;
	
	}
	
	
	if (path_position == 1)
	{
		path_check = path_start(path_current,bullet_spd,path_current_endaction,false)
	}
	
	if (bullet_team == fireteam.ALLY)
	{
		sprite_index = spr_fire_boomerang_dna;
	} else 
	{
		sprite_index = spr_fire_boomerang_enemy;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 11134121
else
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 19EF80D5
	/// @DnDParent : 11134121
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10) stop_at_pause()"
	/// @description Execute Code
	 stop_at_pause()
}