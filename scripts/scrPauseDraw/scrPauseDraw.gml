/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 3A14EA83
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scrPauseDraw"
function scrPauseDraw() 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 51E78953
	/// @DnDParent : 3A14EA83
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)var size = ds_list_size(ids_list);$(13_10)    for (var i = 0; i < size; ++i)$(13_10)    {$(13_10)        var inst = ids_list[| i];$(13_10)        if !(inst.sprite_index = -1)&& (inst.sprite_index != spr_wall)$(13_10)        {$(13_10)            draw_sprite_ext(inst.sprite_index, inst.image_index, inst.x, inst.y, inst.image_xscale, inst.image_yscale, inst.image_angle, c_white, inst.image_alpha);$(13_10)        $(13_10)        }$(13_10)    }"
	/// @description Execute Code
	var size = ds_list_size(ids_list);
	    for (var i = 0; i < size; ++i)
	    {
	        var inst = ids_list[| i];
	        if !(inst.sprite_index = -1)&& (inst.sprite_index != spr_wall)
	        {
	            draw_sprite_ext(inst.sprite_index, inst.image_index, inst.x, inst.y, inst.image_xscale, inst.image_yscale, inst.image_angle, c_white, inst.image_alpha);
	        
	        }
	    }
}