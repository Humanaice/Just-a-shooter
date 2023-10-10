/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7CA8D9BB
/// @DnDArgument : "var" "bullet_team"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "fireteam.ENEMY"
if(!(bullet_team == fireteam.ENEMY))
{
	/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
	/// @DnDVersion : 1.1
	/// @DnDHash : 0BCE3AAA
	/// @DnDParent : 7CA8D9BB
	/// @DnDArgument : "sound" "snd_enemy_hurt"
	/// @DnDArgument : "volume" "random_range(0.5,1.5)"
	audio_sound_gain(snd_enemy_hurt, random_range(0.5,1.5), 0);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 60A71E64
	/// @DnDParent : 7CA8D9BB
	/// @DnDArgument : "soundid" "snd_enemy_hurt"
	audio_play_sound(snd_enemy_hurt, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 01B60D83
	/// @DnDApplyTo : other
	/// @DnDParent : 7CA8D9BB
	/// @DnDArgument : "expr" "-other.bullet_dmg"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "enemy_hpnow"
	with(other) {
	enemy_hpnow += -other.bullet_dmg;
	
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3F306FC1
	/// @DnDApplyTo : other
	/// @DnDParent : 7CA8D9BB
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "flash"
	with(other) {
	flash = 1;
	
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 578C92F7
	/// @DnDParent : 7CA8D9BB
	instance_destroy();
}