/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 09FA1A69
event_inherited();

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2C553F67
/// @DnDArgument : "code" "/*$(13_10)if (bullet_team != fireteam.ALLY) {$(13_10)	if (other.can_damage_player)$(13_10)	{$(13_10)		if(other.hpcooldown <=0) $(13_10)		{ $(13_10)			with (other)$(13_10)			{$(13_10)				hpcurrent --;$(13_10)				//hpcooldown = 120;$(13_10)				player_damaged=true;$(13_10)				//flash = 1;$(13_10)			}$(13_10)		}$(13_10)		instance_destroy()$(13_10)	}else$(13_10)	{$(13_10)		instance_destroy()$(13_10)	}$(13_10)} else $(13_10)*/$(13_10)if (bullet_team == fireteam.ALLY)$(13_10){$(13_10)		if (path_position >= 0)$(13_10)		{$(13_10)			//other.player_fire_cool = 5;$(13_10)			//audio_sound_gain(snd_pickup_2, 1, 0);$(13_10)			//audio_play_sound(snd_pickup_2,1,false);$(13_10)			instance_destroy()$(13_10)		}$(13_10)}"
/*
if (bullet_team != fireteam.ALLY) {
	if (other.can_damage_player)
	{
		if(other.hpcooldown <=0) 
		{ 
			with (other)
			{
				hpcurrent --;
				//hpcooldown = 120;
				player_damaged=true;
				//flash = 1;
			}
		}
		instance_destroy()
	}else
	{
		instance_destroy()
	}
} else 
*/
if (bullet_team == fireteam.ALLY)
{
		if (path_position >= 0)
		{
			//other.player_fire_cool = 5;
			//audio_sound_gain(snd_pickup_2, 1, 0);
			//audio_play_sound(snd_pickup_2,1,false);
			instance_destroy()
		}
}/**/