/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 44F04FA4
/// @DnDDisabled : 1
/// @DnDArgument : "xpos" "672"
/// @DnDArgument : "ypos" "830"
/// @DnDArgument : "objectid" "o_upgrade_change_bullet"
/// @DnDArgument : "layer" ""Layer_upgrade""


/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 357E503F
/// @DnDDisabled : 1
/// @DnDArgument : "xpos" "800"
/// @DnDArgument : "ypos" "830"
/// @DnDArgument : "objectid" "o_upgrade"
/// @DnDArgument : "layer" ""Layer_upgrade""


/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6E1B1CCC
/// @DnDArgument : "code" "var _inst0 = instance_create_layer(512,1024,"Layer_bullet",o_upgrade_general);$(13_10)var _inst1 = instance_create_layer(576,1024,"Layer_bullet",o_upgrade_general);$(13_10)var _inst2 = instance_create_layer(640,1024,"Layer_bullet",o_upgrade_general);$(13_10)var _inst3 = instance_create_layer(704,1024,"Layer_bullet",o_upgrade_general);$(13_10)var _inst4 = instance_create_layer(768,1024,"Layer_bullet",o_upgrade_general);$(13_10)var _inst5 = instance_create_layer(838,1024,"Layer_bullet",o_upgrade_general);$(13_10)var _inst6 = instance_create_layer(896,1024,"Layer_bullet",o_upgrade_general);$(13_10)var _inst7 = instance_create_layer(960,1024,"Layer_bullet",o_upgrade_general);$(13_10)var _inst8 = instance_create_layer(1024,1024,"Layer_bullet",o_upgrade_general);$(13_10)var _inst9 = instance_create_layer(1088,1024,"Layer_bullet",o_upgrade_general);$(13_10)$(13_10)_inst0.upgrade_type = firetype.STRAIGHT$(13_10)_inst1.upgrade_type = firetype.BIG_STRAIGHT$(13_10)_inst2.upgrade_type = firetype.SEQUENCE$(13_10)_inst3.upgrade_type = firetype.BALL$(13_10)_inst4.upgrade_type = firetype.TRIPLE_BALL$(13_10)_inst5.upgrade_type = firetype.BALL_GRANADE$(13_10)_inst6.upgrade_type = firetype.GRANADE$(13_10)_inst7.upgrade_type = firetype.BOMERANG$(13_10)_inst8.upgrade_type = firetype.DNA$(13_10)_inst9.upgrade_type = firetype.HOMING$(13_10)$(13_10)//instance_create_layer(0,0,layer,o_shake_camera)$(13_10)"
var _inst0 = instance_create_layer(512,1024,"Layer_bullet",o_upgrade_general);
var _inst1 = instance_create_layer(576,1024,"Layer_bullet",o_upgrade_general);
var _inst2 = instance_create_layer(640,1024,"Layer_bullet",o_upgrade_general);
var _inst3 = instance_create_layer(704,1024,"Layer_bullet",o_upgrade_general);
var _inst4 = instance_create_layer(768,1024,"Layer_bullet",o_upgrade_general);
var _inst5 = instance_create_layer(838,1024,"Layer_bullet",o_upgrade_general);
var _inst6 = instance_create_layer(896,1024,"Layer_bullet",o_upgrade_general);
var _inst7 = instance_create_layer(960,1024,"Layer_bullet",o_upgrade_general);
var _inst8 = instance_create_layer(1024,1024,"Layer_bullet",o_upgrade_general);
var _inst9 = instance_create_layer(1088,1024,"Layer_bullet",o_upgrade_general);

_inst0.upgrade_type = firetype.STRAIGHT
_inst1.upgrade_type = firetype.BIG_STRAIGHT
_inst2.upgrade_type = firetype.SEQUENCE
_inst3.upgrade_type = firetype.BALL
_inst4.upgrade_type = firetype.TRIPLE_BALL
_inst5.upgrade_type = firetype.BALL_GRANADE
_inst6.upgrade_type = firetype.GRANADE
_inst7.upgrade_type = firetype.BOMERANG
_inst8.upgrade_type = firetype.DNA
_inst9.upgrade_type = firetype.HOMING

//instance_create_layer(0,0,layer,o_shake_camera)