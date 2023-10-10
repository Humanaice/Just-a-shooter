/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1B5A6107
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)cam = view_camera[0]$(13_10)$(13_10)//view_x = camera_get_view_x(cam)$(13_10)//view_y = camera_get_view_y(cam)$(13_10)if(shake)$(13_10){$(13_10)	$(13_10)	camera_set_view_pos(cam,view_x + random_range(range,-range),view_y + random_range(range,-range))$(13_10)}$(13_10)else$(13_10){$(13_10)	camera_set_view_pos(cam,view_x,view_y)$(13_10)}$(13_10)$(13_10)display_set_gui_size(room_width,room_height);$(13_10)window_set_size(global.res_width_final, global.res_height_final);$(13_10)camera_set_view_size(cam,room_width,room_height)"
/// @description Execute Code
cam = view_camera[0]

//view_x = camera_get_view_x(cam)
//view_y = camera_get_view_y(cam)
if(shake)
{
	
	camera_set_view_pos(cam,view_x + random_range(range,-range),view_y + random_range(range,-range))
}
else
{
	camera_set_view_pos(cam,view_x,view_y)
}

display_set_gui_size(room_width,room_height);
window_set_size(global.res_width_final, global.res_height_final);
camera_set_view_size(cam,room_width,room_height)

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5E13302F
/// @DnDDisabled : 1
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)screen_resolution()"


/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 49379228
/// @DnDDisabled : 1
/// @DnDArgument : "code" "/// @desc Update Camera$(13_10)$(13_10)if (instance_exists(follow))$(13_10){$(13_10)	x_to = follow.x$(13_10)	y_to = follow.y$(13_10)}$(13_10)$(13_10)x += (x_to -x)/15$(13_10)y += (y_to -x)/15$(13_10)$(13_10)$(13_10)x = clamp(x,view_width_half,room_width - view_width_half);$(13_10)y = clamp(y,view_height_half,room_height - view_height_half);$(13_10)$(13_10)x += random_range(-shake_remain,shake_remain)$(13_10)y += random_range(-shake_remain,shake_remain)$(13_10)$(13_10)shake_remain = max(0, shake_remain - ((1/shake_length) * shake_magnitude));$(13_10)$(13_10)//camera_set_view_pos(cam,x-view_width_half,y-view_height_half)$(13_10)camera_set_view_pos(cam,x,y)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"


/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7B919752
/// @DnDDisabled : 1
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (keyboard_check(vk_space)){$(13_10)	shake_value = 1	$(13_10)	shake_duration = 100$(13_10)}$(13_10)$(13_10)var randX = random_range(-shake_amount,-shake_amount)$(13_10)var randY = random_range(-shake_amount,-shake_amount)$(13_10)$(13_10)camera_set_view_pos (camera,startCam_x + randX,startCam_y + randY)	$(13_10)$(13_10)$(13_10)"