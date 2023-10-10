/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 665F4203
/// @DnDDisabled : 1
/// @DnDArgument : "code" "/// @desc Set up Camera$(13_10)//https://www.youtube.com/watch?v=0dcfqH4aSBw&list=PLPRT_JORnIuosvhfax2TQTEmN7OYTcSvK&index=7$(13_10)$(13_10)cam = view_camera[0];$(13_10)//camera_set_view_size(cam,720,360)$(13_10)$(13_10)follow = o_Player$(13_10)view_width_half = camera_get_view_width(cam) * 0.5;$(13_10)view_height_half = camera_get_view_height(cam) * 0.5;$(13_10)x_to = xstart$(13_10)y_to = ystart$(13_10)$(13_10)//view_wport[0] = 1920$(13_10)//view_hport[0] = 1080$(13_10)$(13_10)$(13_10)//Shale$(13_10)shake_length = 0;$(13_10)shake_magnitude = 0;$(13_10)shake_remain = 0;$(13_10)//can_screen_shake = false$(13_10)"


/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 128705E5
/// @DnDDisabled : 1
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)/// @description $(13_10)//https://www.youtube.com/watch?v=VYgf3V6Fx3M$(13_10)//Resolution$(13_10)#macro RES_W 640$(13_10)#macro RES_H 360$(13_10)//global.RES_SCALE = 3$(13_10)#macro RES_SCALE 2 $(13_10)$(13_10)#macro CAM_SMOOTH 0.1$(13_10)$(13_10)// Enable views$(13_10)view_enabled = true;$(13_10)view_visible[0] = true;$(13_10)$(13_10)// Create camera$(13_10)camera = camera_create_view(0, 0, RES_W, RES_H);$(13_10)$(13_10)view_set_camera(0, camera);$(13_10)$(13_10)// Resize window & application surface$(13_10)window_set_size(RES_W * RES_SCALE, RES_H * RES_SCALE);$(13_10)surface_resize(application_surface, RES_W * RES_SCALE, RES_H * RES_SCALE);$(13_10)$(13_10)display_set_gui_size(RES_W, RES_H);$(13_10)$(13_10)// Center window$(13_10) display_width = display_get_width();$(13_10) display_height = display_get_height();$(13_10)$(13_10) window_width = RES_W * RES_SCALE;$(13_10) window_height = RES_H * RES_SCALE;$(13_10)$(13_10)window_set_position(display_width/2 - window_width/2, display_height/2 - window_height/2);$(13_10)$(13_10)//Screen Shake$(13_10)shake_power = 5$(13_10)shake_value = 0$(13_10)shake_duration =0$(13_10)alarm[0] = shake_duration$(13_10)shake_amount = 6$(13_10)startCam_x = camera_get_view_x(camera)$(13_10)startCam_y = camera_get_view_y(camera)$(13_10)$(13_10)//Mouse $(13_10)mouse_x_previous =device_mouse_x_to_gui(0)$(13_10)mouse_y_previous =device_mouse_y_to_gui(0)$(13_10)"


/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 45EB717F
/// @DnDDisabled : 1
/// @DnDArgument : "code" "/// @desc Setup Resolution$(13_10)//Resolution$(13_10)#macro RES_W 1920$(13_10)#macro RES_H 1080$(13_10)#macro RES_SCALE 1$(13_10)$(13_10)//#macro CAM_SMOOTH 0.1$(13_10)$(13_10)global.iCamera = self$(13_10)$(13_10)// Enable views$(13_10)view_enabled = true;$(13_10)view_visible[0] = true;$(13_10)$(13_10)// Create camera$(13_10)camera = camera_create_view(0, 0, RES_W* RES_SCALE, RES_H* RES_SCALE);$(13_10)$(13_10)view_set_camera(0, camera);$(13_10)$(13_10)// Resize window & application surface$(13_10)window_set_size(RES_W * RES_SCALE, RES_H * RES_SCALE);$(13_10)surface_resize(application_surface, RES_W * RES_SCALE, RES_H * RES_SCALE);$(13_10)$(13_10)display_set_gui_size(RES_W, RES_H);$(13_10)$(13_10)// Center window$(13_10)var display_width = display_get_width();$(13_10)var display_height = display_get_height();$(13_10)$(13_10)var window_width = RES_W * RES_SCALE;$(13_10)var window_height = RES_H * RES_SCALE;$(13_10)$(13_10)window_set_position(display_width/2 - window_width/2, display_height/2 - window_height/2);$(13_10)$(13_10)// Mouse previous$(13_10)//mouse_x_previous = device_mouse_x_to_gui(0);$(13_10)//mouse_y_previous = device_mouse_y_to_gui(0);$(13_10)$(13_10)//Shake$(13_10)view_width_half = camera_get_view_width(camera) * 0.5;$(13_10)view_height_half = camera_get_view_height(camera) * 0.5;$(13_10)shake_length = 0;$(13_10)shake_magnitude = 0;$(13_10)shake_remain = 0;$(13_10)$(13_10)//Reframe$(13_10)_camX = camera_get_view_x(camera);$(13_10)_camY = camera_get_view_y(camera);$(13_10)_camW = camera_get_view_width(camera);$(13_10)_camH = camera_get_view_height(camera);$(13_10)$(13_10)//_camX = view_get_xport(0) ;$(13_10)//_camY = view_get_yport(0) ;$(13_10)//_camW = view_get_wport(0);$(13_10)//_camH = view_get_hport(0);$(13_10)$(13_10)//camera_set_view_pos(camera, _camX, _camY);$(13_10)//camera_set_view_size(camera, _camW , _camH);$(13_10)$(13_10)"


/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 28138011
/// @DnDDisabled : 1
/// @DnDArgument : "code" "_width = 640$(13_10)_height = 360$(13_10)_scale = 2.5$(13_10)$(13_10)global.res_width = _width$(13_10)global.res_height = _height$(13_10)global.res_scale = _scale$(13_10)$(13_10)//#macro RES_W 640$(13_10)//#macro RES_H 360$(13_10)////global.RES_SCALE = 3$(13_10)//#macro RES_SCALE global.res_scale$(13_10)$(13_10)global.iCamera = self$(13_10)//view_enabled = true;$(13_10)//view_visible[0] = true;$(13_10)//cam_W = global.res_width * global.res_scale$(13_10)//cam_H = global.res_height * global.res_scale$(13_10)//camera = camera_create_view(0, 0,cam_W,cam_H);$(13_10)//view_set_camera(0, camera);$(13_10)$(13_10)screen_resolution()$(13_10)$(13_10)//var display_width = global.res_width * global.res_scale;$(13_10)//var display_height = global.res_height * global.res_scale;$(13_10)	$(13_10)//var display_width = display_get_width();$(13_10)//var display_height =  display_get_height();$(13_10)$(13_10)//display_set_gui_size(display_width, display_height);$(13_10)//window_set_size(display_width, display_height);$(13_10)$(13_10)//var base_width = 1920$(13_10)//var base_height = 1080$(13_10)$(13_10)//var aspect = base_width/base_height$(13_10)$(13_10)$(13_10)//if (display_width >=  display_height)$(13_10)//{$(13_10)//		var heightvar = min(base_height,display_height)$(13_10)//		var widthvar = heightvar * aspect$(13_10)//}$(13_10)$(13_10)//surface_resize(application_surface, widthvar, heightvar);$(13_10)$(13_10)//view_enabled = true;$(13_10)//view_visible[0] = true;$(13_10)//cam_W = global.res_width * global.res_scale$(13_10)//cam_H = global.res_height * global.res_scale$(13_10)//camera = camera_create_view(0, 0,cam_W,cam_H);$(13_10)//view_set_camera(0, camera);$(13_10)$(13_10)$(13_10)//view_width_half = camera_get_view_width(camera) * 0.5;$(13_10)//view_height_half = camera_get_view_height(camera) * 0.5;$(13_10)//shake_length = 0;$(13_10)//shake_magnitude = 0;$(13_10)//shake_remain = 0;$(13_10)$(13_10)////Reframe$(13_10)//_camX = camera_get_view_x(camera);$(13_10)//_camY = camera_get_view_y(camera);$(13_10)//_camW = camera_get_view_width(camera);$(13_10)//_camH = camera_get_view_height(camera);$(13_10)$(13_10)"


/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0B5DFE9C
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)//https://www.youtube.com/watch?v=BdTNFvu3DcI$(13_10)cam = view_camera[0]$(13_10)$(13_10)view_x = camera_get_view_x(cam)$(13_10)view_y = camera_get_view_y(cam)$(13_10)$(13_10)_width = 640$(13_10)_height = 360$(13_10)_scale = 3$(13_10)$(13_10)global.iCamera = self$(13_10)global.res_width = _width$(13_10)global.res_height = _height$(13_10)global.res_scale = _scale$(13_10)global.res_width_final = global.res_width * global.res_scale$(13_10)global.res_height_final = global.res_height * global.res_scale$(13_10)$(13_10)shake = false$(13_10)range = 5$(13_10)shake_length = 0$(13_10)$(13_10)display_set_gui_size(room_width,room_height);$(13_10)window_set_size(global.res_width_final, global.res_height_final);$(13_10)camera_set_view_size(cam,room_width,room_height)"
/// @description Execute Code
//https://www.youtube.com/watch?v=BdTNFvu3DcI
cam = view_camera[0]

view_x = camera_get_view_x(cam)
view_y = camera_get_view_y(cam)

_width = 640
_height = 360
_scale = 3

global.iCamera = self
global.res_width = _width
global.res_height = _height
global.res_scale = _scale
global.res_width_final = global.res_width * global.res_scale
global.res_height_final = global.res_height * global.res_scale

shake = false
range = 5
shake_length = 0

display_set_gui_size(room_width,room_height);
window_set_size(global.res_width_final, global.res_height_final);
camera_set_view_size(cam,room_width,room_height)