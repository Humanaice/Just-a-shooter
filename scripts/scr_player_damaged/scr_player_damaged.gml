/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 444A1E11
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_player_damaged"
function scr_player_damaged() 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 71E4A701
	/// @DnDParent : 444A1E11
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)/*$(13_10)if(blinking)$(13_10){$(13_10)	if (blinking_cool > 0)$(13_10)	{$(13_10)		if (flash > 0) or (flash < 1)$(13_10)		{$(13_10)			gpu_set_blendmode(bm_add);$(13_10)			flash += flash_add;$(13_10)			shader_set(shd_flash)$(13_10)			shd_alpha = shader_get_uniform(shd_flash,"_alpha");$(13_10)			shader_set_uniform_f(shd_alpha, flash);$(13_10)$(13_10)			draw_self();$(13_10)$(13_10)			shader_reset()$(13_10)			gpu_set_blendmode(bm_normal);$(13_10)		}else if (flash >= 1) $(13_10)		{$(13_10)			flash = 0.95$(13_10)			flash_add = -0.05$(13_10)		}else if (flash <= 0) $(13_10)		{$(13_10)			flash = 0.05$(13_10)			flash_add = 0.05$(13_10)		}$(13_10)	}else if (blinking_cool <=0)$(13_10)	{$(13_10)		player_damaged = false$(13_10)		blinking = false$(13_10)		$(13_10)	}$(13_10)	blinking_cool--;$(13_10)	$(13_10)}$(13_10)*/$(13_10)/*$(13_10)if (hpcooldown > 0) $(13_10){$(13_10)	hpcooldown --;$(13_10)}$(13_10)$(13_10)if (hpcooldown <= 0) $(13_10){$(13_10)	player_damaged = false;$(13_10)	can_damage_player = true$(13_10)}$(13_10)$(13_10)if (player_damaged)$(13_10){$(13_10)	can_damage_player = false$(13_10)}$(13_10)*/$(13_10)$(13_10)if (player_damaged)$(13_10){$(13_10)	screen_shake(5,30)$(13_10)	if (hp_can_activete_timer)$(13_10)	{$(13_10)		hpcooldown = hptimer$(13_10)		var _exploxion = instance_create_layer(x,y,"Layer_effects",o_explosion)$(13_10)		_exploxion.scale = 1$(13_10)		audio_sound_gain(snd_player_explosion,1,0)$(13_10)		audio_play_sound(snd_player_explosion,1,false)$(13_10)		//screen_shake(5,90)$(13_10)		hp_can_activete_timer = false$(13_10)	}$(13_10)}$(13_10)$(13_10)if (hpcooldown > 0) $(13_10){$(13_10)	hpcooldown --;$(13_10)}$(13_10)$(13_10)if (hpcooldown <= 0) $(13_10){$(13_10)	player_damaged = false;$(13_10)	//screen_shake(0,0,false)$(13_10)	//screen_at_place()$(13_10)	hp_can_activete_timer = true$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
	/// @description Execute Code
	/*
	if(blinking)
	{
		if (blinking_cool > 0)
		{
			if (flash > 0) or (flash < 1)
			{
				gpu_set_blendmode(bm_add);
				flash += flash_add;
				shader_set(shd_flash)
				shd_alpha = shader_get_uniform(shd_flash,"_alpha");
				shader_set_uniform_f(shd_alpha, flash);
	
				draw_self();
	
				shader_reset()
				gpu_set_blendmode(bm_normal);
			}else if (flash >= 1) 
			{
				flash = 0.95
				flash_add = -0.05
			}else if (flash <= 0) 
			{
				flash = 0.05
				flash_add = 0.05
			}
		}else if (blinking_cool <=0)
		{
			player_damaged = false
			blinking = false
			
		}
		blinking_cool--;
		
	}
	*/
	/*
	if (hpcooldown > 0) 
	{
		hpcooldown --;
	}
	
	if (hpcooldown <= 0) 
	{
		player_damaged = false;
		can_damage_player = true
	}
	
	if (player_damaged)
	{
		can_damage_player = false
	}
	*/
	
	if (player_damaged)
	{
		screen_shake(5,30)
		if (hp_can_activete_timer)
		{
			hpcooldown = hptimer
			var _exploxion = instance_create_layer(x,y,"Layer_effects",o_explosion)
			_exploxion.scale = 1
			audio_sound_gain(snd_player_explosion,1,0)
			audio_play_sound(snd_player_explosion,1,false)
			//screen_shake(5,90)
			hp_can_activete_timer = false
		}
	}
	
	if (hpcooldown > 0) 
	{
		hpcooldown --;
	}
	
	if (hpcooldown <= 0) 
	{
		player_damaged = false;
		//screen_shake(0,0,false)
		//screen_at_place()
		hp_can_activete_timer = true
	}
	
	
	
	
	
	/**/
}