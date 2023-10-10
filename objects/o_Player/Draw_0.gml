
draw_self();

//https://www.youtube.com/watch?v=9H_azpWOG4o&t=536s
//https://www.youtube.com/watch?v=g7uhXXUgeAM&t=1s
//Set up the blinking efect when hit
if (blink)
{
	gpu_set_blendmode(bm_add);
	shader_set(shd_flash)
	shd_alpha = shader_get_uniform(shd_flash,"_alpha");
	shader_set_uniform_f(shd_alpha, flash);
	
	draw_self();

	shader_reset()
	gpu_set_blendmode(bm_normal);
	
	if (alarm[0] == -1)
	{
		alarm[0] = blink_duration
	}
	flash += -0.05
	
}else
{
	draw_self()
}


//draw_set_font(fnt_title_screan_xsm);
//draw_set_color(c_green)

//draw_set_halign(fa_left)
//draw_text(0, 10, string("HP: ") + string(hpcurrent));
//draw_text(0, 40, string("can_damage_player: ") + string(can_damage_player));
//draw_text(0, 70, string("player_damaged: ") + string(player_damaged));
//draw_text(0, 100, string("State ") + string(state));
//draw_text(0, 140, string("shield_amount ") + string(shield_amount));
//draw_text(0, 170, string("stopfirekey ") + string(stopfirekey));
//draw_text(0, 210, string("firekey ") + string(firekey));
//draw_text(0, 240, string("hpcooldown ") + string(hpcooldown));
//draw_text(20, 30, string("Caption: ") + string(state));


/*
if (player_damaged) 
{
	image_alpha = 0.5;
}

if (!player_damaged) 
{
	image_alpha = 1;
}
*/

