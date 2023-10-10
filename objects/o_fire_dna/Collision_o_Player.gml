/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 610C4AD8
event_inherited();

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2C553F67
/// @DnDDisabled : 1
/// @DnDArgument : "code" "if (bullet_team != fireteam.ALLY) {$(13_10)	if (other.can_damage_player)$(13_10)	{$(13_10)		if(other.hpcooldown <=0) $(13_10)		{ $(13_10)			with (other)$(13_10)			{$(13_10)				hpcurrent --;$(13_10)				hpcooldown = 120;$(13_10)				player_damaged=true;$(13_10)				flash = 1;$(13_10)			}$(13_10)		}$(13_10)		instance_destroy()$(13_10)	}$(13_10)} else if (bullet_team == fireteam.ALLY)$(13_10){$(13_10)	if (path_current == pth_bommerang_goandcome)$(13_10)	{$(13_10)		if (_position >= _position_limit)$(13_10)		{$(13_10)			other.player_fire_cool = 5;$(13_10)			audio_sound_gain(snd_pickup_2, 1, 0);$(13_10)			audio_play_sound(snd_pickup_2,1,false);$(13_10)			instance_destroy()$(13_10)		}$(13_10)	}else$(13_10)	{$(13_10)	}$(13_10)}"