/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 7991B835
event_inherited();

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 214A329B
/// @DnDDisabled : 1
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (other.can_damage_player)$(13_10){$(13_10)	if(other.hpcooldown <=0) $(13_10)	{ $(13_10)		with (other)$(13_10)		{$(13_10)		hpcurrent --;$(13_10)		hpcooldown = 120;$(13_10)		player_damaged=true;$(13_10)		}$(13_10)	}$(13_10)	can_explode_bullets = false;$(13_10)	instance_destroy()$(13_10)}$(13_10)$(13_10)"