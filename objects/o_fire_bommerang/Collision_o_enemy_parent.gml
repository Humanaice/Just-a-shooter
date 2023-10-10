/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 00EB4388
/// @DnDArgument : "var" "bullet_team"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "fireteam.ENEMY"
if(!(bullet_team == fireteam.ENEMY))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4FE9F598
	/// @DnDApplyTo : other
	/// @DnDParent : 00EB4388
	/// @DnDArgument : "expr" "-other.bullet_dmg"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "enemy_hpnow"
	with(other) {
	enemy_hpnow += -other.bullet_dmg;
	
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3CE960D2
	/// @DnDApplyTo : other
	/// @DnDParent : 00EB4388
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "flash"
	with(other) {
	flash = 1;
	
	}

	/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
	/// @DnDVersion : 1.1
	/// @DnDHash : 6FEB4D90
	/// @DnDParent : 00EB4388
	/// @DnDArgument : "sound" "snd_enemy_hurt"
	/// @DnDArgument : "volume" "random_range(0.5,1.5)"
	/// @DnDSaveInfo : "sound" "snd_enemy_hurt"
	audio_sound_gain(snd_enemy_hurt, random_range(0.5,1.5), 0);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 7AACF104
	/// @DnDParent : 00EB4388
	/// @DnDArgument : "soundid" "snd_enemy_hurt"
	/// @DnDSaveInfo : "soundid" "snd_enemy_hurt"
	audio_play_sound(snd_enemy_hurt, 0, 0, 1.0, undefined, 1.0);
}