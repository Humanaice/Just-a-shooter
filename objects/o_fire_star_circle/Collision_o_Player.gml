/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2C553F67
/// @DnDArgument : "code" "if (bullet_team != fireteam.ALLY) {$(13_10)	if (other.can_damage_player)$(13_10)	{$(13_10)		if(other.hpcooldown <=0) $(13_10)		{ $(13_10)			with (other)$(13_10)			{$(13_10)				hpcurrent --;$(13_10)				hpcooldown = 120;$(13_10)				player_damaged=true;$(13_10)			}$(13_10)		}$(13_10)		instance_destroy()$(13_10)	}$(13_10)} "
if (bullet_team != fireteam.ALLY) {
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
		instance_destroy()
	}
}