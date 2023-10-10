/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 51192E3D
/// @DnDArgument : "var" "can_damage_player"
/// @DnDArgument : "value" "true"
if(can_damage_player == true)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 666823FA
	/// @DnDParent : 51192E3D
	/// @DnDArgument : "var" "bullet_team"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "fireteam.ENEMY"
	if(!(bullet_team == fireteam.ENEMY))
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4A881AFF
		/// @DnDApplyTo : other
		/// @DnDParent : 666823FA
		with(other) instance_destroy();
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1.1
		/// @DnDHash : 42BB4EE2
		/// @DnDParent : 666823FA
		/// @DnDArgument : "sound" "sf_laser_explosion"
		/// @DnDArgument : "volume" "2"
		audio_sound_gain(sf_laser_explosion, 2, 0);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 3E70D1C1
		/// @DnDParent : 666823FA
		/// @DnDArgument : "soundid" "sf_laser_explosion"
		audio_play_sound(sf_laser_explosion, 0, 0, 1.0, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 01485075
		/// @DnDParent : 666823FA
		/// @DnDArgument : "xpos" "other.x"
		/// @DnDArgument : "ypos" "other.y"
		/// @DnDArgument : "objectid" "o_explosion"
		/// @DnDArgument : "layer" ""Layer_effects""
		instance_create_layer(other.x, other.y, "Layer_effects", o_explosion);
	}
}