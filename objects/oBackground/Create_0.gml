/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3090B372
/// @DnDDisabled : 1
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)for(var i=1; i<= room_last; i++)$(13_10){$(13_10)	layerBackground =[];$(13_10)	BackgroundLayer = []$(13_10)    if(room_exists(i))$(13_10)    {   $(13_10)		layerBackground[i] = layer_create(100);$(13_10)		BackgroundLayer[i] = layer_background_create(layerBackground[i], spr_stars_pixel_colourful);$(13_10)		//layer_background_htiled(BackgroundLayer[i], true);$(13_10)		//layer_background_vtiled(BackgroundLayer[i], true);$(13_10)		//layer_background_alpha(BackgroundLayer[i],1);$(13_10)    }$(13_10)}$(13_10)$(13_10)$(13_10)function CreateBackground(_layer,_bg,xplace = 0,yplace = 0,scale = 1,xspd = 0,yspd =0,htiled=false,vtiled=false,stretch=false) $(13_10){$(13_10)	//var _layer = layer_get_id(lname);$(13_10)	//_layer = layer_create(dth);$(13_10)	layer_x(_layer, xplace);$(13_10)    layer_y(_layer, yplace);$(13_10)	layer_hspeed(_layer, xspd)$(13_10)	layer_vspeed(_layer, yspd)$(13_10)	//_bg = layer_background_create(_layer, spr);$(13_10)	//var _bg = layer_background_get_id(_layer);$(13_10)	//layer_background_sprite(_bg, spr)$(13_10)	layer_background_xscale(_bg, scale);$(13_10)	layer_background_yscale(_bg, scale);$(13_10)	layer_background_htiled(_bg, htiled);$(13_10)	layer_background_vtiled(_bg, vtiled);$(13_10)	layer_background_stretch(_bg, stretch);$(13_10)	$(13_10)}$(13_10)//layer_id = layer_create(300);$(13_10)//_bgr = layer_background_create(layer_id, spr_stars_pixel_colourful);$(13_10)CreateBackground(layerBackground[0],BackgroundLayer[0],0,0,1,1,2,true,true,false);$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"