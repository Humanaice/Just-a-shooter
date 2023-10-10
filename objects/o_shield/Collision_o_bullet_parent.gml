/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 59C85C4E
/// @DnDArgument : "code" "$(13_10)$(13_10)$(13_10)if !(other.bullet_team == fireteam.ALLY)$(13_10){$(13_10)	audio_sound_pitch(lose3,random_range(1,2))$(13_10)	audio_sound_gain(lose3, 0.2, 0);$(13_10)	audio_play_sound(lose3,1,false)$(13_10)	other.direction *= -1;$(13_10)	other.speed *= 1.2$(13_10)	other.bullet_team = fireteam.ALLY;$(13_10)	$(13_10)}"



if !(other.bullet_team == fireteam.ALLY)
{
	audio_sound_pitch(lose3,random_range(1,2))
	audio_sound_gain(lose3, 0.2, 0);
	audio_play_sound(lose3,1,false)
	other.direction *= -1;
	other.speed *= 1.2
	other.bullet_team = fireteam.ALLY;
	
}