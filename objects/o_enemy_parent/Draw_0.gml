/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3547F55D
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)draw_self();$(13_10)$(13_10)if (flash > 0)$(13_10){$(13_10)	gpu_set_blendmode(bm_add);$(13_10)	flash -= 0.05;$(13_10)	shader_set(shd_flash)$(13_10)	shd_alpha = shader_get_uniform(shd_flash,"_alpha");$(13_10)	shader_set_uniform_f(shd_alpha, flash);$(13_10)$(13_10)	draw_self();$(13_10)$(13_10)	shader_reset()$(13_10)	gpu_set_blendmode(bm_normal);$(13_10)}$(13_10)"
/// @description Execute Code
draw_self();

if (flash > 0)
{
	gpu_set_blendmode(bm_add);
	flash -= 0.05;
	shader_set(shd_flash)
	shd_alpha = shader_get_uniform(shd_flash,"_alpha");
	shader_set_uniform_f(shd_alpha, flash);

	draw_self();

	shader_reset()
	gpu_set_blendmode(bm_normal);
}