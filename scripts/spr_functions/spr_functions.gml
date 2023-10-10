/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 689E75A1
/// @DnDArgument : "code" "function cycle() //(value, min, max)$(13_10){$(13_10)	var value = argument[0]$(13_10)	var _min = argument[1]$(13_10)	var _max = argument[2]$(13_10)	var result, delta;$(13_10)	delta = (_max - _min);$(13_10)	result = (value - _min) mod delta;$(13_10)	if (result < 0) result += delta;$(13_10)	return result + _min;$(13_10)}$(13_10)$(13_10)function angle_rotate()//(angle, target, speed)$(13_10){$(13_10)	var _angle = argument[0]$(13_10)	var target = argument[1]$(13_10)	var _speed = argument[2]$(13_10)	var diff;$(13_10)	// 180 is to be replaced by "pi" for radians$(13_10)	diff = cycle((target - _angle), -180, 180);$(13_10)	// clamp rotations by speed:$(13_10)	if (diff < -_speed) return _angle - _speed;$(13_10)	if (diff > _speed) return _angle + _speed;$(13_10)	// if difference within speed, rotation's done:$(13_10)	return target;$(13_10)}$(13_10)$(13_10)function go_down ()$(13_10){$(13_10)	direction = -90$(13_10)	speed = 10$(13_10)	$(13_10)}"
function cycle() //(value, min, max)
{
	var value = argument[0]
	var _min = argument[1]
	var _max = argument[2]
	var result, delta;
	delta = (_max - _min);
	result = (value - _min) mod delta;
	if (result < 0) result += delta;
	return result + _min;
}

function angle_rotate()//(angle, target, speed)
{
	var _angle = argument[0]
	var target = argument[1]
	var _speed = argument[2]
	var diff;
	// 180 is to be replaced by "pi" for radians
	diff = cycle((target - _angle), -180, 180);
	// clamp rotations by speed:
	if (diff < -_speed) return _angle - _speed;
	if (diff > _speed) return _angle + _speed;
	// if difference within speed, rotation's done:
	return target;
}

function go_down ()
{
	direction = -90
	speed = 10
	
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 78B698ED
/// @DnDDisabled : 1
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)function enemy_dna_movement()$(13_10){$(13_10)	var limit_short_x = 5$(13_10)	var limit_long_x = 10$(13_10)	enemy_hspd = enemy_hspd + facing_horizontal;$(13_10)	if (enemy_hspd >= limit_short_x) or (enemy_hspd <= -limit_short_x)$(13_10)	{$(13_10)		enemy_hspd = enemy_hspd + (facing_horizontal/2)$(13_10)		if (enemy_hspd >= limit_long_x) or (enemy_hspd <= -limit_long_x)  $(13_10)		{$(13_10)			facing_horizontal *= -1;$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)function enemy_dna_movement_horizontal()$(13_10){$(13_10)	var limit_short_y = 5$(13_10)	var limit_long_y = 10$(13_10)	enemy_vspd = enemy_vspd + facing_horizontal;$(13_10)	enemy_hspd = 5$(13_10)	if (enemy_vspd >= limit_short_y) or (enemy_vspd <= -limit_short_y)$(13_10)	{$(13_10)		enemy_vspd = enemy_vspd + (facing_horizontal/2)$(13_10)		if (enemy_vspd >= limit_long_y) or (enemy_vspd <= -limit_long_y)  $(13_10)		{$(13_10)			facing_horizontal *= -1;$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)function teest()$(13_10){$(13_10)	enemy_vspd -= 1$(13_10)}$(13_10)$(13_10)$(13_10)"


/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 78B86A75
/// @DnDArgument : "code" "/// @desc ScreenShake(Magnitude,Length)$(13_10)/// @arg Magnitude sets the strength of the shake (distance range)$(13_10)/// @arg Length sets the length of the shake in frames$(13_10)$(13_10)$(13_10)function screen_shake()$(13_10){$(13_10)	with (global.iCamera)$(13_10)	{$(13_10)		range = argument0$(13_10)		shake = true$(13_10)		alarm[0] = argument1$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)function screen_resolution()$(13_10){$(13_10)	//view_enabled = true;$(13_10)	//view_visible[0] = true;	$(13_10)	//cam_W = global.res_width * global.res_scale$(13_10)	//cam_H = global.res_height * global.res_scale$(13_10)	//camera = camera_create_view(0, 0,cam_W,cam_H);$(13_10)	//view_set_camera(0, camera);$(13_10)$(13_10)	var display_width = global.res_width * global.res_scale;$(13_10)	var display_height = global.res_height * global.res_scale;$(13_10)	$(13_10)	//var display_width = display_get_width();$(13_10)	//var display_height =  display_get_height();$(13_10)		$(13_10)	display_set_gui_size(display_width, display_height);$(13_10)	window_set_size(display_width, display_height);$(13_10)$(13_10)	var base_width = 1920$(13_10)	var base_height = 1080$(13_10)$(13_10)	var aspect =  base_width/base_height$(13_10)	$(13_10)	if (display_width >=  display_height)$(13_10)	{$(13_10)		 var heightvar = min(base_height,display_height)$(13_10)		 var widthvar = heightvar * aspect$(13_10)	}$(13_10)$(13_10)	$(13_10)	surface_resize(application_surface, widthvar, heightvar);$(13_10)	$(13_10)	$(13_10)}$(13_10)$(13_10)function stop_at_pause()$(13_10){$(13_10)	speed = 0$(13_10)	path_speed = 0$(13_10)	image_speed = 0$(13_10)}$(13_10)"
/// @desc ScreenShake(Magnitude,Length)
/// @arg Magnitude sets the strength of the shake (distance range)
/// @arg Length sets the length of the shake in frames


function screen_shake()
{
	with (global.iCamera)
	{
		range = argument0
		shake = true
		alarm[0] = argument1
	}
}


function screen_resolution()
{
	//view_enabled = true;
	//view_visible[0] = true;	
	//cam_W = global.res_width * global.res_scale
	//cam_H = global.res_height * global.res_scale
	//camera = camera_create_view(0, 0,cam_W,cam_H);
	//view_set_camera(0, camera);

	var display_width = global.res_width * global.res_scale;
	var display_height = global.res_height * global.res_scale;
	
	//var display_width = display_get_width();
	//var display_height =  display_get_height();
		
	display_set_gui_size(display_width, display_height);
	window_set_size(display_width, display_height);

	var base_width = 1920
	var base_height = 1080

	var aspect =  base_width/base_height
	
	if (display_width >=  display_height)
	{
		 var heightvar = min(base_height,display_height)
		 var widthvar = heightvar * aspect
	}

	
	surface_resize(application_surface, widthvar, heightvar);
	
	
}

function stop_at_pause()
{
	speed = 0
	path_speed = 0
	image_speed = 0
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 61F593B0
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)//https://www.youtube.com/watch?v=TCwIerWM2iU$(13_10)global.midTransition = false;$(13_10)global.roomTarget = -1;$(13_10)$(13_10)$(13_10)function TransitionPlaceSequence(_type)$(13_10){$(13_10)	if (layer_exists("transition")) layer_destroy("transition");$(13_10)	var _lay = layer_create(-9999,"transition");$(13_10)	layer_sequence_create(_lay,0,0,_type)$(13_10)}$(13_10)$(13_10)function TransitionStart (_roomTarget,_typeOut,_typeIn)$(13_10){$(13_10)	if (!global.midTransition)$(13_10)	{$(13_10)		global.midTransition = true;$(13_10)		global.roomTarget = _roomTarget;$(13_10)		TransitionPlaceSequence(_typeOut)$(13_10)		layer_set_target_room(_roomTarget)$(13_10)		TransitionPlaceSequence(_typeIn)$(13_10)		layer_reset_target_room();$(13_10)		return true;$(13_10)		$(13_10)	}$(13_10)	else return false$(13_10)}$(13_10)$(13_10)function TransitionChangeRoom()$(13_10){$(13_10)	room_goto(global.roomTarget)$(13_10)}$(13_10)$(13_10)function TransitionFinished()$(13_10){$(13_10)	layer_sequence_destroy(self.elementID);$(13_10)	global.midTransition = false;$(13_10)}$(13_10)$(13_10)$(13_10)"
/// @description Execute Code
//https://www.youtube.com/watch?v=TCwIerWM2iU
global.midTransition = false;
global.roomTarget = -1;


function TransitionPlaceSequence(_type)
{
	if (layer_exists("transition")) layer_destroy("transition");
	var _lay = layer_create(-9999,"transition");
	layer_sequence_create(_lay,0,0,_type)
}

function TransitionStart (_roomTarget,_typeOut,_typeIn)
{
	if (!global.midTransition)
	{
		global.midTransition = true;
		global.roomTarget = _roomTarget;
		TransitionPlaceSequence(_typeOut)
		layer_set_target_room(_roomTarget)
		TransitionPlaceSequence(_typeIn)
		layer_reset_target_room();
		return true;
		
	}
	else return false
}

function TransitionChangeRoom()
{
	room_goto(global.roomTarget)
}

function TransitionFinished()
{
	layer_sequence_destroy(self.elementID);
	global.midTransition = false;
}