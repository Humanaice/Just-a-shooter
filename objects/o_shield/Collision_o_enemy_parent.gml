/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0EFD970C
/// @DnDArgument : "var" "bullet_team"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "fireteam.ENEMY"
if(!(bullet_team == fireteam.ENEMY))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5B010640
	/// @DnDApplyTo : other
	/// @DnDParent : 0EFD970C
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "can_explode_bullets"
	with(other) {
	can_explode_bullets = false;
	
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 66F8749C
	/// @DnDApplyTo : other
	/// @DnDParent : 0EFD970C
	/// @DnDArgument : "expr" "-other.bullet_dmg"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "enemy_hpnow"
	with(other) {
	enemy_hpnow += -other.bullet_dmg;
	
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 558C18BF
	/// @DnDApplyTo : other
	/// @DnDParent : 0EFD970C
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "flash"
	with(other) {
	flash = 1;
	
	}

	/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
	/// @DnDVersion : 1.1
	/// @DnDHash : 703862B1
	/// @DnDParent : 0EFD970C
	/// @DnDArgument : "sound" "snd_enemy_hurt"
	/// @DnDArgument : "volume" "random_range(0.5,1.5)"
	audio_sound_gain(snd_enemy_hurt, random_range(0.5,1.5), 0);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 500E1233
	/// @DnDParent : 0EFD970C
	/// @DnDArgument : "soundid" "snd_enemy_hurt"
	audio_play_sound(snd_enemy_hurt, 0, 0, 1.0, undefined, 1.0);
}