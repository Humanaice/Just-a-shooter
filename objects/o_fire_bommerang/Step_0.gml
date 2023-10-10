/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 69394E42
event_inherited();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 47F4F559
/// @DnDArgument : "var" "global.gamePaused"
/// @DnDArgument : "value" "false"
if(global.gamePaused == false)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 208521AC
	/// @DnDParent : 47F4F559
	/// @DnDArgument : "code" "_position = path_position;$(13_10)image_angle += image_angle_random$(13_10)$(13_10)speed = -bullet_spd$(13_10)path_speed = bullet_spd$(13_10)$(13_10)if (bullet_team = fireteam.ALLY)$(13_10){$(13_10)	path_orientation = bullet_angle - 90$(13_10)	sprite_index = spr_fire_bommerang;$(13_10)	$(13_10)} else if (bullet_team = fireteam.ENEMY)$(13_10){$(13_10)	path_orientation = bullet_angle - 90 $(13_10)	bullet_spd = -15$(13_10)	sprite_index = spr_fire_boomerang_enemy;$(13_10)	$(13_10)}$(13_10)$(13_10)$(13_10)"
	_position = path_position;
	image_angle += image_angle_random
	
	speed = -bullet_spd
	path_speed = bullet_spd
	
	if (bullet_team = fireteam.ALLY)
	{
		path_orientation = bullet_angle - 90
		sprite_index = spr_fire_bommerang;
		
	} else if (bullet_team = fireteam.ENEMY)
	{
		path_orientation = bullet_angle - 90 
		bullet_spd = -15
		sprite_index = spr_fire_boomerang_enemy;
		
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 530E7FC3
else
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 5361FF9A
	/// @DnDParent : 530E7FC3
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10) stop_at_pause()"
	/// @description Execute Code
	 stop_at_pause()
}