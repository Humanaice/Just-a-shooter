/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6DB2DD7A
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_fire_enemy_bullet"
function scr_fire_enemy_bullet() 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 524F54C8
	/// @DnDParent : 6DB2DD7A
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)_inst = instance_create_layer(x,y,"Layer_bullet",fire_type);$(13_10)with (_inst)$(13_10){$(13_10)	bullet_team = fireteam.ENEMY;$(13_10)	creator = other.id$(13_10)	bullet_angle = other.direction$(13_10)}$(13_10)$(13_10)//needs facing_horinzontal$(13_10)$(13_10)"
	/// @description Execute Code
	
	_inst = instance_create_layer(x,y,"Layer_bullet",fire_type);
	with (_inst)
	{
		bullet_team = fireteam.ENEMY;
		creator = other.id
		bullet_angle = other.direction
	}
	
	//needs facing_horinzontal
}