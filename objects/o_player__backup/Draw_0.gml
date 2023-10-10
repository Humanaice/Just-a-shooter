
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


draw_set_font(fnt_title_screan_xsm);

draw_set_halign(fa_left)
draw_text(0, 10, string("HP: ") + string(hpcurrent));
draw_text(0, 40, string("Bullet__Upgrade ") + string(current_upgrade_bullet));
draw_text(0, 70, string("Bullet type ") + string(current_player_bullet_type));
//draw_text(0, 100, string("hp_now ") + string(hp_now));
draw_text(0, 140, string("shield_amount ") + string(shield_amount));
draw_text(0, 170, string("stopfirekey ") + string(stopfirekey));
draw_text(0, 210, string("firekey ") + string(firekey));
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

