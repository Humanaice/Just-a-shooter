/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4D305689
/// @DnDArgument : "var" "bullet_team"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "fireteam.ENEMY"
if(!(bullet_team == fireteam.ENEMY))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3B92CED9
	/// @DnDApplyTo : other
	/// @DnDParent : 4D305689
	with(other) instance_destroy();

	/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
	/// @DnDVersion : 1.1
	/// @DnDHash : 523197B5
	/// @DnDParent : 4D305689
	/// @DnDArgument : "sound" "snd_enemy_hurt"
	/// @DnDArgument : "volume" "random_range(0.5,1.5)"
	/// @DnDSaveInfo : "sound" "snd_enemy_hurt"
	audio_sound_gain(snd_enemy_hurt, random_range(0.5,1.5), 0);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 1C47DEC4
	/// @DnDParent : 4D305689
	/// @DnDArgument : "soundid" "snd_enemy_hurt"
	/// @DnDSaveInfo : "soundid" "snd_enemy_hurt"
	audio_play_sound(snd_enemy_hurt, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 75F1798E
	/// @DnDParent : 4D305689
	/// @DnDArgument : "xpos" "other.x"
	/// @DnDArgument : "ypos" "other.y"
	/// @DnDArgument : "objectid" "o_explosion"
	/// @DnDArgument : "layer" ""Layer_effects""
	/// @DnDSaveInfo : "objectid" "o_explosion"
	instance_create_layer(other.x, other.y, "Layer_effects", o_explosion);
}