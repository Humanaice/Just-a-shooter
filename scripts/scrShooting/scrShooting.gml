/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6777B2C7
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDInput : 10
/// @DnDArgument : "funcName" "scrShooting"
/// @DnDArgument : "arg" "obj"
/// @DnDArgument : "arg_1" "dad"
/// @DnDArgument : "arg_2" "team"
/// @DnDArgument : "arg_3" "xpos=x"
/// @DnDArgument : "arg_4" "ypos=y"
/// @DnDArgument : "arg_5" "dir=direction"
/// @DnDArgument : "arg_6" "spd=3"
/// @DnDArgument : "arg_7" "dmg=1"
/// @DnDArgument : "arg_8" "type=0"
/// @DnDArgument : "arg_9" "size=1"
function scrShooting(obj, dad, team, xpos=x, ypos=y, dir=direction, spd=3, dmg=1, type=0, size=1) 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 4260FE42
	/// @DnDParent : 6777B2C7
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)var _inst = instance_create_layer(xpos,ypos,"LayerBullet",obj);$(13_10)with(_inst) $(13_10){$(13_10)	bulletTeam = team;$(13_10)	creator = dad;$(13_10)	bulletAngleCreator = dir;$(13_10)	bulletSpdCreator = spd;$(13_10)	bulletDmgCreator = dmg;$(13_10)	image_index = type;$(13_10)	scale = size;$(13_10)}"
	/// @description Execute Code
	var _inst = instance_create_layer(xpos,ypos,"LayerBullet",obj);
	with(_inst) 
	{
		bulletTeam = team;
		creator = dad;
		bulletAngleCreator = dir;
		bulletSpdCreator = spd;
		bulletDmgCreator = dmg;
		image_index = type;
		scale = size;
	}
}