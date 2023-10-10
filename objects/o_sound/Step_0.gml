/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4BC73B5E
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)_room = room$(13_10)$(13_10)$(13_10)if (_room == rm_title_screan)$(13_10){$(13_10)	current_music = sound_title_screen$(13_10)	if (!audio_is_playing(sound_title_screen))$(13_10)	{$(13_10)		audio_sound_gain(sound_title_screen,1,20000)$(13_10)		audio_play_sound(sound_title_screen,1000,true)$(13_10)		$(13_10)	}$(13_10)}$(13_10)else if (_room == rm_level_1)$(13_10){$(13_10)	current_music = sound_room_1$(13_10)	if (!audio_is_playing(sound_room_1))$(13_10)	{$(13_10)		audio_pause_all()$(13_10)		$(13_10)		audio_play_sound(sound_room_1,1000,true)$(13_10)		audio_sound_gain(sound_room_1,0.5,20000)$(13_10)		$(13_10)	}$(13_10)}$(13_10)$(13_10)if (global.gamePaused)$(13_10){$(13_10)	if(!audio_is_playing(sound_pause))$(13_10)	{$(13_10)		audio_pause_all()$(13_10)		$(13_10)		audio_play_sound(sound_pause,1000,true)$(13_10)		audio_sound_gain(sound_pause,0.5,360)$(13_10)	}$(13_10)	$(13_10)} else$(13_10){$(13_10)	//if (!audio_is_playing(current_music))$(13_10)	//{$(13_10)		if (audio_is_paused(current_music))$(13_10)		{$(13_10)			audio_stop_sound(sound_pause)$(13_10)			audio_resume_sound(current_music)$(13_10)		}$(13_10)	//}$(13_10)	$(13_10)}$(13_10)	$(13_10)	$(13_10)$(13_10)"
/// @description Execute Code
_room = room


if (_room == rm_title_screan)
{
	current_music = sound_title_screen
	if (!audio_is_playing(sound_title_screen))
	{
		audio_sound_gain(sound_title_screen,1,20000)
		audio_play_sound(sound_title_screen,1000,true)
		
	}
}
else if (_room == rm_level_1)
{
	current_music = sound_room_1
	if (!audio_is_playing(sound_room_1))
	{
		audio_pause_all()
		
		audio_play_sound(sound_room_1,1000,true)
		audio_sound_gain(sound_room_1,0.5,20000)
		
	}
}

if (global.gamePaused)
{
	if(!audio_is_playing(sound_pause))
	{
		audio_pause_all()
		
		audio_play_sound(sound_pause,1000,true)
		audio_sound_gain(sound_pause,0.5,360)
	}
	
} else
{
	//if (!audio_is_playing(current_music))
	//{
		if (audio_is_paused(current_music))
		{
			audio_stop_sound(sound_pause)
			audio_resume_sound(current_music)
		}
	//}
	
}