/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7C132820
/// @DnDDisabled : 1
/// @DnDArgument : "code" "/// @Variaveis para setar a camera$(13_10)//https://www.youtube.com/watch?v=BdTNFvu3DcI$(13_10)cam = view_camera[0];$(13_10)$(13_10)view_x = camera_get_view_x(cam);$(13_10)view_y = camera_get_view_y(cam);$(13_10)$(13_10)_width = 640;$(13_10)_height = 360;$(13_10)_scale = 3;$(13_10)$(13_10)iCamera = self;$(13_10)res_width = _width;$(13_10)res_height = _height;$(13_10)res_scale = _scale;$(13_10)res_width_final = res_width * res_scale;$(13_10)res_height_final = res_height * res_scale;$(13_10)$(13_10)shake = false;$(13_10)range = 5;$(13_10)shake_length = 0;$(13_10)$(13_10)aspect_ratio = display_get_width()/display_get_height();$(13_10)$(13_10)display_set_gui_size(room_width,room_height);$(13_10)window_set_size(res_width_final, res_height_final);$(13_10)camera_set_view_size(cam,room_width,room_height);$(13_10)window_set_fullscreen(!window_get_fullscreen());"


/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6C5EB005
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)//https://forum.gamemaker.io/index.php?threads/what-is-the-right-way-to-use-the-following-window_set_size-surface_resize-window_center.74276/$(13_10)zoom=1;$(13_10)maxZoom=1;$(13_10)idealWidth=0;$(13_10)idealHeight=(display_get_height());//<--- 1080/4=270, 270*2=540    //270 //540$(13_10)//idealHeight=270;$(13_10)$(13_10)$(13_10)//Aspect ratio$(13_10)aspectRatio = display_get_width()/display_get_height();$(13_10)$(13_10)//Calculate new ideal width.$(13_10)idealWidth=round(idealHeight*aspectRatio);$(13_10)//idealHeight=round(idealWidth/aspect_ratio);$(13_10)$(13_10)idealWidth=round(idealWidth);$(13_10)idealHeight=round(idealHeight-20);$(13_10)$(13_10)$(13_10)if(idealWidth & 1) idealWidth-=1;$(13_10)if(idealHeight & 1) idealHeight-=1;$(13_10)$(13_10)max_zoom = floor(display_get_width()/idealWidth);$(13_10)$(13_10)//Setup all the view ports in all rooms$(13_10)MainCamera = camera_create_view(0,0,idealWidth,idealHeight,0,noone,0,0,0,0);$(13_10)camera_set_view_size(MainCamera,idealWidth,idealHeight);$(13_10)$(13_10)$(13_10)for(var i=1; i<= room_last; i++)$(13_10){$(13_10)    if(room_exists(i))$(13_10)    {   $(13_10)        room_set_view_enabled(i,true);$(13_10)        room_set_viewport(i,0,true,0,0,idealWidth,idealHeight);$(13_10)        room_set_camera(i,0,MainCamera);$(13_10)		$(13_10)    }$(13_10)}$(13_10)$(13_10)surface_resize(application_surface,idealWidth,idealHeight);$(13_10)window_set_size(idealWidth*zoom,idealHeight*zoom);$(13_10)display_set_gui_size(idealWidth,idealHeight);$(13_10)$(13_10)window_center();$(13_10)$(13_10)$(13_10)shake = false;$(13_10)range = 5;$(13_10)shake_length = 0;$(13_10)view_x = 0;$(13_10)view_y = 0;$(13_10)vCam = view_camera[0];$(13_10)$(13_10)function ResizeWindow(zm)$(13_10){$(13_10)	if (zm > maxZoom)$(13_10)	{$(13_10)		zoom = maxZoom;$(13_10)	} else$(13_10)	{$(13_10)		zoom = zm;$(13_10)	}$(13_10)	event_user(0);$(13_10)}$(13_10)$(13_10)function SetFullscreen()$(13_10){$(13_10)	window_set_fullscreen(!window_get_fullscreen());$(13_10)}$(13_10)$(13_10)function ShakeScreen(vp,time)$(13_10){$(13_10)	vCam = vp;$(13_10)	view_x = camera_get_view_x(vCam);$(13_10)	view_y = camera_get_view_y(vCam);$(13_10)	shake = true;$(13_10)	alarm[0] = time;$(13_10)}$(13_10)$(13_10)function ReturnCameraResolution()$(13_10){$(13_10)	return[idealWidth,idealHeight];$(13_10)}"
/// @description Execute Code
//https://forum.gamemaker.io/index.php?threads/what-is-the-right-way-to-use-the-following-window_set_size-surface_resize-window_center.74276/
zoom=1;
maxZoom=1;
idealWidth=0;
idealHeight=(display_get_height());//<--- 1080/4=270, 270*2=540    //270 //540
//idealHeight=270;


//Aspect ratio
aspectRatio = display_get_width()/display_get_height();

//Calculate new ideal width.
idealWidth=round(idealHeight*aspectRatio);
//idealHeight=round(idealWidth/aspect_ratio);

idealWidth=round(idealWidth);
idealHeight=round(idealHeight-20);


if(idealWidth & 1) idealWidth-=1;
if(idealHeight & 1) idealHeight-=1;

max_zoom = floor(display_get_width()/idealWidth);

//Setup all the view ports in all rooms
MainCamera = camera_create_view(0,0,idealWidth,idealHeight,0,noone,0,0,0,0);
camera_set_view_size(MainCamera,idealWidth,idealHeight);


for(var i=1; i<= room_last; i++)
{
    if(room_exists(i))
    {   
        room_set_view_enabled(i,true);
        room_set_viewport(i,0,true,0,0,idealWidth,idealHeight);
        room_set_camera(i,0,MainCamera);
		
    }
}

surface_resize(application_surface,idealWidth,idealHeight);
window_set_size(idealWidth*zoom,idealHeight*zoom);
display_set_gui_size(idealWidth,idealHeight);

window_center();


shake = false;
range = 5;
shake_length = 0;
view_x = 0;
view_y = 0;
vCam = view_camera[0];

function ResizeWindow(zm)
{
	if (zm > maxZoom)
	{
		zoom = maxZoom;
	} else
	{
		zoom = zm;
	}
	event_user(0);
}

function SetFullscreen()
{
	window_set_fullscreen(!window_get_fullscreen());
}

function ShakeScreen(vp,time)
{
	vCam = vp;
	view_x = camera_get_view_x(vCam);
	view_y = camera_get_view_y(vCam);
	shake = true;
	alarm[0] = time;
}

function ReturnCameraResolution()
{
	return[idealWidth,idealHeight];
}