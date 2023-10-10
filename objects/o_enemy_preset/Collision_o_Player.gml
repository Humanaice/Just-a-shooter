/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 214A329B
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (other.can_damage_player)$(13_10){$(13_10)	if(other.hpcooldown <=0) $(13_10)	{ $(13_10)		with (other)$(13_10)		{$(13_10)		hpcurrent --;$(13_10)		hpcooldown = 120;$(13_10)		player_damaged=true;$(13_10)		}$(13_10)	}$(13_10)	can_explode_bullets = false;$(13_10)	instance_destroy()$(13_10)}$(13_10)$(13_10)"
/// @description Execute Code
if (other.can_damage_player)
{
	if(other.hpcooldown <=0) 
	{ 
		with (other)
		{
		hpcurrent --;
		hpcooldown = 120;
		player_damaged=true;
		}
	}
	can_explode_bullets = false;
	instance_destroy()
}